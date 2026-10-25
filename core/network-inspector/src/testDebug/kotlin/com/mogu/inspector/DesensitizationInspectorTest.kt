package com.mogu.inspector

import android.view.View
import androidx.activity.ComponentActivity
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import com.mogu.inspector.privacy.*
import com.mogu.inspector.ui.*
import kotlinx.coroutines.*
import okhttp3.*
import okhttp3.mockwebserver.*
import org.junit.*
import org.junit.Assert.*
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowToast

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "zh-rCN-w393dp-h852dp-port-xhdpi")
class DesensitizationInspectorTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val settings = DesensitizationSettings(object : DesensitizationStorage {
        override fun read() = false
        override fun write(enabled: Boolean) = true
    }, scope, Dispatchers.Unconfined)
    @After fun close() { scope.cancel(); ChuckerOutputGuard.bind(RuntimeEnvironment.getApplication(), null) }
    @Test fun hiddenInspectorKeepsBusinessResponsesButBlocksThePanelAndNewRawCollection() {
        val inspector = NetworkInspector(compose.activity, settings = settings)
        inspector.setEnabled(true)
        val store = NetworkInspector::class.java.getDeclaredField("store").apply { isAccessible = true }.get(inspector) as NetworkLogStore
        store.begin { NetworkLog(it, "GET", "https://api.example/synthetic", "/synthetic", "api.example", 1,
            emptyList(), CapturedBody("合成保密原文")) }
        MockWebServer().use { server ->
            val client = OkHttpClient.Builder().addInterceptor(requireNotNull(inspector.interceptor)).build()
            fun call() {
                server.enqueue(MockResponse().setBody("合成保密正文"))
                client.newCall(Request.Builder().url(server.url("/synthetic")).build()).execute().use {
                    assertEquals("合成保密正文", it.body!!.string())
                }
            }
            compose.setContent { FlixTheme { DesensitizationProvider(settings) { inspector.Overlay() } } }
            compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_open, 1)).assertIsDisplayed()
            compose.onNodeWithTag("inspector_bubble").performClick()
            compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
            compose.runOnIdle { settings.setEnabled(true) }
            compose.onNodeWithTag("inspector_panel").assertDoesNotExist()
            compose.onNodeWithContentDescription(compose.activity.getString(com.mogu.inspector.R.string.ui_hidden_diagnostics)).performClick()
            assertEquals(compose.activity.getString(com.mogu.inspector.R.string.ui_hidden_diagnostics), ShadowToast.getTextOfLatestToast())
            call()
            compose.runOnIdle { settings.setEnabled(false) }
            compose.onNodeWithContentDescription(compose.activity.getString(R.string.inspector_open, 1)).assertIsDisplayed()
        }
    }
    @Test fun activeAndRestoredChuckerActivitiesAreClosedBeforeTheyCanShowOrExportOriginalText() {
        NetworkInspector(RuntimeEnvironment.getApplication(), settings = settings)
        @Suppress("UNCHECKED_CAST")
        val type = Class.forName("com.chuckerteam.chucker.internal.ui.MainActivity") as Class<AppCompatActivity>
        val first = Robolectric.buildActivity(type)
        first.get().setTheme(com.chuckerteam.chucker.R.style.Chucker_Theme)
        first.setup().use {
            settings.setEnabled(true)
            assertTrue(first.get().isFinishing)
            assertEquals(View.INVISIBLE, first.get().window.decorView.visibility)
        }
        val restored = Robolectric.buildActivity(type)
        restored.get().setTheme(com.chuckerteam.chucker.R.style.Chucker_Theme)
        restored.setup().use {
            assertTrue(restored.get().isFinishing)
            assertTrue(restored.get().window.decorView.viewTreeObserver.dispatchOnPreDraw())
            assertEquals(View.INVISIBLE, restored.get().window.decorView.visibility)
        }
    }
    @Test fun previouslyObtainedCopyShareAndExportSinksRefuseOriginalOutputAfterAToggle() {
        val context = RuntimeEnvironment.getApplication()
        NetworkInspector(context, settings = settings)
        val clipboard = context.getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
        val file = java.io.File(context.cacheDir, "synthetic-pending-export.txt")
        val sink = ChuckerOutputGuard.fileSink(file, false)
        sink.write(okio.Buffer().writeUtf8("earlier"), 7)
        settings.setEnabled(true)
        ChuckerOutputGuard.copy(clipboard, android.content.ClipData.newPlainText("synthetic", "合成保密复制"))
        assertNull(clipboard.primaryClip)
        ChuckerOutputGuard.launch(context, android.content.Intent(android.content.Intent.ACTION_SEND).putExtra(android.content.Intent.EXTRA_TEXT, "合成保密分享"))
        assertNull(org.robolectric.Shadows.shadowOf(context).nextStartedActivity)
        try {
            sink.write(okio.Buffer().writeUtf8("合成保密导出"), "合成保密导出".toByteArray().size.toLong())
            fail("late export must be blocked")
        } catch (_: java.io.IOException) { }
        sink.close()
        assertEquals("earlier", file.readText())

        // Exercise the actual transformed Chucker AAR, rather than only its hook implementation.
        val type = Class.forName("com.chuckerteam.chucker.internal.support.Sharable")
        val source = java.lang.reflect.Proxy.newProxyInstance(type.classLoader, arrayOf(type)) { _, _, _ -> okio.Buffer().writeUtf8("合成保密原文") }
        val export = Class.forName("com.chuckerteam.chucker.internal.support.SharableKt")
            .getDeclaredMethod("writeToFile", type, android.content.Context::class.java, String::class.java)
        try {
            export.invoke(null, source, context, "synthetic-blocked.txt")
            fail("transformed export must be blocked")
        } catch (failure: java.lang.reflect.InvocationTargetException) {
            assertTrue(failure.cause is java.io.IOException)
        }
    }
}
