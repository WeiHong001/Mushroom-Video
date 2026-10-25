package com.mogu.inspector.crypto

import java.nio.ByteBuffer
import java.nio.charset.CharacterCodingException
import java.nio.charset.CodingErrorAction

/** Pure text protocol adapter. No HTTP, logging, numeric conversion or recursive data decoding. */
object Base91JsonDecoder {
    private val RESPONSE_FIELDS = setOf("data", "actress_profile")
    /** Returns the original decoded JSON text only for a complete object/array with strict UTF-8. */
    fun decodeTokenOrNull(token: String): String? {
        val bytes = Base91Codec.decodeOrNull(token) ?: return null
        val text = try {
            Charsets.UTF_8.newDecoder()
                .onMalformedInput(CodingErrorAction.REPORT)
                .onUnmappableCharacter(CodingErrorAction.REPORT)
                .decode(ByteBuffer.wrap(bytes)).toString()
        } catch (_: CharacterCodingException) {
            return null
        }
        val document = LosslessJson.inspect(text) ?: return null
        return text.takeIf { document.root == '{' || document.root == '[' }
    }

    /**
     * Adapts one layer: raw token, JSON-quoted token, or the supported root string fields.
     * Each field succeeds or fails independently. Only validated values are spliced,
     * preserving outer number lexemes, escapes, whitespace and other fields.
     */
    fun decodeResponse(body: String): String {
        decodeTokenOrNull(body.trim(::isScriptWhitespace))?.let { return it }
        val document = LosslessJson.inspect(body, RESPONSE_FIELDS) ?: return body
        if (document.root == '"') return document.rootString?.let { decodeTokenOrNull(it.value(body)) } ?: body
        if (document.root != '{') return body
        // Validate every token against the original document, then replace right to left so
        // offsets never depend on field order or the length of a previous replacement.
        val replacements = document.fields.values.mapNotNull { field ->
            val token = field.string?.takeIf { field.occurrences == 1 } ?: return@mapNotNull null
            decodeTokenOrNull(token.value(body))?.let { token to it }
        }
        if (replacements.isEmpty()) return body
        return StringBuilder(body).apply {
            replacements.sortedByDescending { it.first.start }.forEach { (token, decoded) ->
                replace(token.start, token.end, decoded)
            }
        }.toString()
    }

    // Match JavaScript String.trim(), including BOM, without relaxing JSON's own whitespace rules.
    private fun isScriptWhitespace(char: Char): Boolean =
        char in '\u0009'..'\u000D' || char == ' ' || char == '\u00A0' || char == '\u1680' ||
            char in '\u2000'..'\u200A' || char == '\u2028' || char == '\u2029' ||
            char == '\u202F' || char == '\u205F' || char == '\u3000' || char == '\uFEFF'
}
