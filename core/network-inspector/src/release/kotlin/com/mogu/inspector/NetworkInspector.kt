package com.mogu.inspector

import android.content.Context
import androidx.compose.runtime.Composable
import okhttp3.Interceptor

/** Release has no collector, storage, resources, or overlay. */
class NetworkInspector(
    @Suppress("UNUSED_PARAMETER") context: Context,
    @Suppress("UNUSED_PARAMETER") settings: com.mogu.inspector.privacy.DesensitizationSettings? = null,
    @Suppress("UNUSED_PARAMETER") captureRequest: (String, String) -> Boolean = { _, _ -> true },
    @Suppress("UNUSED_PARAMETER") decodeResponse: (String, String) -> Boolean = { _, _ -> false },
) {
    val interceptor: Interceptor? = null

    @Composable
    fun SettingsEntry() = Unit

    @Composable
    fun Overlay(showEntry: Boolean = true) = Unit
}
