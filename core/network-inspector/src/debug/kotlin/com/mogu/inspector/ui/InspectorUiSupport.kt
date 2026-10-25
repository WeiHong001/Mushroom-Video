@file:Suppress("DEPRECATION")
package com.mogu.inspector.ui

import android.content.ClipData
import android.os.Build
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection
import androidx.compose.ui.platform.*
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import com.mogu.inspector.InspectorTheme
import com.mogu.inspector.privacy.DesensitizationSettings
import com.mogu.inspector.privacy.DesensitizationState
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch

// Only the diagnostic UI contracts are migrated; no Flix business/UI module is imported.
val FlixTypography = Typography()
object HomeDimensions {
    val TouchTarget = 48.dp
    val ControlPadding = 12.dp
    val ControlSpacing = 8.dp
}
@Composable fun FlixTheme(content: @Composable () -> Unit) = InspectorTheme(content)

val LocalDesensitization = compositionLocalOf { DesensitizationState() }
val LocalDesensitizationSettings = staticCompositionLocalOf<DesensitizationSettings?> { null }

@Composable fun DesensitizationProvider(settings: DesensitizationSettings, content: @Composable () -> Unit) {
    val state by settings.state.collectAsState()
    val clipboard = LocalClipboardManager.current
    val modern = LocalClipboard.current
    val toolbar = LocalTextToolbar.current
    val guarded = remember(settings, clipboard) { object : ClipboardManager {
        override fun setText(annotatedString: AnnotatedString) {
            settings.withState { if (!it.hidesContent) clipboard.setText(annotatedString) }
        }
        override fun getText() = clipboard.getText()
        override fun hasText() = clipboard.hasText()
    } }
    val guardedModern = remember(settings, modern) { object : Clipboard {
        override val nativeClipboard get() = modern.nativeClipboard
        override suspend fun getClipEntry() = modern.getClipEntry()
        override suspend fun setClipEntry(clipEntry: ClipEntry?) {
            // The actual OS write shares the privacy lock, including retained selection callbacks.
            settings.withState {
                if (!it.hidesContent) {
                    if (clipEntry != null) nativeClipboard.setPrimaryClip(clipEntry.clipData)
                    else if (Build.VERSION.SDK_INT >= 28) nativeClipboard.clearPrimaryClip()
                    else nativeClipboard.setPrimaryClip(ClipData.newPlainText("", ""))
                }
            }
        }
    } }
    DisposableEffect(settings, toolbar) {
        val observer = settings.observe { if (it.hidesContent) toolbar.hide() }
        onDispose { observer.close(); toolbar.hide() }
    }
    CompositionLocalProvider(LocalDesensitization provides state, LocalDesensitizationSettings provides settings,
        LocalClipboardManager provides guarded, LocalClipboard provides guardedModern, content = content)
}

@Stable class ContentTabState(val pager: PagerState, private val scope: CoroutineScope) {
    private var target by mutableStateOf<Int?>(null)
    private var job: Job? = null
    private var serial = 0
    val visualIndex get() = target ?: pager.currentPage
    fun select(index: Int) {
        val intent = ++serial
        job?.cancel()
        target = index
        job = scope.launch { try { pager.animateScrollToPage(index) } finally { if (serial == intent) target = null } }
    }
}
@Composable fun rememberContentTabState(pager: PagerState): ContentTabState {
    val scope = rememberCoroutineScope()
    return remember(pager, scope) { ContentTabState(pager, scope) }
}
private val contentScroll = object : NestedScrollConnection {}
@Composable fun FlixContentPager(state: ContentTabState, ids: List<String>, modifier: Modifier,
    tag: String, content: @Composable PagerScope.(Int) -> Unit) {
    HorizontalPager(state.pager, modifier.testTag(tag), key = { ids[it] },
        beyondViewportPageCount = 0, pageNestedScrollConnection = contentScroll) { index ->
        // Compose may retain an adjacent page for animation/selection. Only the visible page
        // belongs to accessibility navigation; offscreen controls must not receive actions.
        Box(Modifier.fillMaxSize().then(if (index != state.pager.currentPage) Modifier.clearAndSetSemantics { } else Modifier)) {
            content(index)
        }
    }
}
@Composable fun FlixCategoryTabs(labels: List<String>, ids: List<String>, selected: Int,
    onSelect: (Int) -> Unit, modifier: Modifier = Modifier, tagPrefix: String) {
    ScrollableTabRow(selectedTabIndex = selected, modifier = modifier, edgePadding = 0.dp) {
        labels.forEachIndexed { index, label ->
            Tab(selected == index, { onSelect(index) }, Modifier.heightIn(min = 48.dp).testTag(tagPrefix + ids[index]),
                selectedContentColor = MaterialTheme.colorScheme.primary,
                unselectedContentColor = MaterialTheme.colorScheme.onSurfaceVariant,
                text = { Text(label, maxLines = 1) })
        }
    }
}
