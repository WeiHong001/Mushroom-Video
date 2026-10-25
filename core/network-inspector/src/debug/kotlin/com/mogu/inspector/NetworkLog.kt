package com.mogu.inspector

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow

internal const val BODY_LIMIT = 65_536L
internal val PRIVATE_HEADERS = arrayOf("Authorization", "Proxy-Authorization", "Cookie", "Set-Cookie", "X-Api-Key", "x-token")

internal enum class BodyOmission { Binary, Streaming, OneShot, TooLarge, Unavailable }
internal data class CapturedBody(
    val text: String = "",
    val contentType: String? = null,
    val size: Long? = null,
    val truncated: Boolean = false,
    val omission: BodyOmission? = null,
)

internal data class NetworkLog(
    val id: Long,
    val method: String,
    val url: String,
    val path: String,
    val host: String,
    val startedAt: Long,
    val requestHeaders: List<Pair<String, String>>,
    val requestBody: CapturedBody,
    val code: Int? = null,
    val protocol: String? = null,
    val durationMs: Long? = null,
    val responseHeaders: List<Pair<String, String>> = emptyList(),
    val responseBody: CapturedBody = CapturedBody(),
    val failure: String? = null,
) {
    val pending: Boolean get() = durationMs == null
    val failed: Boolean get() = failure != null || (code ?: 0) >= 400
    val retainedCharacters: Int get() = requestBody.text.length + responseBody.text.length +
        url.length + requestHeaders.sumOf { it.first.length + it.second.length } +
        responseHeaders.sumOf { it.first.length + it.second.length }
}

internal data class InspectorState(val logs: List<NetworkLog> = emptyList(), val recording: Boolean = true)

/** Bounded, session-only storage. Completing an evicted/cleared call cannot restore it. */
internal class NetworkLogStore(
    recording: Boolean = true,
    private val capacity: Int = 200,
    private val characterBudget: Int = 2_000_000,
) {
    private val mutableState = MutableStateFlow(InspectorState(recording = recording))
    val state = mutableState.asStateFlow()
    private var sequence = 0L

    @Synchronized
    fun begin(create: (Long) -> NetworkLog): Long? {
        if (!mutableState.value.recording) return null
        val id = ++sequence
        publish(listOf(create(id)) + mutableState.value.logs)
        return id
    }

    @Synchronized
    fun finish(id: Long, transform: (NetworkLog) -> NetworkLog) {
        publish(mutableState.value.logs.map { if (it.id == id) transform(it) else it })
    }

    @Synchronized
    fun clear() { mutableState.value = mutableState.value.copy(logs = emptyList()) }

    @Synchronized
    fun setRecording(enabled: Boolean) { mutableState.value = mutableState.value.copy(recording = enabled) }

    private fun publish(logs: List<NetworkLog>) {
        var remaining = characterBudget
        val bounded = logs.take(capacity).takeWhile {
            remaining -= it.retainedCharacters
            remaining >= 0
        }
        mutableState.value = mutableState.value.copy(logs = bounded)
    }
}

internal enum class RequestFilter { All, Errors, Pending, Slow }

internal fun List<NetworkLog>.filtered(query: String, filter: RequestFilter): List<NetworkLog> = filter { log ->
    (query.isBlank() || "${log.method} ${log.url} ${log.code.orEmpty()}".contains(query.trim(), ignoreCase = true)) &&
        when (filter) {
            RequestFilter.All -> true
            RequestFilter.Errors -> log.failed
            RequestFilter.Pending -> log.pending
            RequestFilter.Slow -> (log.durationMs ?: 0) >= 1_000
        }
}

private fun Int?.orEmpty() = this?.toString().orEmpty()
