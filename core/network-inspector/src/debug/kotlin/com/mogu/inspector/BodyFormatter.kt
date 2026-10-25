package com.mogu.inspector

import com.mogu.inspector.crypto.Base91JsonDecoder
import com.mogu.inspector.crypto.LosslessJson

internal data class BodyPresentation(val text: String, val json: Boolean = false, val decoded: Boolean = false, val formatting: Boolean = false)

/** Pretty-print tokens without converting numbers, sorting keys, or dropping duplicate keys. */
internal fun presentBody(body: CapturedBody, response: Boolean, formatted: Boolean, decodeBase91: Boolean = true): BodyPresentation {
    if (!formatted || body.truncated || body.omission != null) return BodyPresentation(body.text)
    val decoded = if (response && decodeBase91) Base91JsonDecoder.decodeResponse(body.text) else body.text
    val pretty = prettyJsonOrNull(decoded)
    return BodyPresentation(pretty ?: decoded, pretty != null, decoded != body.text)
}

private fun prettyJsonOrNull(source: String): String? {
    // Bound both parser nesting and indentation expansion for hostile/accidental deep responses.
    var depth = 0
    var quoted = false
    var escaped = false
    for (char in source) {
        if (quoted) {
            if (escaped) escaped = false else if (char == '\\') escaped = true else if (char == '"') quoted = false
        } else when (char) {
            '"' -> quoted = true
            '{', '[' -> if (++depth > 64) return null
            '}', ']' -> depth--
        }
    }
    if (LosslessJson.inspect(source) == null) return null
    val compact = buildString {
        quoted = false
        escaped = false
        for (char in source) {
            if (quoted || !char.isWhitespace()) append(char)
            if (quoted) {
                if (escaped) escaped = false else if (char == '\\') escaped = true else if (char == '"') quoted = false
            } else if (char == '"') quoted = true
        }
    }
    val result = StringBuilder()
    depth = 0
    quoted = false
    escaped = false
    fun newline() { result.append('\n').append("  ".repeat(depth)) }
    compact.forEachIndexed { index, char ->
        if (quoted) {
            result.append(char)
            if (escaped) escaped = false else if (char == '\\') escaped = true else if (char == '"') quoted = false
        } else when (char) {
            '"' -> { quoted = true; result.append(char) }
            '{', '[' -> {
                result.append(char)
                depth++
                if (compact.getOrNull(index + 1) !in listOf('}', ']')) newline()
            }
            '}', ']' -> {
                depth--
                if (compact.getOrNull(index - 1) !in listOf('{', '[')) newline()
                result.append(char)
            }
            ',' -> { result.append(char); newline() }
            ':' -> result.append(": ")
            else -> result.append(char)
        }
        if (result.length > 262_144) return null
    }
    return result.toString()
}

internal enum class TokenKind { Key, String, Number, Literal }
internal data class CodeToken(val start: Int, val end: Int, val kind: TokenKind)
private val tokens = Regex("\"(?:\\\\.|[^\"\\\\])*+\"|\\b(?:true|false|null)\\b|-?\\d+(?:\\.\\d+)?(?:[eE][+-]?\\d+)?")

internal fun codeTokens(line: String): List<CodeToken> = tokens.findAll(line).map { match ->
    val kind = when {
        match.value.startsWith('"') && line.substring(match.range.last + 1).trimStart().startsWith(':') -> TokenKind.Key
        match.value.startsWith('"') -> TokenKind.String
        match.value.first().isDigit() || match.value.startsWith('-') -> TokenKind.Number
        else -> TokenKind.Literal
    }
    CodeToken(match.range.first, match.range.last + 1, kind)
}.toList()

internal fun matchingLines(lines: List<String>, query: String): List<Int> =
    if (query.isBlank()) emptyList() else lines.indices.filter { lines[it].contains(query, ignoreCase = true) }
