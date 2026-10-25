package com.mogu.inspector.privacy

import android.content.Context
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Pending/error reads and a missing saved preference hide content by default. */
data class DesensitizationState(
    val ready: Boolean = false,
    val enabled: Boolean = true,
    val saveFailed: Boolean = false,
    val saving: Boolean = false,
    val generation: Long = 0,
) {
    val hidesContent: Boolean get() = !ready || enabled || saving
}

interface DesensitizationStorage {
    fun read(): Boolean
    fun write(enabled: Boolean): Boolean
}

/** Application-owned single observable state; listeners also run while UI is stopped. */
class DesensitizationSettings(private val storage: DesensitizationStorage, private val scope: CoroutineScope,
    private val storageDispatcher: kotlinx.coroutines.CoroutineDispatcher = Dispatchers.IO) {
    constructor(context: Context, scope: CoroutineScope) : this(object : DesensitizationStorage {
        private val preferences = context.applicationContext.getSharedPreferences("display_settings", Context.MODE_PRIVATE)
        override fun read() = preferences.getBoolean("desensitization", true)
        override fun write(enabled: Boolean) = preferences.edit().putBoolean("desensitization", enabled).commit()
    }, scope)

    private val mutableState = MutableStateFlow(DesensitizationState())
    val state = mutableState.asStateFlow()
    private val listeners = linkedSetOf<(DesensitizationState) -> Unit>()
    private val writes = Channel<DesensitizationState>(Channel.UNLIMITED)
    private var persisted = true

    init {
        scope.launch {
            readPreference()
            for (requested in writes) {
                val success = withContext(storageDispatcher) { runCatching { storage.write(requested.enabled) }.getOrDefault(false) }
                synchronized(this@DesensitizationSettings) {
                    if (success) persisted = requested.enabled
                    if (mutableState.value.generation == requested.generation && !success) {
                        // A failed enable must never reveal content as a side effect of persistence failure.
                        publish(requested.copy(enabled = true, saving = false,
                            saveFailed = true, generation = requested.generation + 1))
                    } else if (mutableState.value.generation == requested.generation) {
                        publish(requested.copy(saving = false))
                    }
                }
            }
        }
    }

    /** A failed read remains hidden; retrying cannot reveal anything before storage succeeds. */
    @Synchronized fun retryRead() {
        val current = state.value
        if (current.ready || !current.saveFailed) return
        publish(current.copy(saveFailed = false))
        scope.launch { readPreference() }
    }

    private suspend fun readPreference() {
        val initial = withContext(storageDispatcher) { runCatching { storage.read() } }
        synchronized(this@DesensitizationSettings) {
            persisted = initial.getOrDefault(true)
            publish(DesensitizationState(ready = initial.isSuccess, enabled = persisted,
                saveFailed = initial.isFailure, generation = state.value.generation + 1))
        }
    }

    @Synchronized fun setEnabled(enabled: Boolean) {
        val current = state.value
        if (!current.ready || current.enabled == enabled && !current.saveFailed) return
        val next = current.copy(enabled = enabled, saveFailed = false, saving = true, generation = current.generation + 1)
        publish(next) // Pause media and close unsafe exports synchronously before returning.
        writes.trySend(next)
    }

    @Synchronized fun observe(listener: (DesensitizationState) -> Unit): AutoCloseable {
        listeners.add(listener)
        listener(state.value)
        return AutoCloseable { synchronized(this) { listeners.remove(listener) } }
    }

    /** A short synchronous content output is serialized with privacy switches. */
    @Synchronized fun <T> withState(action: (DesensitizationState) -> T): T = action(state.value)

    private fun publish(next: DesensitizationState) {
        mutableState.value = next
        listeners.toList().forEach { it(next) }
    }
}
