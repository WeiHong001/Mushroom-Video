package com.mogu.inspector

import android.content.Context
import com.mogu.inspector.crypto.Base91Codec
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.JsonPrimitive
import kotlinx.serialization.json.jsonObject
import okio.Source
import okio.buffer
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

/** Exercise the actual transformed Chucker AAR, including its existing sharing/export paths. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class ChuckerPresentationTest {
    private val transactionType = Class.forName("com.chuckerteam.chucker.internal.data.entity.HttpTransaction")
    private val profile = """{"person_id":90071992547409931234567890,"name":"合成演员 あかり 😀","spec":{"nested":{"value":1}},"rating":8.700,"visitor_country":null}"""
    private val data = """[{"title":"合成电影","id":9223372036854775807}]"""
    private fun token(value: String) = JsonPrimitive(Base91Codec.encode(value.toByteArray())).toString()
    private val raw get() = """{"actress_profile":${token(profile)},"trace":90071992547409931234567890,"data":${token(data)}}"""

    @After fun resetPolicy() { ChuckerResponseFormatter.decodeResponse = { _, _ -> false } }

    private fun transaction(body: String = raw): Any = transactionType.getDeclaredConstructor().newInstance().also {
        set(it, "ResponseBody", body)
        set(it, "RequestBody", body)
        set(it, "Method", "GET")
        set(it, "Url", "https://api.example.test/swx/movie/search?person_id=synthetic")
        set(it, "ResponseContentType", "application/json")
        set(it, "RequestContentType", "application/json")
    }

    private fun set(transaction: Any, property: String, value: String) {
        transactionType.getMethod("set$property", String::class.java).invoke(transaction, value)
    }

    private fun get(transaction: Any, method: String): String = transactionType.getMethod(method).invoke(transaction).toString()

    @Test fun formattedDisplayAndTextShareDecodeBothFieldsButRawCopyFileAndHarKeepWireText() {
        ChuckerResponseFormatter.decodeResponse = { method, url -> method == "GET" && url.contains("/swx/movie/search?") }
        val transaction = transaction()
        val formatted = get(transaction, "getFormattedResponseBody")
        val highlighted = transactionType.getMethod("getSpannedResponseBody", Context::class.java)
            .invoke(transaction, RuntimeEnvironment.getApplication()) as android.text.Spanned
        assertTrue(highlighted.getSpans(0, highlighted.length, android.text.style.ForegroundColorSpan::class.java).isNotEmpty())
        val adapterType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionBodyAdapter")
        val adapter = adapterType.constructors.single().newInstance({ Unit })
        val lineType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadItem\$BodyLineItem")
        val line = lineType.getConstructor(android.text.SpannableStringBuilder::class.java).newInstance(highlighted)
        adapterType.getMethod("setItems", List::class.java).invoke(adapter, listOf(line))
        val matches = adapterType.methods.single { it.name.startsWith("highlightQueryWithColors") }
            .invoke(adapter, "合成演员", android.graphics.Color.YELLOW, android.graphics.Color.BLACK) as List<*>
        assertEquals(1, matches.size)
        adapterType.methods.single { it.name.startsWith("resetHighlight") }.invoke(adapter)
        val reset = lineType.getMethod("getLine").invoke(line) as android.text.Spanned
        assertEquals(highlighted.toString(), reset.toString())
        assertTrue(reset.getSpans(0, reset.length, android.text.style.ForegroundColorSpan::class.java).isNotEmpty())
        val spanned = highlighted.toString()
        assertEquals(formatted, spanned)
        val parsed = Json.parseToJsonElement(formatted).jsonObject
        assertEquals(Json.parseToJsonElement(profile), parsed["actress_profile"])
        assertEquals(Json.parseToJsonElement(data), parsed["data"])
        assertTrue(formatted.contains("90071992547409931234567890"))
        assertTrue(formatted.contains("8.700"))
        assertTrue(matchingLines(spanned.lines(), "合成演员").isNotEmpty())
        // The native Chucker copy action reads this unmodified responseBody getter.
        assertEquals(raw, get(transaction, "getResponseBody"))
        assertEquals(Json.parseToJsonElement(raw), Json.parseToJsonElement(get(transaction, "getFormattedRequestBody")))

        val shareType = Class.forName("com.chuckerteam.chucker.internal.support.TransactionDetailsSharable")
        val share = shareType.getConstructor(transactionType, Boolean::class.javaPrimitiveType).newInstance(transaction, false)
        val shared = (shareType.getMethod("toSharableContent", Context::class.java)
            .invoke(share, RuntimeEnvironment.getApplication()) as Source).buffer().use { it.readUtf8() }
        assertTrue(shared.endsWith(formatted))

        val payloadType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.PayloadType")
        val response = payloadType.enumConstants.single { it.toString() == "RESPONSE" }
        val fragmentType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadFragment")
        val fragment = fragmentType.getDeclaredConstructor().newInstance()
        val export = fragmentType.getDeclaredMethod("prepareDataToSave", payloadType, transactionType).apply { isAccessible = true }
        val saved = (export.invoke(fragment, response, transaction) as Source).buffer().use { it.readUtf8() }
        assertEquals(raw, saved)

        val contentType = Class.forName("com.chuckerteam.chucker.internal.data.har.log.entry.response.Content")
        val har = contentType.getConstructor(transactionType).newInstance(transaction)
        assertEquals(raw, contentType.getMethod("getText").invoke(har))
    }

    @Test fun disabledEndpointKeepsBothTokensAndChangingPolicyDoesNotMutateStoredBody() {
        val transaction = transaction()
        for (enabled in listOf(false, true, false)) {
            ChuckerResponseFormatter.decodeResponse = { _, _ -> enabled }
            val presented = Json.parseToJsonElement(get(transaction, "getFormattedResponseBody")).jsonObject
            val expected = if (enabled) Json.parseToJsonElement(profile) else Json.parseToJsonElement(raw).jsonObject["actress_profile"]
            assertEquals(expected, presented["actress_profile"])
            assertEquals(raw, get(transaction, "getResponseBody"))
        }
    }

    @Test fun unsupportedDartLogsRemainVerbatimIncludingTokenPunctuationAndOuterBraces() {
        val logs = listOf("{data: ${Base91Codec.encode(data.toByteArray())}, actress_profile: ${Base91Codec.encode(profile.toByteArray())}}",
            "{actress_profile: abc,:{}\"}}", "{actress_profile: truncated}, data: encoded}")
        for (log in logs) {
            assertEquals(log, presentBody(CapturedBody(log), true, true).text)
            assertEquals(log, presentBody(CapturedBody(log), true, false).text)
        }
    }

    @Test fun longActorDescriptionsRemainCompleteAndCanBeHighlightedWithoutRecursiveRegexOverflow() {
        ChuckerResponseFormatter.decodeResponse = { _, _ -> true }
        val longProfile = """{"description":"${"日本語 😀 ".repeat(3000)}","last":90071992547409931234567890}"""
        val body = """{"actress_profile":${token(longProfile)},"data":[]}"""
        val transaction = transaction(body)
        val spanned = transactionType.getMethod("getSpannedResponseBody", Context::class.java)
            .invoke(transaction, RuntimeEnvironment.getApplication()).toString()
        assertEquals(Json.parseToJsonElement(longProfile), Json.parseToJsonElement(spanned).jsonObject["actress_profile"])
        assertEquals(body, get(transaction, "getResponseBody"))
    }
}
