package com.mogu.inspector.crypto

import java.util.Base64
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Test

class Base91JsonDecoderTest {
    private val profile = """{"person_id":9007199254740993123456789,"name":"演员 あかり 😀","also_known_as":{"ja":"あかり"},"profile_path":null,"spec":{"nested":{"height":160}},"description":"中文、日本語、emoji 🎬","rating":8.700,"chat_available":false,"visitor_country":null}"""

    @Test
    fun `supported root fields decode independently in either order without rewriting other text`() {
        val data = """[{"id":9223372036854775807,"nested":{"actress_profile":${quote(encoded(profile))}}}]"""
        val fields = listOf("data" to data, "actress_profile" to profile)
        for (selected in listOf(fields, fields.reversed(), fields.take(1), fields.takeLast(1))) {
            val prefix = """ { "outer":90071992547409931234567890, "n":-0.1200e+03, """
            val suffix = """, "untouched":${quote(encoded(profile))} } """
            val wire = selected.joinToString(", ") { (key, value) -> "${quote(key)} : ${quote(encoded(value))}" }
            val expected = selected.joinToString(", ") { (key, value) -> "${quote(key)} : $value" }
            assertEquals(prefix + expected + suffix, decode(prefix + wire + suffix))
        }
        assertEquals("""{"\u0061ctress_profile":$profile}""", decode("""{"\u0061ctress_profile":${quote(encoded(profile))}}"""))
    }

    @Test
    fun `bad optional profiles never prevent data decoding and bad data never prevents profiles`() {
        val token = encoded(profile)
        val invalidUtf8 = Base91Codec.encode(byteArrayOf(0x7b, 0xff.toByte(), 0x7d))
        val profiles = listOf(profile, "null", quote(""), quote("not-a-token"), quote(invalidUtf8),
            quote(encoded("{\"incomplete\":")), quote(encoded("123")), "123", "true", "[]") +
            (1 until token.length).map { quote(token.take(it)) }
        for (value in profiles) {
            val source = """{"data":${quote(encoded("[]"))},"actress_profile":$value}"""
            assertEquals("""{"data":[],"actress_profile":$value}""", decode(source))
        }
        assertEquals("""{"data":[],"actress_profile":${quote(token + "-")}}""",
            decode("""{"data":${quote(encoded("[]"))},"actress_profile":${quote(token + "-")}}"""))
        assertEquals("""{"data":"broken","actress_profile":$profile}""",
            decode("""{"data":"broken","actress_profile":${quote(token)}}"""))
    }

    @Test
    fun `duplicate supported keys affect only that field and nested or unknown strings stay encoded`() {
        val token = quote(encoded(profile))
        val data = quote(encoded("[]"))
        assertEquals("""{"actress_profile":$token,"\u0061ctress_profile":$token,"data":[]}""",
            decode("""{"actress_profile":$token,"\u0061ctress_profile":$token,"data":$data}"""))
        assertEquals("""{"data":$data,"data":$data,"actress_profile":$profile}""",
            decode("""{"data":$data,"data":$data,"actress_profile":$token}"""))
        val nested = """{"nested":{"actress_profile":$token},"other":$token}"""
        assertSame(nested, decode(nested))
    }

    @Test
    fun `verified category response decodes exactly`() {
        assertEquals("""["movie","series"]""", Base91JsonDecoder.decodeTokenOrNull("5GK=a^oeEGGwd9UoUPO3t%A"))
    }

    @Test
    fun `all three wrappers preserve Unicode escapes and numeric lexemes`() {
        val json = """ {"text":"电影 한국 😀","quote":"\"\\\n\t\u4e2d","id":9007199254740993,"max":9223372036854775807,"n":-0.1200e+03,"huge":1e4000,"items":[1,true,null]} """
        val token = encoded(json)
        assertEquals(json, Base91JsonDecoder.decodeTokenOrNull(token))
        assertEquals(json, decode(" \t$token\r\n"))
        assertEquals(json, decode(quote(token)))
        val prefix = """ { "status":503, "outer":9223372036854775807, "data" : """
        val suffix = """, "message":"OK", "other": {"data":"keep"} } """
        assertEquals(prefix + json + suffix, decode(prefix + quote(token) + suffix))
    }

    @Test
    fun `JSON string escapes are resolved before decoding token`() {
        val escapedToken = "\"\\u0035GK=a^oeEGGwd9UoUPO3t%A\""
        assertEquals("""["movie","series"]""", decode(escapedToken))
        assertEquals("""{"\u0064ata":["movie","series"]}""", decode("""{"\u0064ata":$escapedToken}"""))
    }

    @Test
    fun `only root data is replaced regardless of key order or nesting`() {
        val token = quote(encoded("[]"))
        val prefix = """{"nested":[{"data":$token}],"label":"data", "\u0064ata" : """
        val suffix = """, "tail":{"data":$token},"message":"braces {}, colon : and \"data\""}"""
        assertEquals(prefix + "[]" + suffix, decode(prefix + token + suffix))
    }

    @Test
    fun `ordinary JSON invalid input and non-string data remain verbatim`() {
        val bodies = listOf(
            """ {"status":200,"data":{"id":9223372036854775807}} """,
            """{"data":[],"x":-0.0e+00}""", """{"data":null}""", """{"data":true}""",
            """{"data":123}""", """{"data":"not-a-token"}""", """{"data":""}""",
            """[{"data":"5GK=a^oeEGGwd9UoUPO3t%A"}]""", """"ordinary string"""",
            "null", "123", "true", "", "not encoded", "<html>failure</html>", "[] trailing",
            "{data: 5GK=a^oeEGGwd9UoUPO3t%A, status: 200}",
        )
        for (body in bodies) assertSame(body, decode(body))
    }

    @Test
    fun `duplicate root data keys are ambiguous and left untouched`() {
        val token = quote(encoded("[]"))
        for (body in listOf("""{"data":$token,"data":$token}""", """{"data":0,"\u0064ata":$token}""")) {
            assertSame(body, decode(body))
        }
    }

    @Test
    fun `bad tails and every truncation of the category vector fail`() {
        val token = "5GK=a^oeEGGwd9UoUPO3t%A"
        for (length in 0 until token.length) assertNull(Base91JsonDecoder.decodeTokenOrNull(token.take(length)))
        val other = encoded("""{"ok":true}""")
        assertNull(Base91JsonDecoder.decodeTokenOrNull(other.dropLast(1) + "A"))
        val illegal = other + "-"
        assertSame(illegal, decode(illegal))
    }

    @Test
    fun `strict UTF8 rejects invalid sequences rather than substituting characters`() {
        val invalid = listOf(
            byteArrayOf(0xff.toByte(), 0xfe.toByte(), 0x7b, 0x7d),
            byteArrayOf(0xc0.toByte(), 0xaf.toByte()), // overlong
            byteArrayOf(0x80.toByte()), // stray continuation
            byteArrayOf(0xe2.toByte(), 0x82.toByte()), // truncated
            byteArrayOf(0xed.toByte(), 0xa0.toByte(), 0x80.toByte()), // surrogate
            byteArrayOf(0xf4.toByte(), 0x90.toByte(), 0x80.toByte(), 0x80.toByte()), // > U+10FFFF
        )
        for (bytes in invalid) {
            val token = Base91Codec.encode("[\"".toByteArray() + bytes + "\"]".toByteArray())
            assertNull(Base91JsonDecoder.decodeTokenOrNull(token))
            assertSame(token, decode(token))
        }
        assertEquals("[\"�\"]", decode(encoded("[\"�\"]"))) // a real U+FFFD is valid
    }

    @Test
    fun `complete JSON grammar and object or array roots are required`() {
        val invalid = listOf(
            "{a: 1}", """{"a":1,}""", "[01]", "[1.]", "[true false]", "[]x",
            """{"a":"bad\x"}""", "[\"unfinished", "{\"unfinished\":", "[1,]", "[+1]",
            "[.1]", "[-]", "[1e]", "[1e+]", "[NaN]", "[Infinity]", "[undefined]",
            "[\"bad\ncontrol\"]", """["\u１２３４"]""", "[1\u000B]", "\uFEFF[]",
            "null", "true", "123", "\"string\"", "", "this is not JSON",
        )
        for (json in invalid) assertNull(json, Base91JsonDecoder.decodeTokenOrNull(encoded(json)))
    }

    @Test
    fun `complete nested JSON whitespace literals and escaped surrogates remain exact`() {
        val valid = listOf(
            "{\"a\":[],\"b\":{},\"c\":[{\"d\":[2]}]}", "[1,null,true,-2]",
            "[ \n {\"ok\": true} ]", """["\ud83d\ude00","\ud800","\/\b\f\r"]""",
            "[".repeat(10_000) + "0" + "]".repeat(10_000),
        )
        for (json in valid) assertEquals(json, decode(encoded(json)))
    }

    @Test
    fun `large complete response keeps its final item`() {
        val json = "[" + (1..14_000).joinToString(",") {
            """{"index":$it,"title":"中文 Example 012345678901234567890123456789","ok":true}"""
        } + """,{"last":"COMPLETE-END-14000"}]"""
        assertEquals(json, decode(encoded(json)))
    }

    @Test
    fun `oversized tokens in all wrappers are unchanged without accepting a prefix`() {
        val token = "5GK=a^oeEGGwd9UoUPO3t%A" + "A".repeat(Base91Codec.MAX_TOKEN_LENGTH)
        for (body in listOf(token, quote(token), """{"data":${quote(token)},"status":200}""")) {
            assertSame(body, decode(body))
        }
    }

    @Test
    fun `reprocessing normal decoded response shapes is a no-op`() {
        val token = encoded("""[{"id":9223372036854775807}]""")
        for (body in listOf(token, quote(token), """{"data":${quote(token)}}""")) {
            val first = decode(body)
            assertEquals(first, decode(first))
        }
    }

    @Test
    fun `one call decodes one layer and leaves inner tokens alone`() {
        val inner = encoded("[]")
        val json = """{"data":${quote(inner)}}"""
        assertEquals(json, decode(encoded(json)))
        assertEquals("""{"data":$json}""", decode("""{"data":${quote(encoded(json))}}"""))
    }

    @Test
    fun `source JavaScript oracle corpus matches token and response decoding`() {
        val base64 = Base64.getDecoder()
        val stream = checkNotNull(javaClass.getResourceAsStream("/base91-source-vectors.tsv"))
        stream.bufferedReader().useLines { lines ->
            lines.filter { !it.startsWith("#") }.forEach { line ->
                val fields = line.split('\t')
                val input = base64.decode(fields[1]).toString(Charsets.UTF_8)
                val expected = if (fields[0] == "reject") null else base64.decode(fields[2]).toString(Charsets.UTF_8)
                when (fields[0]) {
                    "response" -> assertEquals(expected, decode(input))
                    "encode" -> assertEquals(expected, encoded(input))
                    "reject" -> assertNull(Base91JsonDecoder.decodeTokenOrNull(input))
                    else -> error("Unknown source fixture kind: ${fields[0]}")
                }
            }
        }
    }

    private fun encoded(text: String) = Base91Codec.encode(text.toByteArray(Charsets.UTF_8))
    private fun decode(text: String) = Base91JsonDecoder.decodeResponse(text)
    private fun quote(text: String) = "\"" + text.replace("\\", "\\\\").replace("\"", "\\\"") + "\""
}
