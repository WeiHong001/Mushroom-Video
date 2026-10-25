package com.mogu.inspector


import androidx.compose.foundation.background
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextOverflow
import kotlinx.coroutines.launch
import java.text.DateFormat
import java.util.Date
import com.mogu.inspector.ui.dismissTextInputOnBackgroundTap

@Composable
internal fun RequestList(
    state: InspectorState,
    onSelect: (NetworkLog) -> Unit,
    onClose: () -> Unit,
    onClear: () -> Unit,
    onToggleRecording: () -> Unit,
    onOpenChucker: () -> Unit,
) {
    var query by rememberSaveable { mutableStateOf("") }
    var filter by rememberSaveable { mutableStateOf(RequestFilter.All) }
    var confirmClear by remember { mutableStateOf(false) }
    val shown = remember(state.logs, query, filter) { state.logs.filtered(query, filter) }
    val listState = rememberLazyListState()
    val scope = rememberCoroutineScope()
    val timeFormat = remember { DateFormat.getTimeInstance(DateFormat.MEDIUM) }
    BoxWithConstraints(Modifier.fillMaxSize().dismissTextInputOnBackgroundTap()) {
        val compact = maxHeight / LocalDensity.current.fontScale < InspectorDesign.compactHeight
        Column(Modifier.fillMaxSize()) {
            Row(Modifier.fillMaxWidth().padding(start = InspectorDesign.inset, end = InspectorDesign.small), verticalAlignment = Alignment.CenterVertically) {
                Column(Modifier.weight(1f)) {
                    Text(stringResource(R.string.inspector_title), style = if (compact) MaterialTheme.typography.titleMedium else MaterialTheme.typography.titleLarge)
                }
                if (compact) {
                    InspectorAction(if (state.recording) R.drawable.ui_pause else R.drawable.ui_play,
                        if (state.recording) R.string.inspector_pause else R.string.inspector_resume,
                        Modifier.testTag("inspector_recording"), onClick = onToggleRecording)
                    InspectorAction(R.drawable.ui_delete, R.string.inspector_clear, enabled = state.logs.isNotEmpty(), onClick = { confirmClear = true })
                } else InspectorAction(R.drawable.inspector_external, R.string.inspector_chucker, onClick = onOpenChucker)
                InspectorAction(R.drawable.ui_clear, R.string.inspector_close, onClick = onClose)
            }
            if (!compact) Row(Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.inset), verticalAlignment = Alignment.CenterVertically) {
                Box(Modifier.size(InspectorDesign.dot).background(if (state.recording) MaterialTheme.colorScheme.secondary else MaterialTheme.colorScheme.primary, CircleShape))
                Text(stringResource(if (state.recording) R.string.inspector_recording else R.string.inspector_paused),
                    Modifier.padding(start = InspectorDesign.small).weight(1f), style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                TextButton(onToggleRecording, Modifier.testTag("inspector_recording")) {
                    Icon(painterResource(if (state.recording) R.drawable.ui_pause else R.drawable.ui_play), null, Modifier.size(InspectorDesign.icon))
                    Spacer(Modifier.width(InspectorDesign.tiny))
                    Text(stringResource(if (state.recording) R.string.inspector_pause else R.string.inspector_resume))
                }
                InspectorAction(R.drawable.ui_delete, R.string.inspector_clear, enabled = state.logs.isNotEmpty(), onClick = { confirmClear = true })
            }
            if (!compact) Row(Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.inset).padding(bottom = InspectorDesign.medium), horizontalArrangement = Arrangement.spacedBy(InspectorDesign.small)) {
                Metric(state.logs.size.toString(), stringResource(R.string.inspector_total), Modifier.weight(1f))
                Metric(state.logs.count { it.failed }.toString(), stringResource(R.string.inspector_errors), Modifier.weight(1f))
                val durations = state.logs.mapNotNull { it.durationMs }
                Metric(if (durations.isEmpty()) stringResource(R.string.inspector_unknown) else stringResource(R.string.inspector_milliseconds, durations.average().toLong()),
                    stringResource(R.string.inspector_average), Modifier.weight(1f))
            }
            OutlinedTextField(query, { query = it }, Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.inset).testTag("inspector_search"),
                placeholder = { Text(stringResource(R.string.inspector_search), style = MaterialTheme.typography.bodyMedium) },
                leadingIcon = { Icon(painterResource(R.drawable.ui_search), null, Modifier.size(InspectorDesign.icon)) },
                trailingIcon = { if (query.isNotEmpty()) InspectorAction(R.drawable.ui_clear, R.string.inspector_clear_search) { query = "" } },
                singleLine = true, shape = InspectorDesign.controlShape)
            Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()).padding(horizontal = InspectorDesign.inset), horizontalArrangement = Arrangement.spacedBy(InspectorDesign.small)) {
                RequestFilter.entries.forEach { option ->
                    FilterChip(filter == option, { filter = option }, label = { Text(stringResource(when (option) {
                        RequestFilter.All -> R.string.inspector_filter_all
                        RequestFilter.Errors -> R.string.inspector_filter_errors
                        RequestFilter.Pending -> R.string.inspector_filter_pending
                        RequestFilter.Slow -> R.string.inspector_filter_slow
                    })) }, modifier = Modifier.testTag("inspector_filter_${option.name}"))
                }
            }
            Row(Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.inset), verticalAlignment = Alignment.CenterVertically) {
                Text(stringResource(R.string.inspector_session, shown.size), Modifier.weight(1f), style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                if (listState.firstVisibleItemIndex > 0) TextButton({ scope.launch { listState.animateScrollToItem(0) } }) { Text(stringResource(R.string.inspector_latest)) }
            }
            if (shown.isEmpty()) {
                Column(Modifier.weight(1f).fillMaxWidth().padding(InspectorDesign.large), horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) {
                    Icon(painterResource(R.drawable.inspector_network), null, Modifier.size(InspectorDesign.touch), MaterialTheme.colorScheme.primary)
                    Spacer(Modifier.height(InspectorDesign.inset))
                    Text(stringResource(if (query.isNotBlank() || filter != RequestFilter.All) R.string.inspector_no_results else R.string.inspector_empty_title), style = MaterialTheme.typography.titleMedium)
                    Text(stringResource(if (state.recording) R.string.inspector_empty_body else R.string.inspector_paused_body), Modifier.padding(top = InspectorDesign.small),
                        style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                    if (query.isNotBlank() || filter != RequestFilter.All) TextButton({ query = ""; filter = RequestFilter.All }) { Text(stringResource(R.string.inspector_reset_filters)) }
                }
            } else {
                LazyColumn(Modifier.weight(1f).testTag("inspector_requests"), state = listState, contentPadding = PaddingValues(vertical = InspectorDesign.small)) {
                    items(shown, key = { it.id }) { log ->
                        Surface(onClick = { onSelect(log) }, color = MaterialTheme.colorScheme.background, modifier = Modifier.fillMaxWidth().testTag("inspector_request_${log.id}")) {
                            Column(Modifier.padding(horizontal = InspectorDesign.inset, vertical = InspectorDesign.medium)) {
                                Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(InspectorDesign.small)) {
                                    Surface(color = MaterialTheme.colorScheme.surfaceVariant, shape = InspectorDesign.controlShape) {
                                        Text(log.method, Modifier.padding(horizontal = InspectorDesign.small, vertical = InspectorDesign.tiny), style = InspectorDesign.methodStyle, color = MaterialTheme.colorScheme.primary)
                                    }
                                    Text(log.path, Modifier.weight(1f), style = InspectorDesign.pathStyle, maxLines = 2, overflow = TextOverflow.Ellipsis)
                                    Text(statusText(log), style = MaterialTheme.typography.labelLarge, color = statusColor(log))
                                }
                                Text(log.host, Modifier.padding(top = InspectorDesign.small), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant, maxLines = 1, overflow = TextOverflow.Ellipsis)
                                Row(Modifier.fillMaxWidth().padding(top = InspectorDesign.small), horizontalArrangement = Arrangement.spacedBy(InspectorDesign.medium)) {
                                    Text(timeFormat.format(Date(log.startedAt)), Modifier.weight(1f), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                                    Text(log.durationMs?.let { stringResource(R.string.inspector_milliseconds, it) } ?: stringResource(R.string.inspector_unknown), style = MaterialTheme.typography.bodySmall)
                                    Text(bodySize(log.responseBody.size), style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                                }
                            }
                        }
                        HorizontalDivider(Modifier.padding(horizontal = InspectorDesign.inset))
                    }
                }
            }
        }
    }
    if (confirmClear) AlertDialog(
        onDismissRequest = { confirmClear = false },
        title = { Text(stringResource(R.string.inspector_clear_title)) },
        text = { Text(stringResource(R.string.inspector_clear_body)) },
        confirmButton = { TextButton({ onClear(); confirmClear = false }, Modifier.testTag("inspector_confirm_clear")) { Text(stringResource(R.string.inspector_clear)) } },
        dismissButton = { TextButton({ confirmClear = false }) { Text(stringResource(R.string.inspector_cancel)) } },
    )
}

@Composable
private fun Metric(value: String, label: String, modifier: Modifier) {
    Surface(modifier, shape = InspectorDesign.controlShape, color = MaterialTheme.colorScheme.surface) {
        Column(Modifier.padding(InspectorDesign.medium)) {
            Text(value, style = MaterialTheme.typography.titleMedium, maxLines = 1, overflow = TextOverflow.Ellipsis)
            Text(label, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
    }
}
