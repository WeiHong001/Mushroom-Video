package com.mogu.inspector

import okhttp3.*
import okhttp3.MediaType.Companion.toMediaType
import okio.Buffer
import okio.BufferedSink
import okio.BufferedSource
import okio.Source
import okio.Timeout
import okio.buffer
import org.junit.Assert.*
import org.junit.Test
import java.io.IOException

class CaptureBoundaryTest {
    @Test fun skippedBodiesAreNeverSerializedByPreview() {
        for ((type, length, duplex, expected) in listOf(
            Spec("application/octet-stream", 8, false, BodyOmission.Binary),
            Spec("application/json", -1, false, BodyOmission.TooLarge),
            Spec("text/plain", BODY_LIMIT + 1, false, BodyOmission.TooLarge),
            Spec("text/plain", 8, true, BodyOmission.OneShot))) {
            var writes = 0
            val body = object : RequestBody() {
                override fun contentType() = type.toMediaType()
                override fun contentLength() = length
                override fun isDuplex() = duplex
                override fun writeTo(sink: BufferedSink) { writes++ }
            }
            val store = NetworkLogStore()
            val client = OkHttpClient.Builder().addInterceptor(InspectorInterceptor(store)).addInterceptor {
                Response.Builder().request(it.request()).protocol(Protocol.HTTP_1_1).code(200).message("synthetic")
                    .body(ResponseBody.create("text/plain".toMediaType(), "ok")).build()
            }.build()
            client.newCall(Request.Builder().url("https://synthetic.invalid/api").post(body).build()).execute().close()
            assertEquals(0, writes)
            assertEquals(expected, store.state.value.logs.single().requestBody.omission)
        }
    }
    private data class Spec(val type: String, val length: Long, val duplex: Boolean, val omission: BodyOmission)

    @Test fun eventStreamIsNotPeekedAndPreviewIOExceptionClosesAndPropagates() {
        for (streaming in listOf(true, false)) {
            var reads = 0
            var closed = false
            val failure = IOException("synthetic body failure")
            val source = object : Source {
                override fun read(sink: Buffer, byteCount: Long): Long { reads++; throw failure }
                override fun timeout() = Timeout.NONE
                override fun close() { closed = true }
            }.buffer()
            val body = object : ResponseBody() {
                override fun contentType() = (if (streaming) "text/event-stream" else "text/plain").toMediaType()
                override fun contentLength() = -1L
                override fun source(): BufferedSource = source
            }
            val store = NetworkLogStore()
            val client = OkHttpClient.Builder().addInterceptor(InspectorInterceptor(store)).addInterceptor {
                Response.Builder().request(it.request()).protocol(Protocol.HTTP_1_1).code(200).message("synthetic").body(body).build()
            }.build()
            val call = client.newCall(Request.Builder().url("https://synthetic.invalid/api").build())
            if (streaming) {
                call.execute().use {
                    assertEquals(0, reads)
                    assertEquals(BodyOmission.Streaming, store.state.value.logs.single().responseBody.omission)
                }
            } else {
                try { call.execute(); fail("preview must propagate the original IOException") }
                catch (actual: IOException) { assertSame(failure, actual) }
                assertTrue(closed)
                assertTrue(store.state.value.logs.single().failed)
            }
        }
    }

    @Test fun actualCapacityAndHeaderCopiesProtectTokenWithoutChangingRequest() {
        val store = NetworkLogStore()
        repeat(201) { store.begin { NetworkLog(it, "GET", "https://synthetic.invalid/", "/", "synthetic.invalid", 0, emptyList(), CapturedBody()) } }
        assertEquals(200, store.state.value.logs.size)
        assertEquals(201L, store.state.value.logs.first().id)
        var received: String? = null
        val client = OkHttpClient.Builder().addInterceptor(InspectorInterceptor(store)).addInterceptor {
            received = it.request().header("x-token")
            Response.Builder().request(it.request()).protocol(Protocol.HTTP_1_1).code(503).message("synthetic")
                .body(ResponseBody.create("application/json".toMediaType(), "{\"code\":200}")).build()
        }.build()
        client.newCall(Request.Builder().url("https://synthetic.invalid/").header("X-ToKeN", "synthetic-token").build()).execute().close()
        assertEquals("synthetic-token", received)
        assertFalse(store.state.value.logs.first().requestHeaders.toString().contains("synthetic-token"))
        assertEquals(503, store.state.value.logs.first().code)
        assertTrue(store.state.value.logs.first().failed)
    }
}
