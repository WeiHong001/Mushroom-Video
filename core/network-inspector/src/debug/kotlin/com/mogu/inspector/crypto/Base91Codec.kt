package com.mogu.inspector.crypto

/** Flix1's basE91 alphabet and bit packing. Encoding is not encryption and needs no key. */
object Base91Codec {
    const val MAX_TOKEN_LENGTH: Int = 8 * 1024 * 1024

    private const val ALPHABET =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&()*+,./:;<=>?@[]^_`{|}~\""
    private val digits = IntArray(128) { -1 }.apply {
        ALPHABET.forEachIndexed { index, char -> this[char.code] = index }
    }

    fun encode(bytes: ByteArray): String = buildString {
        var buffer = 0
        var bits = 0
        for (byte in bytes) {
            buffer = buffer or ((byte.toInt() and 255) shl bits)
            bits += 8
            if (bits > 13) {
                var value = buffer and 8191
                if (value > 88) {
                    buffer = buffer ushr 13
                    bits -= 13
                } else {
                    value = buffer and 16383
                    buffer = buffer ushr 14
                    bits -= 14
                }
                append(ALPHABET[value % 91])
                append(ALPHABET[value / 91])
            }
        }
        if (bits > 0) {
            append(ALPHABET[buffer % 91])
            if (bits > 7 || buffer > 90) append(ALPHABET[buffer / 91])
        }
    }

    /** Rejects empty, oversized, illegal and noncanonical tokens (including unused tail bits). */
    fun decodeOrNull(token: String): ByteArray? {
        if (token.isEmpty() || token.length > MAX_TOKEN_LENGTH) return null
        val bytes = ByteArray(token.length)
        var count = 0
        var value = -1
        var buffer = 0
        var bits = 0
        for (char in token) {
            val next = digits.getOrElse(char.code) { -1 }
            if (next < 0) return null
            if (value < 0) {
                value = next
            } else {
                value += next * 91
                buffer = buffer or (value shl bits)
                bits += if ((value and 8191) > 88) 13 else 14
                while (bits >= 8) {
                    bytes[count++] = (buffer and 255).toByte()
                    buffer = buffer ushr 8
                    bits -= 8
                }
                value = -1
            }
        }
        if (value >= 0) bytes[count++] = ((buffer or (value shl bits)) and 255).toByte()
        val decoded = bytes.copyOf(count)
        return decoded.takeIf { encode(it) == token }
    }
}
