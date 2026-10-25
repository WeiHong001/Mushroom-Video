package com.mogu.inspector


import android.graphics.Paint
import android.graphics.Typeface
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.drawscope.clipRect
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.colorResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.text.buildAnnotatedString

@Composable
internal fun CodeViewer(body: BodyPresentation, wrap: Boolean, finding: Boolean, modifier: Modifier = Modifier) {
    val lines = remember(body.text) { body.text.lines() }
    val offsets = remember(lines) {
        var offset = 0
        lines.map { line -> offset.also { offset += line.length + 1 } }
    }
    val density = LocalDensity.current
    val numberStyle = InspectorDesign.codeStyle
    val numberMeasurer = androidx.compose.ui.text.rememberTextMeasurer()
    val numberWidth = with(density) {
        numberMeasurer.measure(lines.size.toString(), numberStyle, softWrap = false).size.width.toDp()
    } + InspectorDesign.small + InspectorDesign.medium
    var query by rememberSaveable { mutableStateOf("") }
    var matchIndex by rememberSaveable { mutableIntStateOf(0) }
    val matches = remember(lines, query, finding) { if (finding) matchingLines(lines, query) else emptyList() }
    val current = if (matches.isEmpty()) 0 else matchIndex.coerceIn(0, matches.lastIndex)
    val scroll = rememberScrollState()
    val horizontalScroll = rememberScrollState()
    var layout by remember { mutableStateOf<TextLayoutResult?>(null) }
    LaunchedEffect(matches, current, layout) {
        layout?.takeIf { it.layoutInput.text.text == body.text }?.let { result ->
            if (matches.isNotEmpty()) {
                scroll.scrollTo(result.getLineTop(result.getLineForOffset(offsets[matches[current]])).toInt())
            }
        }
    }
    Column(modifier.fillMaxWidth()) {
        if (finding) {
            OutlinedTextField(query, { query = it; matchIndex = 0 }, Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.inset).testTag("inspector_body_search"),
                label = { Text(stringResource(R.string.inspector_find)) }, singleLine = true, shape = InspectorDesign.controlShape)
            Row(Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.inset), verticalAlignment = Alignment.CenterVertically) {
                Text(stringResource(R.string.inspector_matches, if (matches.isEmpty()) 0 else current + 1, matches.size), Modifier.weight(1f),
                    style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                InspectorAction(R.drawable.ui_expand_less, R.string.inspector_previous, enabled = matches.isNotEmpty()) { matchIndex = (current - 1 + matches.size) % matches.size }
                InspectorAction(R.drawable.ui_expand_more, R.string.inspector_next, enabled = matches.isNotEmpty()) { matchIndex = (current + 1) % matches.size }
            }
        }
        val foreground = MaterialTheme.colorScheme.onSurface
        val secondary = MaterialTheme.colorScheme.onSurfaceVariant
        val keyColor = colorResource(R.color.inspector_blue)
        val stringColor = colorResource(R.color.inspector_success)
        val numberColor = colorResource(R.color.inspector_accent)
        val literalColor = colorResource(R.color.inspector_purple)
        val highlight = colorResource(R.color.inspector_match)
        val text = remember(body, query, finding, matches, current, foreground, keyColor, stringColor, numberColor, literalColor, highlight) {
            buildAnnotatedString {
                // One continuous selectable value. Gutter numbers never enter clipboard text.
                append(body.text)
                lines.forEachIndexed { index, line ->
                    val base = offsets[index]
                    if (body.json) codeTokens(line).forEach { token ->
                        addStyle(SpanStyle(color = when (token.kind) {
                            TokenKind.Key -> keyColor
                            TokenKind.String -> stringColor
                            TokenKind.Number -> numberColor
                            TokenKind.Literal -> literalColor
                        }), base + token.start, base + token.end)
                    }
                    if (matches.isNotEmpty() && index == matches[current] && line.isNotEmpty()) {
                        addStyle(SpanStyle(background = highlight.copy(alpha = 0.28f)), base, base + line.length)
                    }
                    if (finding && query.isNotBlank()) {
                        var start = line.indexOf(query, ignoreCase = true)
                        while (start >= 0) {
                            addStyle(SpanStyle(background = highlight, color = foreground), base + start, base + start + query.length)
                            start = line.indexOf(query, start + query.length, ignoreCase = true)
                        }
                    }
                }
            }
        }
        val numberPaint = remember(secondary, density, numberStyle) {
            Paint(Paint.ANTI_ALIAS_FLAG).apply {
                color = secondary.toArgb()
                typeface = Typeface.MONOSPACE
                textAlign = Paint.Align.RIGHT
                textSize = with(density) { numberStyle.fontSize.toPx() }
            }
        }
        val numbers = remember(layout, offsets, body.text) {
            layout?.takeIf { it.layoutInput.text.text == body.text }?.let { CodeLineNumbers(it, offsets) }
        }
        Box(Modifier.weight(1f).fillMaxWidth().background(colorResource(R.color.inspector_code))) {
            Box(Modifier.fillMaxSize().verticalScroll(scroll)
                .then(if (wrap) Modifier else Modifier.horizontalScroll(horizontalScroll))
                .testTag("inspector_code").padding(vertical = InspectorDesign.medium)) {
                InspectorSelection {
                    Text(text, (if (wrap) Modifier.fillMaxWidth() else Modifier.widthIn(min = InspectorDesign.codeMinimumWidth))
                        .padding(start = numberWidth, end = InspectorDesign.inset).testTag("inspector_code_text"),
                        style = InspectorDesign.codeStyle, color = foreground, softWrap = wrap, onTextLayout = { layout = it })
                }
            }
            // Keep scroll-dependent drawing outside the scrolling text layer, so moving it
            // does not invalidate the entire paragraph. This Canvas is viewport-sized even
            // for a body whose height exceeds Compose's packed child constraints.
            Canvas(Modifier.matchParentSize().testTag("inspector_code_numbers")) {
                numbers?.let { gutter ->
                    val shift = InspectorDesign.medium.toPx() - scroll.value
                    val x = numberWidth.toPx() - InspectorDesign.small.toPx() - if (wrap) 0 else horizontalScroll.value
                    val lineHeight = InspectorDesign.codeStyle.lineHeight.toPx()
                    clipRect {
                        for (index in gutter.visibleLines(-shift - lineHeight, size.height - shift + lineHeight)) {
                            drawContext.canvas.nativeCanvas.drawText((index + 1).toString(), x, gutter.baseline(index) + shift, numberPaint)
                        }
                    }
                }
            }
        }
    }
}

/** Compute logical line positions once per text layout; scroll work only visits visible lines. */
@Immutable
internal class CodeLineNumbers(layout: TextLayoutResult, offsets: List<Int>) {
    private val baselines = FloatArray(offsets.size) { index ->
        layout.getLineBaseline(layout.getLineForOffset(offsets[index].coerceAtMost(layout.layoutInput.text.length)))
    }

    fun baseline(index: Int): Float = baselines[index]

    fun visibleLines(top: Float, bottom: Float): IntRange = bound(top, after = false) until bound(bottom, after = true)

    private fun bound(y: Float, after: Boolean): Int {
        var low = 0
        var high = baselines.size
        while (low < high) {
            val mid = (low + high) ushr 1
            if (baselines[mid] < y || after && baselines[mid] == y) low = mid + 1 else high = mid
        }
        return low
    }
}
