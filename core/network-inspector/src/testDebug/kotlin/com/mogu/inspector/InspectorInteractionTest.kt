package com.mogu.inspector

import android.content.ClipboardManager
import android.content.Context
import android.view.KeyEvent
import android.view.View
import android.widget.Magnifier
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
import androidx.compose.foundation.text.contextmenu.provider.LocalTextContextMenuToolbarProvider
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.window.DialogWindowProvider
import kotlinx.coroutines.CompletableDeferred
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.annotation.Implementation
import org.robolectric.annotation.Implements

/** Uses real pointer selection and clipboard operations; only the platform menu is recorded. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "zh-rCN-w393dp-h852dp-port-xhdpi", shadows = [InspectorInteractionTest.NoSurfaceMagnifier::class])
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class InspectorInteractionTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()

    private val responseJson = """{"first":"alpha","second":"beta","last":true}"""
    private val prettyResponse = "{\n  \"first\": \"alpha\",\n  \"second\": \"beta\",\n  \"last\": true\n}"
    private val clipboard get() = compose.activity.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager

    @Test fun longPressCopiesValueAndEndHandleExtendsTheSelectionAcrossJsonLines() {
        val menu = RecordedTextMenu()
        showCode(prettyResponse, json = true, menu = menu)
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        val layout = layoutOf(text)
        longPress(text, layout, prettyResponse.indexOf("alpha") + 2)
        copySelection(menu)
        compose.runOnIdle { assertEquals("alpha", copiedText()) }

        longPress(text, layout, prettyResponse.indexOf("alpha") + 2)
        val from = layout.getCursorRect(prettyResponse.indexOf("alpha") + "alpha".length)
        val betaCharacter = layout.getBoundingBox(prettyResponse.indexOf("beta") + 1)
        val target = Offset(betaCharacter.center.x, layout.getLineBottom(layout.getLineForOffset(prettyResponse.indexOf("beta"))))
        compose.onNode(selectionHandle("SelectionEnd"), useUnmergedTree = true).performTouchInput {
            down(center)
            moveTo(center + Offset(target.x - from.left, target.y - from.bottom), delayMillis = 300)
            up()
        }
        copySelection(menu)
        compose.runOnIdle {
            assertEquals("alpha\",\n  \"second\": \"beta", copiedText())
        }
    }

    @Test fun selectionMenuSelectAllIncludesOffscreenLinesAndBlankLinesWithoutGutterNumbers() {
        val body = (0 until 250).joinToString("\n") { if (it % 13 == 0) "" else "synthetic line $it" } + "\n"
        val menu = RecordedTextMenu()
        showCode(body, menu = menu)
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        longPress(text, layoutOf(text), body.indexOf("synthetic") + 3)
        clickMenu(menu, TextContextMenuKeys.SelectAllKey)
        copySelection(menu)
        compose.runOnIdle { assertEquals(body, copiedText()) }
    }

    @Test fun searchCanScrollToDistantMatchAndTheMatchedTextCanStillBeSelected() {
        val body = (0 until 160).joinToString("\n") { if (it == 130) "needleMatch selected" else "synthetic row $it" }
        val menu = RecordedTextMenu()
        showCode(body, finding = true, menu = menu)
        compose.onNodeWithTag("inspector_body_search").performTextInput("needleMatch")
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_matches, 1, 1)).assertIsDisplayed()
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        val layout = layoutOf(text)
        // Pointer coordinates are relative to the visible semantics bounds after scrolling.
        val node = text.fetchSemanticsNode()
        val position = layout.getBoundingBox(body.indexOf("needleMatch") + 3).center
        val unclippedTop = node.positionInRoot.y
        val clippedTop = node.boundsInRoot.top
        text.performTouchInput { longClick(position + Offset(0f, unclippedTop - clippedTop)) }
        copySelection(menu)
        compose.runOnIdle { assertEquals("needleMatch", copiedText()) }
    }

    @Test fun requestAndResponseBodiesKeepPartialAndWholeCopyOperationsIndependent() {
        val menu = RecordedTextMenu()
        val request = "{\"requestField\":\"requestValue\"}"
        compose.setContent {
            InspectorTheme {
                CompositionLocalProvider(LocalTextContextMenuToolbarProvider provides menu) {
                    RequestDetail(sampleLog(1, request), onBack = {}, onClose = {})
                }
            }
        }
        awaitBody(prettyResponse)
        compose.onNodeWithTag("inspector_copy_body").performClick()
        compose.runOnIdle { assertEquals(prettyResponse, copiedText()) }
        var text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        longPress(text, layoutOf(text), prettyResponse.indexOf("alpha") + 2)
        copySelection(menu)
        compose.runOnIdle { assertEquals("alpha", copiedText()) }
        compose.onNodeWithTag("inspector_tab_1").performClick()
        val prettyRequest = "{\n  \"requestField\": \"requestValue\"\n}"
        awaitBody(prettyRequest)
        text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        longPress(text, layoutOf(text), prettyRequest.indexOf("requestValue") + 3)
        copySelection(menu)
        compose.runOnIdle { assertEquals("requestValue", copiedText()) }
        compose.onNodeWithTag("inspector_raw").performClick()
        compose.onNodeWithTag("inspector_copy_body").performClick()
        compose.runOnIdle { assertEquals(request, copiedText()) }
    }

    @Test fun queryNamesValuesHeadersAndUrlCanBeCopiedFromTheirVisibleText() {
        val menu = RecordedTextMenu()
        val log = sampleLog(1)
        compose.setContent {
            InspectorTheme {
                CompositionLocalProvider(LocalTextContextMenuToolbarProvider provides menu) {
                    RequestDetail(log, onBack = {}, onClose = {})
                }
            }
        }
        awaitBody(prettyResponse)
        compose.onNodeWithTag("inspector_tab_1").performClick()
        listOf("category", "popular").forEach { field ->
            val text = compose.onNodeWithText(field, useUnmergedTree = true)
            longPress(text, layoutOf(text), 2)
            copySelection(menu)
            compose.runOnIdle { assertEquals(field, copiedText()) }
        }
        compose.onNodeWithTag("inspector_headers").performClick()
        listOf("Accept", "headerValue").forEach { field ->
            val text = compose.onNodeWithText(field, useUnmergedTree = true)
            longPress(text, layoutOf(text), 2)
            copySelection(menu)
            compose.runOnIdle { assertEquals(field, copiedText()) }
        }
        compose.onNodeWithTag("inspector_tab_0").performClick()
        val text = compose.onNodeWithText(log.url, useUnmergedTree = true)
        longPress(text, layoutOf(text), log.url.indexOf("synthetic") + 3)
        copySelection(menu)
        compose.runOnIdle {
            val selected = copiedText()
            assertTrue(selected.length >= "synthetic".length)
            assertTrue("URL selection must contain only characters from the actual URL", log.url.contains(selected))
        }
    }

    @Test fun copyingOrTappingAwayEndsSelectionSoTheNextToolbarBackNavigatesImmediately() {
        val menu = RecordedTextMenu()
        val backState = InspectorBackState()
        var navigations = 0
        compose.setContent {
            InspectorTheme {
                CompositionLocalProvider(LocalTextContextMenuToolbarProvider provides menu, LocalInspectorBackState provides backState) {
                    RequestDetail(sampleLog(1), onBack = { navigations++ }, onClose = {})
                }
            }
        }
        awaitBody(prettyResponse)
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        longPress(text, layoutOf(text), prettyResponse.indexOf("alpha") + 2)
        copySelection(menu)
        compose.onAllNodes(selectionHandle(), useUnmergedTree = true).assertCountEquals(0)
        compose.onNodeWithTag("inspector_detail_back").performClick()
        compose.runOnIdle { assertEquals(1, navigations) }
        longPress(text, layoutOf(text), prettyResponse.indexOf("alpha") + 2)
        text.performTouchInput { click(layoutOf(text).getBoundingBox(prettyResponse.indexOf("last") + 1).center) }
        compose.onAllNodes(selectionHandle(), useUnmergedTree = true).assertCountEquals(0)
        compose.onNodeWithTag("inspector_detail_back").performClick()
        compose.runOnIdle { assertEquals(2, navigations) }
    }

    @Test fun modalWindowBackReturnsOnePageAndRestoresListSearchFilterAndScroll() {
        val store = NetworkLogStore().also { logs ->
            repeat(30) { index -> logs.begin { id -> sampleLog(id).copy(code = if (index % 2 == 0) 503 else 200) } }
        }
        open(store)
        compose.onNodeWithTag("inspector_search").performTextInput("synthetic")
        compose.onNodeWithTag("inspector_filter_Errors").performClick()
        compose.onNodeWithTag("inspector_requests").performScrollToIndex(8)
        val record = compose.onNodeWithTag("inspector_request_13")
        record.assertIsDisplayed()
        val position = record.fetchSemanticsNode().boundsInRoot.top
        record.performClick()
        awaitBody(prettyResponse)
        // Sibling tabs must never create extra back-stack entries.
        compose.onNodeWithTag("inspector_tab_0").performClick()
        compose.onNodeWithTag("inspector_tab_1").performClick()
        compose.onNodeWithTag("inspector_tab_2").performClick()
        dispatchDialogBack("inspector_panel")
        compose.onNodeWithTag("inspector_detail").assertDoesNotExist()
        compose.onNodeWithTag("inspector_search").assertTextContains("synthetic")
        compose.onNodeWithTag("inspector_filter_Errors").assertIsSelected()
        record.assertIsDisplayed()
        assertEquals(position, record.fetchSemanticsNode().boundsInRoot.top, 2f)
        dispatchDialogBack("inspector_panel")
        compose.onNodeWithTag("inspector_panel").assertDoesNotExist()
        compose.onNodeWithTag("inspector_bubble").assertIsDisplayed()
        compose.onNodeWithTag("original_screen").assertIsDisplayed()
        compose.runOnIdle { assertFalse(compose.activity.isFinishing) }
    }

    @Test fun toolbarAndSystemBackShareTheSameHierarchyAndSelectionConsumesOnlyOneBack() {
        open(NetworkLogStore().also { it.begin { id -> sampleLog(id) } })
        compose.onNodeWithTag("inspector_request_1").performClick()
        awaitBody(prettyResponse)
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        longPress(text, layoutOf(text), prettyResponse.indexOf("alpha") + 2)
        compose.onAllNodes(selectionHandle(), useUnmergedTree = true).assertCountEquals(2)
        dispatchDialogBack("inspector_panel")
        compose.onNodeWithTag("inspector_detail").assertIsDisplayed()
        compose.onAllNodes(selectionHandle(), useUnmergedTree = true).assertCountEquals(0)
        compose.onNodeWithTag("inspector_detail_back").performClick()
        compose.onNodeWithTag("inspector_request_1").assertIsDisplayed().performClick()
        awaitBody(prettyResponse)
        dispatchDialogBack("inspector_panel")
        compose.onNodeWithTag("inspector_request_1").assertIsDisplayed()
        dispatchDialogBack("inspector_panel")
        compose.onNodeWithTag("inspector_bubble").assertIsDisplayed()
        compose.onNodeWithTag("original_screen").assertIsDisplayed()
    }

    @Test fun dismissingClearConfirmationWithBackKeepsTheListAndRecordedRequests() {
        val store = NetworkLogStore().also { it.begin { id -> sampleLog(id) } }
        open(store)
        compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_clear)).performClick()
        compose.onNodeWithTag("inspector_confirm_clear").assertIsDisplayed()
        dispatchDialogBack("inspector_confirm_clear")
        compose.onNodeWithTag("inspector_confirm_clear").assertDoesNotExist()
        compose.onNodeWithTag("inspector_request_1").assertIsDisplayed()
        compose.runOnIdle { assertEquals(1, store.state.value.logs.size) }
    }

    @Test fun listSwipesScrollContentWhilePanelBoundsStayFixedIncludingBothEdges() {
        open(NetworkLogStore().also { store -> repeat(60) { store.begin { id -> sampleLog(id) } } })
        val panel = compose.onNodeWithTag("inspector_panel").fetchSemanticsNode().boundsInRoot
        val list = compose.onNodeWithTag("inspector_requests")
        list.performTouchInput { swipeUp() }
        compose.onNodeWithTag("inspector_request_60").assertIsNotDisplayed()
        assertPanelBounds(panel)
        list.performScrollToIndex(59)
        list.performTouchInput { swipeUp() }
        compose.onNodeWithTag("inspector_request_1").assertIsDisplayed()
        assertPanelBounds(panel)
        list.performScrollToIndex(0)
        list.performTouchInput { swipeDown() }
        compose.onNodeWithTag("inspector_request_60").assertIsDisplayed()
        assertPanelBounds(panel)
    }

    @Test fun bodySwipesScrollLongTextWhilePanelBoundsStayFixedIncludingBothEdges() {
        val body = (0 until 240).joinToString("\n") { "synthetic body line $it" }
        open(NetworkLogStore().also { store -> store.begin { id -> sampleLog(id).copy(responseBody = CapturedBody(body)) } })
        compose.onNodeWithTag("inspector_request_1").performClick()
        awaitBody(body)
        val panel = compose.onNodeWithTag("inspector_panel").fetchSemanticsNode().boundsInRoot
        val viewport = compose.onNodeWithTag("inspector_code")
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        val startY = text.fetchSemanticsNode().positionInRoot.y
        viewport.performTouchInput { swipeUp() }
        assertTrue("The body must scroll upwards", text.fetchSemanticsNode().positionInRoot.y < startY)
        assertPanelBounds(panel)
        viewport.performSemanticsAction(SemanticsActions.ScrollBy) { it(0f, Float.MAX_VALUE) }
        viewport.performTouchInput { swipeUp() }
        assertPanelBounds(panel)
        viewport.performSemanticsAction(SemanticsActions.ScrollBy) { it(0f, -Float.MAX_VALUE) }
        viewport.performTouchInput { swipeDown() }
        assertEquals(startY, text.fetchSemanticsNode().positionInRoot.y, 2f)
        assertPanelBounds(panel)
    }

    private fun assertPanelBounds(expected: androidx.compose.ui.geometry.Rect) {
        compose.waitForIdle()
        val actual = compose.onNodeWithTag("inspector_panel").fetchSemanticsNode().boundsInRoot
        assertEquals(expected.top, actual.top, 1f)
        assertEquals(expected.bottom, actual.bottom, 1f)
        compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
    }

    private fun sampleLog(id: Long, request: String = "") = NetworkLog(
        id, if (request.isEmpty()) "GET" else "POST", "https://synthetic.example.test/record/$id?category=popular", "/record/$id",
        "synthetic.example.test", 1_728_369_200_000 + id * 1_000,
        listOf("Accept" to "application/json", "X-Synthetic" to "headerValue"), CapturedBody(request),
        code = 200, protocol = "h2", durationMs = 120,
        responseHeaders = listOf("Content-Type" to "application/json", "X-Synthetic" to "responseHeader"),
        responseBody = CapturedBody(responseJson),
    )

    private fun open(store: NetworkLogStore) {
        compose.setContent {
            Box(Modifier.fillMaxSize().testTag("original_screen")) { InspectorOverlay(store) }
        }
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
    }

    private fun showCode(body: String, json: Boolean = false, finding: Boolean = false, menu: RecordedTextMenu) {
        compose.setContent {
            InspectorTheme {
                CompositionLocalProvider(LocalTextContextMenuToolbarProvider provides menu) {
                    CodeViewer(BodyPresentation(body, json = json), wrap = true, finding = finding, modifier = Modifier.fillMaxSize())
                }
            }
        }
    }

    private fun awaitBody(expected: String) {
        compose.waitUntil(10_000) {
            compose.onAllNodesWithTag("inspector_code_text", useUnmergedTree = true).fetchSemanticsNodes().any {
                it.config[androidx.compose.ui.semantics.SemanticsProperties.Text].single().text == expected
            }
        }
    }

    private fun layoutOf(node: SemanticsNodeInteraction): TextLayoutResult {
        val results = mutableListOf<TextLayoutResult>()
        node.performSemanticsAction(SemanticsActions.GetTextLayoutResult) { assertTrue(it(results)) }
        return results.single()
    }

    private fun longPress(node: SemanticsNodeInteraction, layout: TextLayoutResult, offset: Int) {
        node.performTouchInput { longClick(layout.getBoundingBox(offset).center) }
    }

    private fun selectionHandle(which: String? = null) = SemanticsMatcher("selection handle ${which.orEmpty()}") { node ->
        node.config.any { (key, value) -> key.name == "SelectionHandleInfo" && (which == null || value.toString().contains(which)) }
    }

    private fun copySelection(menu: RecordedTextMenu) = clickMenu(menu, TextContextMenuKeys.CopyKey)

    private fun clickMenu(menu: RecordedTextMenu, key: Any) {
        compose.waitUntil(5_000) { menu.active != null }
        compose.runOnIdle {
            val item = menu.active!!.data().components.filterIsInstance<TextContextMenuItem>().single { it.key == key }
            item.onClick(menu.session!!)
        }
        compose.waitForIdle()
    }

    private fun copiedText() = clipboard.primaryClip!!.getItemAt(0).text.toString()

    private fun dispatchDialogBack(tag: String) {
        val node = compose.onNodeWithTag(tag).fetchSemanticsNode()
        compose.runOnUiThread {
            val view = (node.root as ViewRootForTest).view
            val window = generateSequence(view as View?) { it.parent as? View }
                .filterIsInstance<DialogWindowProvider>().first().window
            val callback = window.callback
            callback.dispatchKeyEvent(KeyEvent(KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK))
            callback.dispatchKeyEvent(KeyEvent(KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BACK))
        }
        compose.waitForIdle()
    }

    /** Keeps the current platform menu data observable without changing selection/clipboard code. */
    private class RecordedTextMenu : TextContextMenuProvider {
        @Volatile var active: TextContextMenuDataProvider? = null
        @Volatile var session: TextContextMenuSession? = null
        override suspend fun showTextContextMenu(dataProvider: TextContextMenuDataProvider) {
            val closed = CompletableDeferred<Unit>()
            active = dataProvider
            session = object : TextContextMenuSession { override fun close() { closed.complete(Unit) } }
            try { closed.await() } finally { active = null; session = null }
        }
    }

    // Robolectric 4.13 cannot allocate the Magnifier Surface. Selection and menu code remain real.
    @Implements(value = Magnifier::class, minSdk = 28)
    class NoSurfaceMagnifier {
        @Implementation fun show(sourceCenterX: Float, sourceCenterY: Float) = Unit
        @Implementation fun show(sourceCenterX: Float, sourceCenterY: Float, magnifierCenterX: Float, magnifierCenterY: Float) = Unit
        @Implementation fun update() = Unit
        @Implementation fun dismiss() = Unit
    }
}
