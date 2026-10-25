package com.mogu.inspector

import androidx.activity.ComponentActivity
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import com.mogu.inspector.crypto.Base91Codec
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.JsonPrimitive
import kotlinx.serialization.json.jsonObject
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "zh-rCN-w393dp-h852dp-port-xhdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class InspectorUiTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()

    private val actorJson = """{"name":"合成演员 あかり 😀","person_id":90071992547409931234567890,"spec":{"nested":{"height":160}}}"""
    private val movieJson = """[{"id":9007199254740993,"title":"示例影片","score":8.7,"available":true,"genres":["Drama","Mystery"]}]"""
    private fun token(value: String) = JsonPrimitive(Base91Codec.encode(value.toByteArray())).toString()
    private val wireBody get() = """{"data":${token(movieJson)},"actress_profile":${token(actorJson)},"status":200}"""

    private fun sampleStore(): NetworkLogStore = NetworkLogStore().also { store ->
        val paths = listOf("/swx/movie/search", "/swx/cate/list", "/swx/movie/search", "/swx/movie/search")
        paths.forEachIndexed { index, path ->
            store.begin { id ->
                NetworkLog(id, "GET", "https://api.example.test$path?category=popular", path, "api.example.test", 1_728_369_200_000 + index * 1_000,
                    listOf("Accept" to "application/json", "Authorization" to "••••••"), CapturedBody(size = 0),
                    code = if (index == 1) 503 else 200, protocol = "h2", durationMs = if (index == 1) 1230 else 186,
                    responseHeaders = listOf("Content-Type" to "text/plain", "X-Request-Id" to "example-004"),
                    responseBody = CapturedBody(wireBody, size = wireBody.toByteArray().size.toLong()),
                )
            }
        }
    }

    private fun open(store: NetworkLogStore) {
        compose.setContent { InspectorOverlay(store) }
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
    }

    @Test fun panelBackgroundDismissesListAndBodySearchFocusInItsOwnWindow() {
        open(sampleStore())
        val listInput = compose.onNodeWithTag("inspector_search")
        listInput.performTextInput("movie")
        listInput.assertIsFocused()
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_title)).performTouchInput { click() }
        listInput.assertIsNotFocused().assertTextContains("movie")
        compose.onNodeWithTag("inspector_request_4").performClick()
        awaitFormatting()
        compose.onNodeWithTag("inspector_find").performClick()
        val bodyInput = compose.onNodeWithTag("inspector_body_search")
        bodyInput.performTextInput("合成演员")
        bodyInput.assertIsFocused()
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_matches, 1, 1)).performTouchInput { click() }
        bodyInput.assertIsNotFocused().assertTextContains("合成演员")
    }

    @Test fun hidingEntryForSearchKeyboardPreservesAnAlreadyOpenPanel() {
        val visible = mutableStateOf(false)
        val store = sampleStore()
        compose.setContent { InspectorOverlay(store, showEntry = visible.value) }
        compose.onNodeWithTag("inspector_bubble").assertDoesNotExist()
        compose.runOnIdle { visible.value = true }
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.runOnIdle { visible.value = false }
        compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
        compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_close)).performClick()
        compose.onNodeWithTag("inspector_bubble").assertDoesNotExist()
        compose.runOnIdle { visible.value = true }
        compose.onNodeWithTag("inspector_bubble").assertIsDisplayed()
    }

    @Test fun floatingEntryFiltersPausesAndClearsWithoutClosingTheApp() {
        val store = sampleStore()
        open(store)
        compose.onNodeWithTag("inspector_filter_Errors").performClick()
        compose.onNodeWithTag("inspector_request_2").assertIsDisplayed()
        compose.onNodeWithTag("inspector_request_4").assertDoesNotExist()
        compose.onNodeWithTag("inspector_recording").performClick()
        compose.runOnIdle { assertFalse(store.state.value.recording) }
        compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_clear)).performClick()
        compose.onNodeWithTag("inspector_confirm_clear").performClick()
        compose.runOnIdle { assertTrue(store.state.value.logs.isEmpty()) }
        compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_close)).performClick()
        compose.onNodeWithTag("inspector_bubble").assertIsDisplayed()
    }

    @Test fun responseCanBeDecodedSearchedCopiedAndReturnedToTheList() {
        open(sampleStore())
        compose.onNodeWithTag("inspector_search").performTextInput("movie")
        compose.onNodeWithTag("inspector_request_4").performClick()
        awaitFormatting()
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_decoded)).assertIsDisplayed()
        compose.onNodeWithTag("inspector_find").performClick()
        compose.onNodeWithTag("inspector_body_search").performTextInput("合成演员")
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_matches, 1, 1)).assertIsDisplayed()
        compose.onNodeWithTag("inspector_copy_body").performClick()
        val clipboard = compose.activity.getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
        compose.runOnIdle {
            val copied = clipboard.primaryClip!!.getItemAt(0).text.toString()
            assertTrue(copied.contains("9007199254740993"))
            assertEquals(Json.parseToJsonElement(actorJson), Json.parseToJsonElement(copied).jsonObject["actress_profile"])
        }
        compose.onNodeWithTag("inspector_raw").performClick()
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_decoded)).assertDoesNotExist()
        compose.onNodeWithTag("inspector_copy_body").performClick()
        compose.runOnIdle { assertEquals(wireBody, clipboard.primaryClip!!.getItemAt(0).text.toString()) }
        compose.onNodeWithTag("inspector_tab_1").performClick()
        compose.onNodeWithText("category").assertIsDisplayed()
        compose.onNodeWithText("popular").assertIsDisplayed()
        compose.onNodeWithTag("inspector_detail_back").performClick()
        compose.onNodeWithTag("inspector_search").assertIsDisplayed().assertTextContains("movie")
    }

    @Test fun disabledEndpointFormatsAndCopiesEncodedFieldsWhileRawViewIsExact() {
        compose.setContent { InspectorOverlay(sampleStore(), decodeResponse = { _, _ -> false }) }
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.onNodeWithTag("inspector_request_4").performClick()
        compose.waitUntil(10_000) {
            compose.onAllNodesWithTag("inspector_copy_body").fetchSemanticsNodes().any {
                !it.config.contains(androidx.compose.ui.semantics.SemanticsProperties.Disabled)
            }
        }
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_decoded)).assertDoesNotExist()
        compose.onNodeWithTag("inspector_copy_body").performClick()
        val clipboard = compose.activity.getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
        compose.runOnIdle {
            assertEquals(Json.parseToJsonElement(wireBody), Json.parseToJsonElement(clipboard.primaryClip!!.getItemAt(0).text.toString()))
        }
        compose.onNodeWithTag("inspector_raw").performClick()
        compose.onNodeWithTag("inspector_copy_body").performClick()
        compose.runOnIdle { assertEquals(wireBody, clipboard.primaryClip!!.getItemAt(0).text.toString()) }
    }

    @Test fun renderSyntheticRequestAndResponsePreviews() {
        open(sampleStore())
        savePreview("requests")
        compose.onNodeWithTag("inspector_request_4").performClick()
        awaitFormatting()
        compose.onNodeWithText(compose.activity.getString(R.string.inspector_decoded)).assertIsDisplayed()
        savePreview("response")
    }

    @Test
    @Config(qualifiers = "zh-rCN-w640dp-h360dp-land-xhdpi")
    fun compactWindowKeepsListActionsAndBodyReachable() {
        open(sampleStore())
        compose.onNodeWithTag("inspector_request_4").assertIsDisplayed().performClick()
        awaitFormatting()
        compose.onNodeWithTag("inspector_code").assertIsDisplayed()
        savePreview("landscape")
    }

    @Test
    @Config(qualifiers = "en-rUS-w320dp-h569dp-port-xhdpi")
    fun smallWindowAndLargeFontKeepCaptureAndBodyUsable() {
        RuntimeEnvironment.setFontScale(2f)
        val store = sampleStore()
        compose.setContent { InspectorOverlay(store) }
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.onNodeWithTag("inspector_recording").assertIsDisplayed()
        compose.onNodeWithTag("inspector_request_4").assertIsDisplayed().performClick()
        awaitFormatting()
        compose.onNodeWithTag("inspector_code").assertIsDisplayed()
        savePreview("small-large-font")
    }

    @Test fun floatingEntryPassesOutsideTouchesAndSavesItsDraggedPosition() {
        var backgroundClicks = 0
        var savedRight = true
        val store = sampleStore()
        compose.setContent {
            Box(Modifier.fillMaxSize().testTag("underlying_app").clickable { backgroundClicks++ }) {
                InspectorOverlay(store, onPositionChanged = { right, _ -> savedRight = right })
            }
        }
        compose.onNodeWithTag("underlying_app").performTouchInput { click(Offset(20f, 20f)) }
        compose.runOnIdle { assertEquals(1, backgroundClicks) }
        compose.onNodeWithTag("inspector_bubble").performTouchInput {
            down(center)
            moveTo(Offset(center.x - 650f, center.y), delayMillis = 300)
            up()
        }
        compose.runOnIdle { assertFalse(savedRight); assertEquals(1, backgroundClicks) }
        compose.onNodeWithTag("inspector_panel").assertDoesNotExist()
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
        compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_close)).performClick()
        assertTrue(compose.onNodeWithTag("inspector_bubble").fetchSemanticsNode().boundsInRoot.left < 40f)
    }

    @Test fun realChuckerAndFloatingCollectorPreserveTheSameHttpResponse() {
        val inspector = NetworkInspector(compose.activity.application) { _, url -> url.endsWith("/synthetic-capture") }
        inspector.setEnabled(true)
        compose.setContent { inspector.Overlay() }
        okhttp3.mockwebserver.MockWebServer().use { server ->
            server.start()
            server.enqueue(okhttp3.mockwebserver.MockResponse().setHeader("Content-Type", "application/json").setBody(wireBody))
            val client = okhttp3.OkHttpClient.Builder().addInterceptor(inspector.interceptor!!).build()
            try {
                client.newCall(okhttp3.Request.Builder().url(server.url("/synthetic-capture")).build()).execute().use {
                    assertEquals(wireBody, it.body!!.string())
                }
                compose.onNodeWithTag("inspector_bubble").performClick()
                compose.onNodeWithText("/synthetic-capture").assertIsDisplayed()
                compose.onNodeWithText("200").assertIsDisplayed()
                val provider = Class.forName("com.chuckerteam.chucker.internal.data.repository.RepositoryProvider")
                val repository = provider.getMethod("transaction").invoke(provider.getField("INSTANCE").get(null))
                val reader = java.util.concurrent.Executors.newSingleThreadExecutor()
                try {
                    var stored: Any? = null
                    compose.waitUntil(10_000) {
                        stored = reader.submit<Any?> {
                            val records = repository.javaClass.getMethod("getTransactionsInTimeRange", java.lang.Long::class.java)
                                .invoke(repository, null) as List<*>
                            records.firstOrNull { record -> record!!.javaClass.getMethod("getResponseBody").invoke(record) == wireBody }
                        }.get(2, java.util.concurrent.TimeUnit.SECONDS)
                        stored != null
                    }
                    val record = checkNotNull(stored)
                    val shown = record.javaClass.getMethod("getFormattedResponseBody").invoke(record).toString()
                    assertEquals(Json.parseToJsonElement(actorJson), Json.parseToJsonElement(shown).jsonObject["actress_profile"])
                } finally { reader.shutdownNow() }
            } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
        }
    }

    private fun savePreview(name: String) {
        compose.waitForIdle()
        compose.runOnUiThread {
            val node = compose.onNodeWithTag("inspector_panel").fetchSemanticsNode()
            val view = (node.root as androidx.compose.ui.platform.ViewRootForTest).view
            val bitmap = android.graphics.Bitmap.createBitmap(view.width, view.height, android.graphics.Bitmap.Config.ARGB_8888)
            view.draw(android.graphics.Canvas(bitmap))
            val output = File("build/inspector-preview/$name.png")
            output.parentFile!!.mkdirs()
            output.outputStream().use { bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, it) }
        }
    }

    private fun awaitFormatting() {
        val message = compose.activity.getString(R.string.inspector_decoded)
        compose.waitUntil(10_000) { compose.onAllNodesWithText(message).fetchSemanticsNodes().isNotEmpty() }
    }
}
