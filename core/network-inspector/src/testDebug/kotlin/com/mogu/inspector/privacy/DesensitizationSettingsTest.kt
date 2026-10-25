package com.mogu.inspector.privacy

import kotlinx.coroutines.test.*
import org.junit.Assert.*
import org.junit.Test

@OptIn(kotlinx.coroutines.ExperimentalCoroutinesApi::class)
class DesensitizationSettingsTest {
    private class MemoryStorage(var enabled: Boolean = true) : DesensitizationStorage {
        var fail = false
        val writes = mutableListOf<Boolean>()
        override fun read() = enabled
        override fun write(enabled: Boolean): Boolean {
            writes += enabled
            if (fail) return false
            this.enabled = enabled
            return true
        }
    }
    @Test fun pendingReadHidesAndSuccessfulMissingPreferenceDefaultsOn() = runTest {
        val settings = DesensitizationSettings(MemoryStorage(), backgroundScope, StandardTestDispatcher(testScheduler))
        assertTrue(settings.state.value.hidesContent)
        settings.setEnabled(false)
        runCurrent()
        assertTrue(settings.state.value.ready)
        assertTrue(settings.state.value.hidesContent)
    }
    @Test fun synchronousObserversRapidChangesAndColdOwnerUseTheLatestSavedChoice() = runTest {
        val storage = MemoryStorage(true)
        val dispatcher = StandardTestDispatcher(testScheduler)
        val settings = DesensitizationSettings(storage, backgroundScope, dispatcher)
        runCurrent()
        val observed = mutableListOf<Boolean>()
        val subscription = settings.observe { observed += it.hidesContent }
        settings.setEnabled(false)
        assertTrue(observed.last())
        settings.setEnabled(true)
        assertTrue(observed.last())
        settings.setEnabled(false)
        assertTrue(settings.state.value.hidesContent)
        runCurrent()
        assertEquals(listOf(false, true, false), storage.writes)
        assertFalse(settings.state.value.saving)
        val reopened = DesensitizationSettings(storage, backgroundScope, dispatcher)
        assertTrue(reopened.state.value.hidesContent)
        runCurrent()
        assertFalse(reopened.state.value.hidesContent)
        subscription.close()
    }
    @Test fun failedDisableReturnsToThePersistedSafeChoiceAndReportsFailure() = runTest {
        val storage = MemoryStorage(true).apply { fail = true }
        val settings = DesensitizationSettings(storage, backgroundScope, StandardTestDispatcher(testScheduler))
        runCurrent()
        settings.setEnabled(false)
        assertTrue(settings.state.value.hidesContent)
        runCurrent()
        assertTrue(settings.state.value.hidesContent)
        assertTrue(settings.state.value.saveFailed)
        assertFalse(settings.state.value.saving)
    }
    @Test fun failedEnableKeepsTheScreenHiddenEvenWhenTheSavedChoiceWasOff() = runTest {
        val storage = MemoryStorage(false).apply { fail = true }
        val settings = DesensitizationSettings(storage, backgroundScope, StandardTestDispatcher(testScheduler))
        runCurrent()
        settings.setEnabled(true)
        runCurrent()
        assertTrue(settings.state.value.hidesContent)
        assertTrue(settings.state.value.saveFailed)
        assertFalse(storage.enabled)
    }
    @Test fun unreadableStorageNeverRevealsContent() = runTest {
        val settings = DesensitizationSettings(object : DesensitizationStorage {
            override fun read(): Boolean = error("synthetic read failure")
            override fun write(enabled: Boolean) = false
        }, backgroundScope, StandardTestDispatcher(testScheduler))
        runCurrent()
        assertTrue(settings.state.value.hidesContent)
        assertTrue(settings.state.value.saveFailed)
    }
    @Test fun failedReadCanRetryWithoutRevealingBeforeTheSuccessfulRead() = runTest {
        var fail = true
        val settings = DesensitizationSettings(object : DesensitizationStorage {
            override fun read(): Boolean { check(!fail); return false }
            override fun write(enabled: Boolean) = true
        }, backgroundScope, StandardTestDispatcher(testScheduler))
        runCurrent()
        fail = false
        settings.retryRead()
        assertTrue(settings.state.value.hidesContent)
        assertFalse(settings.state.value.saveFailed)
        runCurrent()
        assertTrue(settings.state.value.ready)
        assertFalse(settings.state.value.hidesContent)
    }
}
