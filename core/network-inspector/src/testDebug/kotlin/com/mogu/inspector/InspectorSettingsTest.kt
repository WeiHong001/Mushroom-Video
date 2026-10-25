package com.mogu.inspector

import android.content.Context
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Box
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import com.mogu.inspector.ui.FlixTheme
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.SQLiteMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "zh-rCN-w393dp-h852dp-port-xhdpi")
@SQLiteMode(SQLiteMode.Mode.NATIVE)
class InspectorSettingsTest {
    @get:Rule val compose = createAndroidComposeRule<ComponentActivity>()
    private val preferences get() = compose.activity.getSharedPreferences("network_inspector", Context.MODE_PRIVATE)

    @Test fun defaultOffIgnoresLegacyRecordingAndSettingSurvivesNewOwner() {
        preferences.edit().clear().putBoolean("recording", true).commit()
        val owner = mutableStateOf(NetworkInspector(compose.activity))
        compose.setContent { FlixTheme { Box { owner.value.SettingsEntry(); owner.value.Overlay() } } }
        compose.onNodeWithTag("inspector_setting").assertIsOff().performClick().assertIsOn()
        compose.onNodeWithTag("inspector_bubble").assertIsDisplayed()
        assertTrue(preferences.getBoolean("enabled", false))
        compose.runOnIdle { owner.value = NetworkInspector(compose.activity) }
        compose.onNodeWithTag("inspector_setting").assertIsOn().performClick().assertIsOff()
        compose.onNodeWithTag("inspector_bubble").assertDoesNotExist()
        compose.runOnIdle { owner.value = NetworkInspector(compose.activity) }
        compose.onNodeWithTag("inspector_setting").assertIsOff()
        compose.onNodeWithTag("inspector_bubble").assertDoesNotExist()
    }

    @Test fun disablingDismissesOpenPanelAndDoesNotReopenItWhenEnabledAgain() {
        val inspector = NetworkInspector(compose.activity)
        inspector.setEnabled(true)
        compose.setContent { FlixTheme { inspector.Overlay() } }
        compose.onNodeWithTag("inspector_bubble").performClick()
        compose.onNodeWithTag("inspector_panel").assertIsDisplayed()
        compose.runOnIdle { inspector.setEnabled(false) }
        compose.onNodeWithTag("inspector_panel").assertDoesNotExist()
        compose.onNodeWithTag("inspector_bubble").assertDoesNotExist()
        compose.runOnIdle { inspector.setEnabled(true) }
        compose.onNodeWithTag("inspector_bubble").assertIsDisplayed()
        compose.onNodeWithTag("inspector_panel").assertDoesNotExist()
    }

    @Test fun existingClientOnlyCapturesWhileEnabledAndPreservesResponsesAndPausePreference() {
        preferences.edit().clear().commit()
        val inspector = NetworkInspector(compose.activity)
        val store = NetworkInspector::class.java.getDeclaredField("store").apply { isAccessible = true }
            .get(inspector) as NetworkLogStore
        val client = OkHttpClient.Builder().addInterceptor(requireNotNull(inspector.interceptor)).build()
        try {
            MockWebServer().use { server ->
                fun call(path: String) {
                    server.enqueue(MockResponse().setBody("synthetic $path"))
                    client.newCall(Request.Builder().url(server.url(path)).build()).execute().use {
                        assertEquals("synthetic $path", it.body!!.string())
                    }
                }
                call("/default-off")
                assertTrue(store.state.value.logs.isEmpty())
                inspector.setEnabled(true)
                call("/enabled")
                inspector.setEnabled(false)
                call("/disabled")
                assertEquals(listOf("/enabled"), store.state.value.logs.map { it.path })
                store.setRecording(false)
                inspector.setEnabled(true)
                call("/paused")
                assertEquals(listOf("/enabled"), store.state.value.logs.map { it.path })
            }
        } finally {
            client.dispatcher.executorService.shutdown()
            client.connectionPool.evictAll()
        }
    }

    @Test fun privateResponsePolicyBypassesBothCaptureStoresWithoutChangingTheResponse() {
        preferences.edit().clear().commit()
        val inspector = NetworkInspector(compose.activity, captureRequest = { _, url -> !url.contains("/private-feed") })
        inspector.setEnabled(true)
        val store = NetworkInspector::class.java.getDeclaredField("store").apply { isAccessible = true }
            .get(inspector) as NetworkLogStore
        val client = OkHttpClient.Builder().addInterceptor(requireNotNull(inspector.interceptor)).build()
        try {
            MockWebServer().use { server ->
                server.enqueue(MockResponse().setBody("synthetic private response"))
                client.newCall(Request.Builder().url(server.url("/private-feed")).build()).execute().use {
                    assertEquals("synthetic private response", it.body!!.string())
                }
                assertTrue(store.state.value.logs.isEmpty())
                server.enqueue(MockResponse().setBody("synthetic public response"))
                client.newCall(Request.Builder().url(server.url("/public")).build()).execute().close()
                assertEquals(listOf("/public"), store.state.value.logs.map { it.path })
            }
        } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
    }
}
