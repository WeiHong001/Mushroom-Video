package com.mogu.inspector.crypto

import kotlin.random.Random
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class Base91CodecTest {
    @Test
    fun `source hello and category vectors remain byte exact`() {
        assertEquals(">OwJh>Io0Tv!8PE", Base91Codec.encode("Hello World!".toByteArray()))
        assertArrayEquals("Hello World!".toByteArray(), Base91Codec.decodeOrNull(">OwJh>Io0Tv!8PE"))
        assertEquals("5GK=a^oeEGGwd9UoUPO3t%A", Base91Codec.encode("[\"movie\",\"series\"]".toByteArray()))
    }

    @Test
    fun `all byte values and varied tails round trip`() {
        val random = Random(91)
        val inputs = listOf(ByteArray(256) { it.toByte() }) +
            (1..512).map { random.nextBytes(it) } + listOf(random.nextBytes(4096))
        for (bytes in inputs) assertArrayEquals(bytes, Base91Codec.decodeOrNull(Base91Codec.encode(bytes)))
    }

    @Test
    fun `invalid characters empty tokens and noncanonical final bits are rejected`() {
        for (token in listOf("", "A", "AD", "-", "\\", "'", " ", "😀", "é", "AA\n")) {
            assertNull(token, Base91Codec.decodeOrNull(token))
        }
        assertArrayEquals(byteArrayOf(0), Base91Codec.decodeOrNull("AA"))
    }

    @Test
    fun `eight mebibytes of token characters is inclusive and never truncated`() {
        val atLimit = "A".repeat(Base91Codec.MAX_TOKEN_LENGTH)
        // Four AA pairs encode seven zero bytes; this token has a canonical tail at the limit.
        assertEquals(7 * 1024 * 1024, Base91Codec.decodeOrNull(atLimit)!!.size)
        assertNull(Base91Codec.decodeOrNull(atLimit + "A"))
    }
}
