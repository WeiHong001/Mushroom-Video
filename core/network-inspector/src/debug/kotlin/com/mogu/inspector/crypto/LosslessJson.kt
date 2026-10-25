package com.mogu.inspector.crypto

/** Validates JSON grammar without materializing numbers or rewriting the document. */
internal class LosslessJson private constructor(private val source: String, private val fields: Set<String>) {
    internal data class Document(
        val root: Char,
        val rootString: StringToken?,
        val fields: Map<String, Field>,
    )

    internal data class Field(val occurrences: Int, val string: StringToken?)

    internal data class StringToken(val start: Int, val end: Int) {
        /** Called only after the whole document has passed syntax validation. */
        fun value(source: String): String = buildString {
            var cursor = start + 1
            while (cursor < end - 1) {
                val char = source[cursor++]
                if (char != '\\') {
                    append(char)
                } else {
                    when (val escaped = source[cursor++]) {
                        'u' -> {
                            append(source.substring(cursor, cursor + 4).toInt(16).toChar())
                            cursor += 4
                        }
                        'b' -> append('\b')
                        'f' -> append('\u000C')
                        'n' -> append('\n')
                        'r' -> append('\r')
                        't' -> append('\t')
                        else -> append(escaped)
                    }
                }
            }
        }
    }

    private enum class State { OBJECT_START, OBJECT_KEY, OBJECT_AFTER, ARRAY_START, ARRAY_VALUE, ARRAY_AFTER }
    private class Frame(var state: State)
    private val stack = ArrayDeque<Frame>()
    private var position = 0
    private val rootFields = mutableMapOf<String, Field>()

    private fun document(): Document {
        space()
        require(position < source.length)
        val root = source[position]
        val rootString = value()
        // An explicit stack accepts deeply nested complete JSON without recursive stack overflow.
        while (stack.isNotEmpty()) {
            space()
            val frame = stack.last()
            when (frame.state) {
                State.OBJECT_START, State.OBJECT_KEY -> {
                    if (frame.state == State.OBJECT_START && take('}')) {
                        stack.removeLast()
                    } else {
                        val key = string()
                        val field = if (stack.size == 1) key.value(source).takeIf { it in fields } else null
                        space()
                        expect(':')
                        frame.state = State.OBJECT_AFTER
                        val stringValue = value()
                        if (field != null) rootFields[field] = Field((rootFields[field]?.occurrences ?: 0) + 1, stringValue)
                    }
                }
                State.OBJECT_AFTER -> {
                    if (take('}')) stack.removeLast() else {
                        expect(',')
                        frame.state = State.OBJECT_KEY
                    }
                }
                State.ARRAY_START, State.ARRAY_VALUE -> {
                    if (frame.state == State.ARRAY_START && take(']')) {
                        stack.removeLast()
                    } else {
                        frame.state = State.ARRAY_AFTER
                        value()
                    }
                }
                State.ARRAY_AFTER -> {
                    if (take(']')) stack.removeLast() else {
                        expect(',')
                        frame.state = State.ARRAY_VALUE
                    }
                }
            }
        }
        space()
        require(position == source.length)
        return Document(root, rootString, rootFields)
    }

    private fun value(): StringToken? {
        space()
        require(position < source.length)
        when (source[position]) {
            '{' -> { position++; stack.addLast(Frame(State.OBJECT_START)) }
            '[' -> { position++; stack.addLast(Frame(State.ARRAY_START)) }
            '"' -> return string()
            't' -> literal("true")
            'f' -> literal("false")
            'n' -> literal("null")
            else -> number()
        }
        return null
    }

    private fun string(): StringToken {
        val start = position
        expect('"')
        while (position < source.length) {
            val char = source[position++]
            if (char == '"') return StringToken(start, position)
            require(char >= ' ')
            if (char == '\\') {
                require(position < source.length)
                val escape = source[position++]
                if (escape == 'u') {
                    repeat(4) {
                        require(position < source.length)
                        val hex = source[position++]
                        require(hex in '0'..'9' || hex in 'a'..'f' || hex in 'A'..'F')
                    }
                } else {
                    require(escape in "\"\\/bfnrt")
                }
            }
        }
        throw IllegalArgumentException("Unterminated JSON string")
    }

    private fun number() {
        take('-')
        if (!take('0')) {
            require(position < source.length && source[position] in '1'..'9')
            digits()
        }
        if (take('.')) requireDigits()
        if (take('e') || take('E')) {
            if (!take('+')) take('-')
            requireDigits()
        }
    }

    private fun digits() {
        while (position < source.length && source[position] in '0'..'9') position++
    }

    private fun requireDigits() {
        val start = position
        digits()
        require(position > start)
    }

    private fun literal(value: String) {
        require(source.startsWith(value, position))
        position += value.length
    }

    private fun space() {
        while (position < source.length && source[position] in " \r\n\t") position++
    }

    private fun take(char: Char): Boolean {
        if (position >= source.length || source[position] != char) return false
        position++
        return true
    }

    private fun expect(char: Char) { require(take(char)) }

    companion object {
        fun inspect(source: String, fields: Set<String> = emptySet()): Document? = try {
            LosslessJson(source, fields).document()
        } catch (_: IllegalArgumentException) {
            null
        }
    }
}
