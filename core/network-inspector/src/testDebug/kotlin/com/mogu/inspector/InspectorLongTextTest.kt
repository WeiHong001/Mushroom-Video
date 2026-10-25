package com.mogu.inspector

import android.content.ClipboardManager
import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
import androidx.compose.foundation.text.contextmenu.provider.LocalTextContextMenuToolbarProvider
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.text.TextLayoutResult
import kotlinx.coroutines.CompletableDeferred
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** A captured body can fit the byte limit while producing a very tall text layout. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "zh-rCN-w393dp-h852dp-port-xhdpi", shadows = [InspectorInteractionTest.NoSurfaceMagnifier::class])
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class InspectorLongTextTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()

    @Test fun nearCaptureLimitWithManyNewlinesCanLayoutAndCopyEveryOffscreenLine() {
        val body = "x\n".repeat(32_760) + "tail-value"
        assertTrue(body.toByteArray().size <= BODY_LIMIT)
        val menu = RecordedTextMenu()
        compose.setContent {
            InspectorTheme {
                CompositionLocalProvider(LocalTextContextMenuToolbarProvider provides menu) {
                    CodeViewer(BodyPresentation(body), wrap = true, finding = false, modifier = Modifier.fillMaxSize())
                }
            }
        }
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        val layout = layoutOf(text)
        assertEquals(body, text.fetchSemanticsNode().config[SemanticsProperties.Text].single().text)
        assertEquals(32_761, layout.lineCount)
        // The paragraph exceeds packed fixed-size constraints; its separate gutter stays
        // viewport-sized instead of measuring a match-parent Canvas inside the paragraph.
        assertTrue(layout.size.height > 262_143)
        val viewport = compose.onNodeWithTag("inspector_code").fetchSemanticsNode().boundsInRoot
        val gutter = compose.onNodeWithTag("inspector_code_numbers").fetchSemanticsNode().boundsInRoot
        assertEquals(viewport.height, gutter.height, 1f)
        text.performTouchInput { longClick(layout.getBoundingBox(0).center) }
        clickMenu(menu, TextContextMenuKeys.SelectAllKey)
        clickMenu(menu, TextContextMenuKeys.CopyKey)
        compose.runOnIdle {
            val clipboard = compose.activity.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
            assertEquals(body, clipboard.primaryClip!!.getItemAt(0).text.toString())
        }
    }

    @Test fun scrollingLongBodyReusesLayoutAndGutterVisitsOnlyVisibleLines() {
        val body = "x\n".repeat(32_760) + "tail-value"
        compose.setContent {
            InspectorTheme { CodeViewer(BodyPresentation(body), wrap = true, finding = false, modifier = Modifier.fillMaxSize()) }
        }
        val text = compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true)
        val viewport = compose.onNodeWithTag("inspector_code")
        val layout = layoutOf(text)
        val numbers = CodeLineNumbers(layout, (0..32_760).map { it * 2 })
        val lineHeight = layout.getLineBottom(0) - layout.getLineTop(0)
        fun visibleLines(): IntRange {
            val bounds = compose.onNodeWithTag("inspector_code_numbers").fetchSemanticsNode().boundsInRoot
            val top = bounds.top - text.fetchSemanticsNode().positionInRoot.y
            val visible = numbers.visibleLines(top - lineHeight, top + bounds.height + lineHeight)
            assertTrue("Work must depend on viewport height, not 32,761 body lines", visible.count() <= kotlin.math.ceil(bounds.height / lineHeight).toInt() + 4)
            assertTrue(visible.count() > 0)
            return visible
        }
        assertEquals(0, visibleLines().first)
        viewport.performSemanticsAction(SemanticsActions.ScrollBy) { it(0f, layout.size.height / 2f) }
        // GetTextLayoutResult returns a fresh semantics wrapper; compare its actual shaping
        // and layout object to ensure scrolling never recomputes the paragraph.
        assertTrue("Scrolling must reuse the paragraph layout", layout.multiParagraph === layoutOf(text).multiParagraph)
        assertTrue(visibleLines().first > 16_000)
        repeat(3) {
            viewport.performTouchInput { swipeUp() }
            assertTrue(layout.multiParagraph === layoutOf(text).multiParagraph)
            visibleLines()
        }
        viewport.performSemanticsAction(SemanticsActions.ScrollBy) { it(0f, Float.MAX_VALUE) }
        assertTrue(layout.multiParagraph === layoutOf(text).multiParagraph)
        assertEquals(32_760, visibleLines().last)
        viewport.performSemanticsAction(SemanticsActions.ScrollBy) { it(0f, -Float.MAX_VALUE) }
        assertEquals(0, visibleLines().first)
    }

    @Test fun wrappedLinesUseTheirFirstVisualBaselineAndBlankRowsKeepTheirNumbers() {
        val body = "W".repeat(500) + "\n\nend"
        compose.setContent {
            InspectorTheme { CodeViewer(BodyPresentation(body), wrap = true, finding = false, modifier = Modifier.fillMaxSize()) }
        }
        val layout = layoutOf(compose.onNodeWithTag("inspector_code_text", useUnmergedTree = true))
        val numbers = CodeLineNumbers(layout, listOf(0, 501, 502))
        assertTrue(layout.getLineForOffset(501) > 4)
        assertEquals(layout.getLineBaseline(0), numbers.baseline(0), 0.01f)
        assertTrue("A wrapped continuation must not repeat a logical line number", numbers.visibleLines(layout.getLineTop(2), layout.getLineBottom(3)).isEmpty())
        val blankBaseline = layout.getLineBaseline(layout.getLineForOffset(501))
        assertEquals(listOf(1), numbers.visibleLines(blankBaseline, blankBaseline).toList())
        assertTrue(numbers.visibleLines(-100f, -1f).isEmpty())
        assertTrue(numbers.visibleLines(layout.size.height.toFloat() + 1f, Float.MAX_VALUE).isEmpty())
    }

    private fun layoutOf(text: SemanticsNodeInteraction): TextLayoutResult {
        val results = mutableListOf<TextLayoutResult>()
        text.performSemanticsAction(SemanticsActions.GetTextLayoutResult) { assertTrue(it(results)) }
        return results.single()
    }

    private fun clickMenu(menu: RecordedTextMenu, key: Any) {
        compose.waitUntil(5_000) { menu.active != null }
        compose.runOnIdle {
            menu.active!!.data().components.filterIsInstance<TextContextMenuItem>()
                .single { it.key == key }.onClick(menu.session!!)
        }
        compose.waitForIdle()
    }

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
}
