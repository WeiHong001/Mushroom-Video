package com.mogu.inspector.ui

import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.Stable
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.focus.focusProperties
import androidx.compose.ui.focus.focusTarget
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.changedToUp
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalSoftwareKeyboardController

/** The page and its Back handlers share the same non-editable focus parking target. */
@Stable
class TextInputDismissalState internal constructor() {
    internal val idleFocus = FocusRequester()
    internal var parkingFocus by mutableStateOf(false)
    internal var heldIdleFocus = false
    internal var request by mutableIntStateOf(0)
    fun dismiss() { parkingFocus = true; request++ }
}

@Composable
fun rememberTextInputDismissalState(): TextInputDismissalState = remember { TextInputDismissalState() }

/**
 * Attach to the entire input page/panel, including its empty, short and failed content.
 * Observes only unhandled short taps after children; never consumes a tap or drag.
 * [onDismiss] replaces default focus/keyboard handling for editors with restoration sessions.
 */
@Composable
fun Modifier.dismissTextInputOnBackgroundTap(onDismiss: (() -> Unit)? = null,
    state: TextInputDismissalState = rememberTextInputDismissalState()): Modifier {
    val keyboard = LocalSoftwareKeyboardController.current
    val dismiss = rememberUpdatedState(onDismiss ?: {
        // Clearing owner focus can make Android refocus the first text field immediately.
        // Keep focus in this window on a layout-only, non-editable target instead.
        state.dismiss()
        keyboard?.hide()
    })
    val target = if (onDismiss == null) textInputDismissalFocusTarget(state) else this
    return target.pointerInput(Unit) {
        awaitEachGesture {
            val down = awaitFirstDown(pass = PointerEventPass.Final)
            var tap = true
            var released = false
            do {
                val event = awaitPointerEvent(PointerEventPass.Final)
                val change = event.changes.firstOrNull { it.id == down.id }
                if (change == null) {
                    tap = false
                } else {
                    tap = tap && event.changes.size == 1 && !change.isConsumed &&
                        (change.position - down.position).getDistance() <= viewConfiguration.touchSlop &&
                        change.uptimeMillis - down.uptimeMillis < viewConfiguration.longPressTimeoutMillis &&
                        change.position.x >= 0 && change.position.x <= size.width &&
                        change.position.y >= 0 && change.position.y <= size.height
                    released = change.changedToUp()
                }
            } while (event.changes.any { it.pressed })
            if (tap && released) dismiss.value()
        }
    }
}

/** Reuse the same focus parking without installing a second background-tap observer. */
@Composable
internal fun Modifier.textInputDismissalFocusTarget(state: TextInputDismissalState): Modifier {
    val keyboard = LocalSoftwareKeyboardController.current
    LaunchedEffect(state.parkingFocus, state.request) {
        if (state.parkingFocus) { keyboard?.hide(); state.idleFocus.requestFocus() }
    }
    // Keep this layout target out of default/keyboard focus traversal until a blank tap.
    return focusProperties { canFocus = state.parkingFocus }
        .focusRequester(state.idleFocus).onFocusChanged {
            if (it.isFocused) state.heldIdleFocus = true
            else if (state.heldIdleFocus) { state.heldIdleFocus = false; state.parkingFocus = false }
        }.focusTarget()
}
