package com.mogu.inspector

import androidx.annotation.DrawableRes
import androidx.annotation.StringRes
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.PlainTooltip
import androidx.compose.material3.TooltipBox
import androidx.compose.material3.TooltipDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.rememberTooltipState
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.colorResource
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

internal object InspectorDesign {
    val tiny = 4.dp
    val small = 8.dp
    val medium = 12.dp
    val inset = 16.dp
    val large = 24.dp
    val touch = 48.dp
    val icon = 20.dp
    val badgeWidth = 72.dp
    val badgeHeight = 56.dp
    val dot = 6.dp
    val border = 1.dp
    val elevation = 8.dp
    val maximumWidth = 720.dp
    val compactHeight = 480.dp
    val codeMinimumWidth = 900.dp
    val controlShape = RoundedCornerShape(12.dp)
    val panelShape = RoundedCornerShape(topStart = 24.dp, topEnd = 24.dp)
    val codeStyle = com.mogu.inspector.ui.FlixTypography.bodyMedium.copy(
        fontFamily = FontFamily.Monospace, fontSize = 13.sp, lineHeight = 20.sp)
    val methodStyle = com.mogu.inspector.ui.FlixTypography.labelMedium.copy(fontFamily = FontFamily.Monospace)
    val pathStyle = com.mogu.inspector.ui.FlixTypography.bodyMedium.copy(fontFamily = FontFamily.Monospace)

}

@Composable
internal fun InspectorTheme(content: @Composable () -> Unit) {
    MaterialTheme(
        colorScheme = darkColorScheme(
            primary = colorResource(R.color.inspector_accent), onPrimary = colorResource(R.color.inspector_on_accent),
            background = colorResource(R.color.inspector_background), onBackground = colorResource(R.color.inspector_text),
            surface = colorResource(R.color.inspector_surface), onSurface = colorResource(R.color.inspector_text),
            surfaceVariant = colorResource(R.color.inspector_raised), onSurfaceVariant = colorResource(R.color.inspector_secondary),
            outline = colorResource(R.color.inspector_outline), outlineVariant = colorResource(R.color.inspector_outline),
            secondary = colorResource(R.color.inspector_success), error = colorResource(R.color.inspector_error),
            secondaryContainer = colorResource(R.color.inspector_match), onSecondaryContainer = colorResource(R.color.inspector_accent),
        ), typography = com.mogu.inspector.ui.FlixTypography, content = content,
    )
}

@Composable
@OptIn(ExperimentalMaterial3Api::class)
internal fun InspectorAction(
    @DrawableRes icon: Int,
    @StringRes label: Int,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    onClick: () -> Unit,
) {
    TooltipBox(positionProvider = TooltipDefaults.rememberPlainTooltipPositionProvider(),
        tooltip = { PlainTooltip { Text(stringResource(label)) } }, state = rememberTooltipState()) {
        IconButton(onClick, modifier.size(InspectorDesign.touch), enabled = enabled) {
            Icon(painterResource(icon), stringResource(label), Modifier.size(InspectorDesign.icon))
        }
    }
}

@Composable
internal fun statusText(log: NetworkLog): String = when {
    log.pending -> stringResource(R.string.inspector_pending)
    log.failure != null -> stringResource(R.string.inspector_failed)
    else -> log.code?.toString() ?: stringResource(R.string.inspector_unknown)
}

@Composable
internal fun statusColor(log: NetworkLog) = colorResource(when {
    log.pending -> R.color.inspector_accent
    log.failed -> R.color.inspector_error
    else -> R.color.inspector_success
})

@Composable
internal fun bodySize(size: Long?): String = when {
    size == null -> stringResource(R.string.inspector_unknown)
    size < 1024 -> stringResource(R.string.inspector_bytes, size)
    else -> stringResource(R.string.inspector_kilobytes, size / 1024.0)
}
