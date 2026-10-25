package com.mogu.inspector

import android.app.Activity
import android.app.Application
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.ViewGroup
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.selection.toggleable
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.unit.dp
import com.mogu.inspector.privacy.DesensitizationSettings
import com.mogu.inspector.ui.DesensitizationProvider
import kotlinx.coroutines.*
import java.util.WeakHashMap

/** Debug-only adapter for the recovered View activities. The Application owns one host. */
class InspectorHost(application: Application, captureRequest: (String, String) -> Boolean) {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    val privacy = DesensitizationSettings(application, scope)
    val inspector = NetworkInspector(application, privacy, captureRequest = captureRequest)
    // Values must not retain Activity through a ComposeView's Context.
    private val mounted = WeakHashMap<Activity, Unit>()
    init { current = this }

    fun attach(activity: Activity, settingsParent: ViewGroup?) {
        if (activity !is ComponentActivity || mounted.containsKey(activity)) return
        val root = activity.findViewById<ViewGroup>(android.R.id.content) ?: return
        val overlay = ComposeView(activity).apply {
            id = R.id.inspector_overlay_host
            setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
            setContent {
                DesensitizationProvider(privacy) {
                    val keyboardVisible = WindowInsets.ime.getBottom(LocalDensity.current) > 0
                    Box(Modifier.fillMaxSize()) { inspector.Overlay(showEntry = !keyboardVisible) }
                }
            }
        }
        root.addView(overlay, ViewGroup.LayoutParams(-1, -1))
        mounted[activity] = Unit
        if (settingsParent != null) {
            val entry = ComposeView(activity).apply {
                id = R.id.inspector_settings_host
                setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
                setContent {
                    HostSettingsTheme {
                        Column(Modifier.verticalScroll(rememberScrollState())) { SettingsContent(compact = true) }
                    }
                }
            }
            val params = if (settingsParent is android.widget.LinearLayout)
                android.widget.LinearLayout.LayoutParams(-1, 0, 1f) else ViewGroup.LayoutParams(-1, -2)
            settingsParent.addView(entry, params)
        }
    }

    fun openSettings(context: Context) { context.startActivity(Intent(context, InspectorSettingsActivity::class.java)) }

    @Composable internal fun SettingsContent(compact: Boolean = false) {
        val state by privacy.state.collectAsState()
        Column(Modifier.fillMaxWidth().padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            inspector.SettingsEntry()
            Row(Modifier.fillMaxWidth().heightIn(min = 48.dp)
                .toggleable(state.enabled, enabled = state.ready && !state.saving, role = Role.Switch,
                    onValueChange = privacy::setEnabled), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                Column(Modifier.weight(1f)) {
                    Text(stringResource(R.string.inspector_privacy), style = MaterialTheme.typography.titleMedium)
                    Text(stringResource(R.string.inspector_privacy_description), style = MaterialTheme.typography.bodySmall)
                }
                Switch(state.enabled, onCheckedChange = null, enabled = state.ready && !state.saving)
            }
            if (state.saveFailed) {
                Text(stringResource(R.string.inspector_privacy_failure), color = MaterialTheme.colorScheme.error)
                if (!state.ready) TextButton(onClick = privacy::retryRead) { Text(stringResource(R.string.inspector_retry)) }
            }
            if (!compact) Text(stringResource(R.string.inspector_scope), style = MaterialTheme.typography.bodyMedium)
        }
    }

    companion object {
        internal var current: InspectorHost? = null
            private set
    }
}

/** Follow the recovered setting Activity's day/night configuration and AppCompat accent. */
@Composable private fun HostSettingsTheme(content: @Composable () -> Unit) {
    val context = LocalContext.current
    val accent = remember(context) {
        val values = context.obtainStyledAttributes(intArrayOf(androidx.appcompat.R.attr.colorAccent))
        try { Color(values.getColor(0, android.graphics.Color.WHITE)) } finally { values.recycle() }
    }
    MaterialTheme(colorScheme = if (isSystemInDarkTheme()) darkColorScheme(primary = accent) else lightColorScheme(primary = accent)) {
        Surface(color = Color.Transparent, contentColor = MaterialTheme.colorScheme.onSurface, content = content)
    }
}

class InspectorSettingsActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val host = checkNotNull(InspectorHost.current) { "Initialize diagnostics in Application.onCreate" }
        setContent {
            InspectorTheme {
                Surface(Modifier.fillMaxSize()) {
                    Column(Modifier.safeDrawingPadding().verticalScroll(rememberScrollState())) {
                        TextButton(onClick = { finish() }) { Text(stringResource(R.string.inspector_back)) }
                        host.SettingsContent()
                    }
                }
            }
        }
        host.attach(this, null)
    }
}
