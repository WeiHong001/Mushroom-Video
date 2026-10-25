package com.mogu.inspector


import com.mogu.inspector.ui.*
import androidx.compose.foundation.pager.rememberPagerState

import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.style.TextOverflow
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.text.DateFormat
import java.util.Date
import okhttp3.HttpUrl.Companion.toHttpUrlOrNull

@Composable
internal fun RequestDetail(log: NetworkLog, onBack: () -> Unit, onClose: () -> Unit, decodeResponse: Boolean = true) {
    key(log.id) {
        val pager = rememberPagerState(2) { 3 }
        val tabs = rememberContentTabState(pager)
        FlixContentPager(tabs, listOf("overview", "request", "response"), Modifier.fillMaxSize(), tag = "inspector_pager") { index ->
            val visible by remember { derivedStateOf { pager.layoutInfo.visiblePagesInfo.any { it.index == index } } }
            RequestDetailPage(log, onBack, onClose, decodeResponse, index, tabs.visualIndex,
                tabs::select, visible)
        }
    }
}

@Composable
private fun RequestDetailPage(log: NetworkLog, onBack: () -> Unit, onClose: () -> Unit,
    decodeResponse: Boolean, tab: Int, visualTab: Int, onTab: (Int) -> Unit, visible: Boolean) {
    val back = inspectorBackAction(onBack)
    var formatted by rememberSaveable(log.id) { mutableStateOf(true) }
    var wrap by rememberSaveable { mutableStateOf(true) }
    var find by rememberSaveable(log.id) { mutableStateOf(false) }
    var headersExpanded by rememberSaveable(log.id, tab) { mutableStateOf(false) }
    val snackbar = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()
    val clipboard = LocalClipboardManager.current
    val copied = stringResource(R.string.inspector_copied)
    val copy: (String) -> Unit = { text ->
        clipboard.setText(AnnotatedString(text))
        scope.launch { snackbar.currentSnackbarData?.dismiss(); snackbar.showSnackbar(copied) }
    }
    val body = if (tab == 1) log.requestBody else log.responseBody
    val queryParameters = remember(log.url) {
        log.url.toHttpUrlOrNull()?.let { url ->
            (0 until url.querySize).map { url.queryParameterName(it) to url.queryParameterValue(it).orEmpty() }
        }.orEmpty()
    }
    val presentation = key(body, formatted, tab, decodeResponse, visible) {
        val result by produceState(BodyPresentation(if (formatted) "" else body.text, formatting = formatted)) {
            if (visible && tab != 0) value = withContext(Dispatchers.Default) {
                presentBody(body, response = tab == 2, formatted = formatted, decodeBase91 = decodeResponse)
            }
        }
        result
    }
    BoxWithConstraints(Modifier.fillMaxSize().dismissTextInputOnBackgroundTap().testTag("inspector_detail")) {
        val compact = maxHeight / LocalDensity.current.fontScale < InspectorDesign.compactHeight
        Column(Modifier.fillMaxSize()) {
            Row(Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.small), verticalAlignment = Alignment.CenterVertically) {
                InspectorAction(R.drawable.ui_arrow_back, R.string.inspector_back, Modifier.testTag("inspector_detail_back"), onClick = back)
                Column(Modifier.weight(1f)) {
                    InspectorSelection { Text(log.method, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.primary) }
                    InspectorSelection { Text(log.path, style = InspectorDesign.pathStyle, maxLines = 1, overflow = TextOverflow.Ellipsis) }
                }
                InspectorAction(R.drawable.inspector_copy, R.string.inspector_copy_url) { copy(log.url) }
                InspectorAction(R.drawable.ui_clear, R.string.inspector_close, onClick = onClose)
            }
            if (!compact) Row(Modifier.padding(horizontal = InspectorDesign.inset, vertical = InspectorDesign.small).horizontalScroll(rememberScrollState()),
                horizontalArrangement = Arrangement.spacedBy(InspectorDesign.medium), verticalAlignment = Alignment.CenterVertically) {
                InspectorSelection { Text(statusText(log), style = MaterialTheme.typography.labelLarge, color = statusColor(log)) }
                InspectorSelection { Text(log.durationMs?.let { stringResource(R.string.inspector_milliseconds, it) } ?: stringResource(R.string.inspector_unknown), style = MaterialTheme.typography.bodySmall) }
                InspectorSelection { Text(log.host, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant) }
            }
            FlixCategoryTabs(listOf(R.string.inspector_overview, R.string.inspector_request, R.string.inspector_response)
                .map { stringResource(it) }, listOf("0", "1", "2"), visualTab, onTab,
                Modifier.fillMaxWidth().padding(horizontal = InspectorDesign.small), tagPrefix = "inspector_tab_")
            if (tab == 0) {
                Column(Modifier.weight(1f).verticalScroll(rememberScrollState()).padding(InspectorDesign.inset), verticalArrangement = Arrangement.spacedBy(InspectorDesign.inset)) {
                    Metadata(stringResource(R.string.inspector_url), log.url)
                    Metadata(stringResource(R.string.inspector_method), log.method)
                    Metadata(stringResource(R.string.inspector_status), statusText(log))
                    Metadata(stringResource(R.string.inspector_protocol), log.protocol ?: stringResource(R.string.inspector_unknown))
                    Metadata(stringResource(R.string.inspector_duration), log.durationMs?.let { stringResource(R.string.inspector_milliseconds, it) } ?: stringResource(R.string.inspector_unknown))
                    Metadata(stringResource(R.string.inspector_started), DateFormat.getDateTimeInstance().format(Date(log.startedAt)))
                    Metadata(stringResource(R.string.inspector_size), bodySize(log.responseBody.size))
                    log.failure?.let { InspectorSelection { Text(it, color = MaterialTheme.colorScheme.error, style = InspectorDesign.codeStyle) } }
                }
            } else {
                val headers = if (tab == 1) log.requestHeaders else log.responseHeaders
                if (!compact) TextButton({ headersExpanded = !headersExpanded }, Modifier.fillMaxWidth().testTag("inspector_headers")) {
                    Text(stringResource(if (tab == 1) R.string.inspector_request_headers else R.string.inspector_response_headers, headers.size), Modifier.weight(1f))
                    androidx.compose.material3.Icon(androidx.compose.ui.res.painterResource(if (headersExpanded) R.drawable.ui_expand_less else R.drawable.ui_expand_more), null, Modifier.size(InspectorDesign.icon))
                }
                if (compact || !headersExpanded) {
                    Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()).padding(horizontal = InspectorDesign.small), verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(InspectorDesign.tiny)) {
                        if (compact) InspectorAction(if (headersExpanded) R.drawable.ui_expand_less else R.drawable.ui_expand_more,
                            R.string.inspector_toggle_headers, Modifier.testTag("inspector_headers")) { headersExpanded = !headersExpanded }
                        FilterChip(formatted, { formatted = true; headersExpanded = false }, label = { Text(stringResource(R.string.inspector_formatted)) }, modifier = Modifier.testTag("inspector_pretty"))
                        FilterChip(!formatted, { formatted = false; headersExpanded = false }, label = { Text(stringResource(R.string.inspector_raw)) }, modifier = Modifier.testTag("inspector_raw"))
                        InspectorAction(R.drawable.ui_search, R.string.inspector_find, Modifier.testTag("inspector_find")) { find = !find; headersExpanded = false }
                        InspectorAction(R.drawable.inspector_wrap, if (wrap) R.string.inspector_no_wrap else R.string.inspector_wrap) { wrap = !wrap }
                        InspectorAction(R.drawable.inspector_copy, R.string.inspector_copy, Modifier.testTag("inspector_copy_body"), enabled = presentation.text.isNotEmpty()) { copy(presentation.text) }
                    }
                }
                if (headersExpanded) {
                    Column(Modifier.fillMaxWidth().weight(1f).verticalScroll(rememberScrollState()).padding(InspectorDesign.inset), verticalArrangement = Arrangement.spacedBy(InspectorDesign.medium)) {
                        if (headers.isEmpty()) Text(stringResource(R.string.inspector_no_headers), style = MaterialTheme.typography.bodyMedium)
                        headers.forEach { (name, value) -> Metadata(name, value) }
                    }
                } else {
                    if (presentation.decoded) Text(stringResource(R.string.inspector_decoded), Modifier.padding(horizontal = InspectorDesign.inset, vertical = InspectorDesign.tiny),
                        style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.secondary)
                    if (body.truncated) Text(stringResource(R.string.inspector_truncated), Modifier.padding(horizontal = InspectorDesign.inset, vertical = InspectorDesign.tiny),
                        style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.primary)
                    if (tab == 1 && body.text.isEmpty() && body.omission == null && queryParameters.isNotEmpty()) {
                        Column(Modifier.weight(1f).fillMaxWidth().verticalScroll(rememberScrollState()).padding(InspectorDesign.inset),
                            verticalArrangement = Arrangement.spacedBy(InspectorDesign.inset)) {
                            Text(stringResource(R.string.inspector_query_parameters, queryParameters.size), style = MaterialTheme.typography.labelLarge, color = MaterialTheme.colorScheme.primary)
                            queryParameters.forEach { (name, value) -> Metadata(name, value) }
                        }
                    } else if (body.text.isEmpty()) {
                        Box(Modifier.weight(1f).fillMaxWidth().padding(InspectorDesign.large), contentAlignment = Alignment.Center) {
                            Text(log.failure.takeIf { tab == 2 } ?: stringResource(when {
                                tab == 2 && log.pending -> R.string.inspector_body_waiting
                                else -> when (body.omission) {
                                    BodyOmission.Binary -> R.string.inspector_binary
                                    BodyOmission.Streaming -> R.string.inspector_streaming
                                    BodyOmission.OneShot -> R.string.inspector_one_shot
                                    BodyOmission.TooLarge -> R.string.inspector_large_body
                                    BodyOmission.Unavailable -> R.string.inspector_unavailable
                                    null -> R.string.inspector_body_empty
                                }
                            }), style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                    } else if (presentation.formatting) {
                        Box(Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) {
                            Text(stringResource(R.string.inspector_formatting), style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                    } else {
                        key(log.id, tab) { CodeViewer(presentation, wrap, find, Modifier.weight(1f)) }
                    }
                }
            }
        }
        SnackbarHost(snackbar, Modifier.align(Alignment.BottomCenter).padding(InspectorDesign.inset))
    }
}

@Composable
private fun Metadata(label: String, value: String) {
    InspectorSelection {
        Column(verticalArrangement = Arrangement.spacedBy(InspectorDesign.tiny)) {
            Text(label, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            Text(value, style = InspectorDesign.pathStyle)
        }
    }
}
