package com.mogu.inspector.privacy

import kotlinx.coroutines.flow.first
import kotlinx.coroutines.test.runTest
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class DesensitizationPersistenceTest {
    @Test fun androidPreferencesSurviveNewOwnersAndDefaultOnWithoutTouchingBusinessStorage() = runTest {
        val context = RuntimeEnvironment.getApplication()
        val preferences = context.getSharedPreferences("display_settings", 0)
        preferences.edit().clear().commit()
        val history = context.getSharedPreferences("synthetic_business", 0)
        history.edit().putString("favorite", "synthetic-real-id").commit()
        val first = DesensitizationSettings(context, backgroundScope)
        assertTrue(first.state.value.hidesContent)
        first.state.first { it.ready }
        assertTrue(first.state.value.enabled)
        first.setEnabled(false)
        first.state.first { !it.saving }
        val reopened = DesensitizationSettings(context, backgroundScope)
        assertTrue(reopened.state.value.hidesContent)
        reopened.state.first { it.ready }
        assertFalse(reopened.state.value.enabled)
        reopened.setEnabled(true)
        reopened.state.first { !it.saving }
        assertTrue(preferences.getBoolean("desensitization", false))
        assertEquals("synthetic-real-id", history.getString("favorite", null))
    }
}
