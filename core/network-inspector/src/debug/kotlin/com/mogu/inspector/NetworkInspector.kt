package com.mogu.inspector

import android.content.Context
import android.content.Intent
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import com.chuckerteam.chucker.api.Chucker
import com.chuckerteam.chucker.api.ChuckerCollector
import com.chuckerteam.chucker.api.ChuckerInterceptor
import com.chuckerteam.chucker.api.RetentionManager
import kotlinx.coroutines.flow.MutableStateFlow
import okhttp3.Interceptor

/** One app-owned instance. UI is hosted by Compose and never overlays another application. */
class NetworkInspector(context: Context,
    private val settings: com.mogu.inspector.privacy.DesensitizationSettings? = null,
    private val captureRequest: (String, String) -> Boolean = { _, _ -> true },
    private val decodeResponse: (String, String) -> Boolean = { _, _ -> false }) {
    private val application = context.applicationContext
    private val preferences = application.getSharedPreferences("network_inspector", Context.MODE_PRIVATE)
    private val enabled = MutableStateFlow(preferences.getBoolean("enabled", false))
    private val store = NetworkLogStore(recording = preferences.getBoolean("recording", true))
    private val chucker = ChuckerInterceptor.Builder(application)
        .collector(ChuckerCollector(application, showNotification = false, retentionPeriod = RetentionManager.Period.ONE_HOUR))
        .maxContentLength(BODY_LIMIT)
        .redactHeaders(*PRIVATE_HEADERS)
        .createShortcut(false)
        .build()
    val interceptor: Interceptor? = Interceptor { chain ->
        if (!enabled.value || settings?.state?.value?.hidesContent == true ||
            !captureRequest(chain.request().method, chain.request().url.toString())) chain.proceed(chain.request())
        else InspectorInterceptor(store, chucker).intercept(chain)
    }

    init {
        ChuckerOutputGuard.bind(application, settings)
        ChuckerResponseFormatter.decodeResponse = decodeResponse
        val activities = java.util.WeakHashMap<android.app.Activity, Unit>()
        fun protect(activity: android.app.Activity) {
            if (!activity.javaClass.name.startsWith("com.chuckerteam.chucker.")) return
            if (activities.put(activity, Unit) == null) activity.window.decorView.viewTreeObserver.addOnPreDrawListener {
                // A restored window may reset decor visibility after lifecycle callbacks.
                if (settings?.state?.value?.hidesContent == true) {
                    activity.window.decorView.visibility = android.view.View.INVISIBLE
                    false
                } else true
            }
            if (settings?.state?.value?.hidesContent == true) {
                (activity as? androidx.appcompat.app.AppCompatActivity)?.let(ChuckerInteractions::hideSelection)
                activity.window.decorView.visibility = android.view.View.INVISIBLE
                activity.finish()
                android.widget.Toast.makeText(application, com.mogu.inspector.R.string.ui_hidden_diagnostics, android.widget.Toast.LENGTH_SHORT).show()
            }
        }
        (application as? android.app.Application)?.registerActivityLifecycleCallbacks(object : android.app.Application.ActivityLifecycleCallbacks {
            override fun onActivityCreated(activity: android.app.Activity, state: android.os.Bundle?) = protect(activity)
            override fun onActivityStarted(activity: android.app.Activity) = protect(activity)
            override fun onActivityResumed(activity: android.app.Activity) = protect(activity)
            override fun onActivityPaused(activity: android.app.Activity) = Unit
            override fun onActivityStopped(activity: android.app.Activity) = Unit
            override fun onActivitySaveInstanceState(activity: android.app.Activity, state: android.os.Bundle) = Unit
            override fun onActivityDestroyed(activity: android.app.Activity) { activities.remove(activity) }
        })
        settings?.observe { if (it.hidesContent) activities.keys.toList().forEach(::protect) }
    }

    internal fun setEnabled(value: Boolean) {
        enabled.value = value
        preferences.edit().putBoolean("enabled", value).apply()
    }

    @Composable
    fun SettingsEntry() {
        InspectorSetting(enabled.collectAsState().value, ::setEnabled)
    }

    @Composable
    fun Overlay(showEntry: Boolean = true) {
        if (!enabled.collectAsState().value) return
        if (settings?.state?.collectAsState()?.value?.hidesContent == true) {
            if (showEntry) InspectorTheme { FloatingEntry(InspectorState(recording = false),
                preferences.getBoolean("dock_right", true), preferences.getFloat("vertical_fraction", 0.35f),
                onPositionChanged = { right, fraction -> preferences.edit().putBoolean("dock_right", right).putFloat("vertical_fraction", fraction).apply() },
                onOpen = { android.widget.Toast.makeText(application, com.mogu.inspector.R.string.ui_hidden_diagnostics, android.widget.Toast.LENGTH_SHORT).show() },
                blocked = true) }
            return
        }
        InspectorOverlay(
            store = store,
            showEntry = showEntry,
            decodeResponse = decodeResponse,
            initialDockRight = preferences.getBoolean("dock_right", true),
            initialVerticalFraction = preferences.getFloat("vertical_fraction", 0.35f),
            onPositionChanged = { right, fraction ->
                preferences.edit().putBoolean("dock_right", right).putFloat("vertical_fraction", fraction).apply()
            },
            onRecordingChanged = { preferences.edit().putBoolean("recording", it).apply() },
            onOpenChucker = { if (enabled.value && settings?.state?.value?.hidesContent != true)
                application.startActivity(Chucker.getLaunchIntent(application).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)) },
        )
    }
}
