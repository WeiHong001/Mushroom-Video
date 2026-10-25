package com.mogu.inspector

import android.content.Context
import com.mogu.inspector.privacy.DesensitizationSettings
import com.mogu.inspector.privacy.DesensitizationStorage
import kotlinx.coroutines.*
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okio.Buffer
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.SQLiteMode
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
@SQLiteMode(SQLiteMode.Mode.NATIVE)
class DualCollectorTest {
    private val context get() = RuntimeEnvironment.getApplication() as Context
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Unconfined)
    private val reader = java.util.concurrent.Executors.newSingleThreadExecutor()
    private val privacy = DesensitizationSettings(object : DesensitizationStorage {
        override fun read() = false
        override fun write(enabled: Boolean) = true
    }, scope, Dispatchers.Unconfined)

    private fun inspector(): NetworkInspector {
        context.getSharedPreferences("network_inspector", Context.MODE_PRIVATE).edit().clear().commit()
        return NetworkInspector(context, settings = privacy).also { it.setEnabled(true) }
    }
    private fun store(inspector: NetworkInspector) = NetworkInspector::class.java.getDeclaredField("store")
        .apply { isAccessible = true }.get(inspector) as NetworkLogStore

    @After fun close() { scope.cancel(); reader.shutdownNow(); ChuckerOutputGuard.bind(context, null) }

    private fun chuckerRecords(): List<Any> {
        val provider = Class.forName("com.chuckerteam.chucker.internal.data.repository.RepositoryProvider")
        val repository = provider.getMethod("transaction").invoke(provider.getField("INSTANCE").get(null))
        val query = reader.submit<List<*>> {
            repository.javaClass.getMethod("getTransactionsInTimeRange", java.lang.Long::class.java)
                .invoke(repository, null) as List<*>
        }
        val deadline = System.nanoTime() + TimeUnit.SECONDS.toNanos(10)
        while (!query.isDone && System.nanoTime() < deadline) {
            org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle()
            Thread.sleep(10)
        }
        return query.get(1, TimeUnit.SECONDS).filterIsInstance<Any>()
    }

    @Test fun shortVideoListBodyIsRecordedByBothStoresWithoutChangingTheResponse() {
        val inspector = inspector()
        val body = """{"code":200,"data":{"total":1,"list":[{"play_url":"https://media.example/synthetic.m3u8?signature=sample"}]}}"""
        MockWebServer().use { server ->
            server.enqueue(MockResponse().setHeader("Content-Type", "application/json").setBody(body))
            val client = OkHttpClient.Builder().addInterceptor(inspector.interceptor!!).build()
            try {
                client.newCall(Request.Builder().url(server.url("/api/vlog/list?page=1&limit=6")).build()).execute().use {
                    assertEquals(body, it.body!!.string())
                }
                assertEquals(body, store(inspector).state.value.logs.single().responseBody.text)
                val deadline = System.nanoTime() + TimeUnit.SECONDS.toNanos(10)
                var captured = false
                do {
                    org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle()
                    captured = chuckerRecords().any { it.javaClass.getMethod("getResponseBody").invoke(it) == body }
                    if (!captured) Thread.sleep(20)
                } while (!captured && System.nanoTime() < deadline)
                assertTrue("Chucker retains the complete list body", captured)
            } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
        }
    }

    @Test fun offPauseAndPrivacySuppressNewListRecordsWhileResponsesStayIntact() {
        val inspector = inspector()
        val store = store(inspector)
        val client = OkHttpClient.Builder().addInterceptor(inspector.interceptor!!).build()
        try { MockWebServer().use { server ->
            fun call(phase: String) {
                val body = """{"synthetic_phase":"$phase"}"""
                server.enqueue(MockResponse().setHeader("Content-Type", "application/json").setBody(body))
                client.newCall(Request.Builder().url(server.url("/api/vlog/list?phase=$phase")).build()).execute().use {
                    assertEquals(body, it.body!!.string())
                }
            }
            inspector.setEnabled(false); call("off")
            assertTrue(store.state.value.logs.isEmpty())
            inspector.setEnabled(true); call("on")
            store.setRecording(false); call("paused")
            store.setRecording(true); privacy.setEnabled(true); call("hidden")
            assertEquals(listOf("on"), store.state.value.logs.map { it.url.substringAfter("phase=") })
            privacy.setEnabled(false); call("resumed")
            assertEquals(listOf("resumed", "on"), store.state.value.logs.map { it.url.substringAfter("phase=") })
        } } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
    }
}
