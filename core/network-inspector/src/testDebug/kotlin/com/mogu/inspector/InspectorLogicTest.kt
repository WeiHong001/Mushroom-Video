package com.mogu.inspector

import com.mogu.inspector.crypto.Base91Codec
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.JsonPrimitive
import kotlinx.serialization.json.jsonObject
import okhttp3.Interceptor
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.RequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okio.BufferedSink
import org.junit.Assert.*
import org.junit.Test
import java.io.IOException
import java.util.concurrent.atomic.AtomicInteger

class InspectorLogicTest {
    private fun log(id: Long, text: String = "") = NetworkLog(id, "GET", "https://example.test/items", "/items", "example.test", 0,
        emptyList(), CapturedBody(), responseBody = CapturedBody(text))

    @Test fun boundedSessionDoesNotResurrectClearedOrEvictedRequests() {
        val store = NetworkLogStore(capacity = 2)
        val first = store.begin { log(it) }!!
        store.begin { log(it) }
        store.begin { log(it) }
        assertEquals(listOf(3L, 2L), store.state.value.logs.map { it.id })
        store.finish(first) { it.copy(code = 200) }
        assertEquals(2, store.state.value.logs.size)
        store.clear()
        store.finish(3L) { it.copy(code = 200) }
        assertTrue(store.state.value.logs.isEmpty())
    }

    @Test fun memoryBudgetEvictsOldBodiesAndPauseAllowsExistingCallsToFinish() {
        val store = NetworkLogStore(characterBudget = 160)
        val first = store.begin { log(it, "x".repeat(80)) }!!
        val second = store.begin { log(it, "y".repeat(80)) }!!
        assertEquals(listOf(second), store.state.value.logs.map { it.id })
        store.setRecording(false)
        assertNull(store.begin { error("Paused capture must not inspect the request body") })
        store.finish(second) { it.copy(code = 200, durationMs = 20) }
        assertEquals(200, store.state.value.logs.single().code)
        assertTrue(first < second)
    }

    @Test fun formattingPreservesNumbersDuplicateKeysAndEscapes() {
        val source = """{"id":9223372036854775807,"id":9007199254740993,"n":1.2300e+10,"s":"a\n\"b","empty":[],"ok":true}"""
        val pretty = presentBody(CapturedBody(source), response = false, formatted = true)
        assertTrue(pretty.json)
        assertTrue(pretty.text.contains("9223372036854775807"))
        assertTrue(pretty.text.contains("9007199254740993"))
        assertTrue(pretty.text.contains("1.2300e+10"))
        assertTrue(pretty.text.contains("\"empty\": []"))
        assertEquals(source, presentBody(CapturedBody(source), false, false).text)
        assertFalse(pretty.decoded)
    }

    @Test fun responseDecodingIsDisplayOnlyAndNeverDecodesRequestBodies() {
        val source = """{"data":"${Base91Codec.encode("[1,2,3]".toByteArray())}","status":200}"""
        val body = CapturedBody(source)
        val pretty = presentBody(body, true, true)
        assertTrue(pretty.decoded)
        assertTrue(pretty.text.contains("\"data\": ["))
        assertFalse(presentBody(body, false, true).decoded)
        assertEquals(source, presentBody(body, true, false).text)
        assertEquals(source, body.text)
    }

    @Test fun optionalActorAndDataShareTheEndpointSwitchWithoutChangingRawText() {
        val profile = """{"name":"演员 日本語 😀","large":90071992547409931234567890}"""
        fun token(text: String) = JsonPrimitive(Base91Codec.encode(text.toByteArray())).toString()
        for (body in listOf("""{"data":${token("[]")},"actress_profile":${token(profile)}}""",
            """{"actress_profile":${token(profile)}}""", """{"actress_profile":"bad-token","data":${token("[]")}}""")) {
            val captured = CapturedBody(body)
            val disabled = presentBody(captured, true, true, decodeBase91 = false)
            assertFalse(disabled.decoded)
            assertEquals(Json.parseToJsonElement(body), Json.parseToJsonElement(disabled.text))
            val enabled = presentBody(captured, true, true)
            assertTrue(enabled.decoded)
            val parsed = Json.parseToJsonElement(enabled.text).jsonObject
            if (body.contains("bad-token")) assertEquals(JsonPrimitive("bad-token"), parsed["actress_profile"])
            else assertEquals(Json.parseToJsonElement(profile), parsed["actress_profile"])
            assertEquals(body, presentBody(captured, true, false).text)
            assertEquals(body, presentBody(captured.copy(truncated = true), true, true).text)
            assertFalse(presentBody(captured, false, true).decoded)
        }
    }

    @Test fun malformedTruncatedAndDeepBodiesRemainReadable() {
        listOf("plain text", "{incomplete", "[".repeat(100) + "0" + "]".repeat(100)).forEach {
            assertEquals(it, presentBody(CapturedBody(it), false, true).text)
        }
        val truncated = CapturedBody("{\"value\":1}", truncated = true)
        assertEquals(truncated.text, presentBody(truncated, true, true).text)
    }

    @Test fun searchFiltersAndSyntaxTokensDescribeActualRecords() {
        val records = listOf(log(1).copy(code = 200, durationMs = 15), log(2).copy(code = 500, durationMs = 1200), log(3))
        assertEquals(listOf(2L), records.filtered("GET", RequestFilter.Errors).map { it.id })
        assertEquals(listOf(3L), records.filtered("", RequestFilter.Pending).map { it.id })
        assertEquals(listOf(2L), records.filtered("example", RequestFilter.Slow).map { it.id })
        assertTrue(records.filtered("absent", RequestFilter.All).isEmpty())
        assertEquals(listOf(0, 2), matchingLines(listOf("Name", "age", "NAME"), "name"))
        assertEquals(listOf(TokenKind.Key, TokenKind.Number, TokenKind.Key, TokenKind.Literal),
            codeTokens("\"id\": 42, \"ok\": true").map { it.kind })
    }

    @Test fun captureRedactsHeadersPreservesBusinessBodiesAndStopsBothCollectorsWhenPaused() {
        MockWebServer().use { server ->
            server.start()
            val store = NetworkLogStore()
            val delegated = AtomicInteger()
            val client = OkHttpClient.Builder().addInterceptor(InspectorInterceptor(store, Interceptor {
                delegated.incrementAndGet(); it.proceed(it.request())
            })).build()
            try {
                server.enqueue(MockResponse().setHeader("Content-Type", "application/json").setHeader("Set-Cookie", "synthetic-cookie").setBody("{\"hello\":true}"))
                val request = Request.Builder().url(server.url("/items")).header("Authorization", "synthetic-token")
                    .post("{\"name\":\"test\"}".toRequestBody("application/json".toMediaType())).build()
                client.newCall(request).execute().use { assertEquals("{\"hello\":true}", it.body!!.string()) }
                val captured = store.state.value.logs.single()
                assertEquals(200, captured.code)
                assertEquals("{\"name\":\"test\"}", captured.requestBody.text)
                assertEquals("{\"hello\":true}", captured.responseBody.text)
                assertFalse(captured.requestHeaders.toString().contains("synthetic-token"))
                assertFalse(captured.responseHeaders.toString().contains("synthetic-cookie"))
                assertEquals("synthetic-token", server.takeRequest().getHeader("Authorization"))
                store.setRecording(false)
                server.enqueue(MockResponse().setBody("paused"))
                client.newCall(request).execute().close()
                assertEquals(1, store.state.value.logs.size)
                assertEquals(1, delegated.get())
            } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
        }
    }

    @Test fun bodyPreviewIsBoundedAndOneShotRequestsAreNotReplayed() {
        MockWebServer().use { server ->
            server.start()
            val store = NetworkLogStore()
            val writes = AtomicInteger()
            val client = OkHttpClient.Builder().addInterceptor(InspectorInterceptor(store)).build()
            try {
                val content = "x".repeat(BODY_LIMIT.toInt() + 20)
                server.enqueue(MockResponse().setHeader("Content-Type", "text/plain").setBody(content))
                val body = object : RequestBody() {
                    override fun contentType() = "text/plain".toMediaType()
                    override fun isOneShot() = true
                    override fun writeTo(sink: BufferedSink) { writes.incrementAndGet(); sink.writeUtf8("once") }
                }
                client.newCall(Request.Builder().url(server.url("/")).post(body).build()).execute().use { assertEquals(content, it.body!!.string()) }
                assertEquals(1, writes.get())
                val log = store.state.value.logs.single()
                assertEquals(BodyOmission.OneShot, log.requestBody.omission)
                assertTrue(log.responseBody.truncated)
                assertEquals(BODY_LIMIT.toInt(), log.responseBody.text.length)
            } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
        }
    }

    @Test fun transportFailureIsRecordedAndPropagated() {
        val store = NetworkLogStore()
        val failure = IOException("synthetic disconnect")
        val client = OkHttpClient.Builder().addInterceptor(InspectorInterceptor(store)).addInterceptor { throw failure }.build()
        try {
            try {
                client.newCall(Request.Builder().url("https://example.test/").build()).execute()
                fail("Expected original failure")
            } catch (actual: IOException) { assertSame(failure, actual) }
            assertTrue(store.state.value.logs.single().failed)
            assertFalse(store.state.value.logs.single().pending)
        } finally { client.dispatcher.executorService.shutdown(); client.connectionPool.evictAll() }
    }
}
