package com.mogu.inspector

import android.content.Context
import android.text.SpannableStringBuilder
import android.text.Spanned
import com.chuckerteam.chucker.internal.support.SpanTextUtil.ChuckerForegroundColorSpan
import com.chuckerteam.chucker.R as ChuckerR

/** Called only by Chucker's formatted/spanned response getters, never its body storage. */
object ChuckerResponseFormatter {
    @Volatile
    internal var decodeResponse: (String, String) -> Boolean = { _, _ -> false }

    // Public JVM signature is the small, version-checked Chucker display patch's only contract.
    @JvmStatic
    fun formatOrNull(body: String?, method: String?, url: String?): String? = presentationOrNull(body, method, url)?.text

    private fun presentationOrNull(body: String?, method: String?, url: String?): BodyPresentation? {
        if (body == null || method == null || url == null || !decodeResponse(method, url)) return null
        return presentBody(CapturedBody(body), response = true, formatted = true)
    }

    /** Reuse token highlighting without passing the result through Gson's serializer again. */
    @JvmStatic
    fun spanOrNull(body: String?, method: String?, url: String?, context: Context?): CharSequence? {
        val presentation = presentationOrNull(body, method, url) ?: return null
        val text = presentation.text
        if (context == null || !presentation.json) return text
        return SpannableStringBuilder(text).apply {
            var offset = 0
            text.lineSequence().forEach { line ->
                codeTokens(line).forEach { token ->
                    val color = when (token.kind) {
                        TokenKind.Key -> ChuckerR.color.chucker_json_key_color
                        TokenKind.String -> ChuckerR.color.chucker_json_value_color
                        TokenKind.Number -> ChuckerR.color.chucker_json_digit_and_null_value_color
                        TokenKind.Literal -> if (line.substring(token.start, token.end) == "null")
                            ChuckerR.color.chucker_json_digit_and_null_value_color else ChuckerR.color.chucker_json_boolean_color
                    }
                    setSpan(ChuckerForegroundColorSpan(context.getColor(color)), offset + token.start, offset + token.end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
                }
                offset += line.length + 1
            }
        }
    }
}
