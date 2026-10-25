package com.mogu.inspector

import android.view.ActionMode
import android.view.View
import android.view.Window
import androidx.activity.OnBackPressedCallback
import androidx.activity.OnBackPressedDispatcherOwner
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.ime
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys
import androidx.compose.foundation.text.contextmenu.provider.LocalTextContextMenuToolbarProvider
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
import androidx.compose.foundation.text.selection.SelectionContainer
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.onFocusChanged
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.window.DialogWindowProvider

/** Selection is temporary UI state, never a navigation destination. */
@Stable
internal class InspectorBackState {
    private val selections = mutableStateMapOf<Any, Boolean>()
    fun selectionChanged(owner: Any, active: Boolean) { selections[owner] = active }
    fun forget(owner: Any) { selections.remove(owner) }
    var selectionMode: ActionMode? = null
    val selecting get() = selectionMode != null || selections.values.any { it }
    fun finishSelection() {
        val mode = selectionMode
        selectionMode = null
        mode?.finish()
        selections.clear()
    }
}

internal val LocalInspectorBackState = staticCompositionLocalOf { InspectorBackState() }

@Composable
internal fun InspectorSelection(modifier: Modifier = Modifier, content: @Composable () -> Unit) {
    val state = LocalInspectorBackState.current
    val owner = remember { Any() }
    val focus = LocalFocusManager.current
    val platformMenu = LocalTextContextMenuToolbarProvider.current
    val finishSelection = remember(state, owner, focus) {
        { focus.clearFocus(force = true); state.selectionChanged(owner, false) }
    }
    val menu = remember(platformMenu, finishSelection) {
        platformMenu?.let { delegate ->
            object : TextContextMenuProvider {
                override suspend fun showTextContextMenu(dataProvider: TextContextMenuDataProvider) {
                    // Focus may be restored to an empty SelectionContainer by Android; a menu
                    // with Copy is the public signal that an actual non-empty selection exists.
                    state.selectionChanged(owner, dataProvider.data().components.any { it.key == TextContextMenuKeys.CopyKey })
                    val data = object : TextContextMenuDataProvider by dataProvider {
                        override fun data() = TextContextMenuData(dataProvider.data().components.map { item ->
                            if (item is TextContextMenuItem && item.key == TextContextMenuKeys.CopyKey) {
                                TextContextMenuItem(item.key, item.label, item.leadingIcon) {
                                    item.onClick(this)
                                    finishSelection()
                                }
                            } else item
                        })
                    }
                    // Platform Back closes ActionMode normally. Handle dragging cancels its
                    // coroutine temporarily, so cancellation must keep the current selection.
                    delegate.showTextContextMenu(data)
                    finishSelection()
                }
            }
        }
    }
    DisposableEffect(state, owner) { onDispose { state.forget(owner) } }
    CompositionLocalProvider(LocalTextContextMenuToolbarProvider provides menu) {
        SelectionContainer(modifier
            .onFocusChanged { if (!it.hasFocus) state.selectionChanged(owner, false) }
            .pointerInput(finishSelection) {
                // A short tap clears Compose's selection without clearing its focus. Observe
                // that same tap without consuming any events or interfering with scrolling.
                awaitEachGesture {
                    val down = awaitFirstDown(requireUnconsumed = false, pass = PointerEventPass.Initial)
                    var moved = false
                    var elapsed = 0L
                    do {
                        val event = awaitPointerEvent(PointerEventPass.Final)
                        val change = event.changes.firstOrNull { it.id == down.id } ?: break
                        moved = moved || (change.position - down.position).getDistance() > viewConfiguration.touchSlop
                        elapsed = change.uptimeMillis - down.uptimeMillis
                    } while (event.changes.any { it.pressed })
                    if (!moved && elapsed < viewConfiguration.longPressTimeoutMillis) finishSelection()
                }
            }, content)
    }
}

/** Shared by toolbar navigation and the dialog's dispatcher. One invocation consumes one layer. */
@Composable
internal fun inspectorBackAction(onNavigate: () -> Unit): () -> Unit {
    val state = LocalInspectorBackState.current
    val focus = LocalFocusManager.current
    val keyboard = LocalSoftwareKeyboardController.current
    val density = LocalDensity.current
    val ime = WindowInsets.ime
    return {
        when {
            ime.getBottom(density) > 0 -> { keyboard?.hide(); focus.clearFocus(force = true) }
            state.selecting -> { state.finishSelection(); focus.clearFocus(force = true) }
            else -> onNavigate()
        }
    }
}

/** ModalBottomSheet owns a ComponentDialog, whose dispatcher is distinct from the Activity's. */
@Composable
internal fun InspectorDialogBackHandler(onBack: () -> Unit) {
    val view = LocalView.current
    val state = LocalInspectorBackState.current
    val latest by rememberUpdatedState(onBack)
    DisposableEffect(view, state) {
        val window = checkNotNull(generateSequence(view as View?) { it.parent as? View }
            .filterIsInstance<DialogWindowProvider>().firstOrNull()?.window)
        val original = window.callback
        val owner = checkNotNull(original as? OnBackPressedDispatcherOwner) {
            "The inspector must register Back on its modal window"
        }
        // Compose installs its default platform menu inside SelectionContainer. Track the
        // actual floating ActionMode at the dialog window when no parent provider exists.
        val trackedWindow = object : Window.Callback by original, OnBackPressedDispatcherOwner by owner {
            override fun onActionModeStarted(mode: ActionMode) {
                original.onActionModeStarted(mode)
                if (mode.type == ActionMode.TYPE_FLOATING) state.selectionMode = mode
            }
            override fun onActionModeFinished(mode: ActionMode) {
                if (state.selectionMode === mode) state.selectionMode = null
                original.onActionModeFinished(mode)
            }
        }
        window.callback = trackedWindow
        val callback = object : OnBackPressedCallback(true) {
            override fun handleOnBackPressed() { latest() }
        }
        owner.onBackPressedDispatcher.addCallback(callback)
        onDispose {
            callback.remove()
            state.selectionMode = null
            if (window.callback === trackedWindow) window.callback = original
        }
    }
}
