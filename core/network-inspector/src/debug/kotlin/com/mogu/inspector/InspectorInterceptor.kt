package com.mogu.inspector

import java.io.IOException
import okhttp3.Headers
import okhttp3.Interceptor
import okhttp3.MediaType
import okhttp3.RequestBody
import okhttp3.Response
import okio.Buffer

/** Our preview never consumes/replaces the business body; Chucker wraps its stream separately. */
internal class InspectorInterceptor(
    private val store: NetworkLogStore,
    private val chucker: Interceptor? = null,
) : Interceptor {
    override fun intercept(chain: Interceptor.Chain): Response {
        val request = chain.request()
        val started = System.nanoTime()
        val id = store.begin { id ->
            NetworkLog(
                id, request.method, request.url.toString(), request.url.encodedPath,
                request.url.host, System.currentTimeMillis(), request.headers.redacted(), captureRequest(request.body),
            )
        } ?: return chain.proceed(request)
        try {
            val response = chucker?.intercept(chain) ?: chain.proceed(request)
            val body = captureResponse(response)
            val duration = (System.nanoTime() - started) / 1_000_000
            store.finish(id) {
                it.copy(code = response.code, protocol = response.protocol.toString(), durationMs = duration,
                    responseHeaders = response.headers.redacted(), responseBody = body)
            }
            return response
        } catch (failure: IOException) {
            store.finish(id) {
                it.copy(durationMs = (System.nanoTime() - started) / 1_000_000,
                    failure = failure.javaClass.simpleName + ": " + failure.message.orEmpty())
            }
            throw failure
        }
    }
}

private fun Headers.redacted(): List<Pair<String, String>> = map { (name, value) ->
    name to if (PRIVATE_HEADERS.any { it.equals(name, ignoreCase = true) }) "••••••" else value
}

private fun MediaType?.isTextual(): Boolean = this == null || type == "text" ||
    subtype.contains("json") || subtype.contains("xml") || subtype == "x-www-form-urlencoded"

private fun captureRequest(body: RequestBody?): CapturedBody {
    if (body == null) return CapturedBody(size = 0)
    return try {
        val type = body.contentType()
        val size = body.contentLength().takeIf { it >= 0 }
        val omission = when {
            body.isDuplex() || body.isOneShot() -> BodyOmission.OneShot
            !type.isTextual() -> BodyOmission.Binary
            size == null || size > BODY_LIMIT -> BodyOmission.TooLarge
            else -> null
        }
        if (omission != null) CapturedBody(contentType = type?.toString(), size = size, omission = omission)
        else Buffer().use { buffer ->
            body.writeTo(buffer)
            CapturedBody(buffer.readString(type?.charset(Charsets.UTF_8) ?: Charsets.UTF_8), type?.toString(), size)
        }
    } catch (_: Exception) {
        CapturedBody(omission = BodyOmission.Unavailable)
    }
}

private fun captureResponse(response: Response): CapturedBody {
    val body = response.body ?: return CapturedBody(size = 0)
    val type = body.contentType()
    val size = body.contentLength().takeIf { it >= 0 }
    if (!type.isTextual()) return CapturedBody(contentType = type.toString(), size = size, omission = BodyOmission.Binary)
    if (type?.subtype == "event-stream") return CapturedBody(contentType = type.toString(), omission = BodyOmission.Streaming)
    return try {
        response.peekBody(BODY_LIMIT + 1).use { preview ->
            val bytes = preview.bytes()
            CapturedBody(
                text = bytes.copyOfRange(0, minOf(bytes.size, BODY_LIMIT.toInt()))
                    .toString(type?.charset(Charsets.UTF_8) ?: Charsets.UTF_8),
                contentType = type?.toString(), size = size,
                truncated = bytes.size > BODY_LIMIT,
            )
        }
    } catch (failure: IOException) {
        response.close()
        throw failure
    } catch (_: Exception) {
        CapturedBody(contentType = type?.toString(), size = size, omission = BodyOmission.Unavailable)
    }
}
