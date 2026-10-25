package com.mogu.inspector

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.saveable.rememberSaveableStateHolder
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.CustomAccessibilityAction
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.customActions
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.unit.IntOffset
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import kotlin.math.roundToInt

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun InspectorOverlay(
    store: NetworkLogStore,
    initialDockRight: Boolean = true,
    initialVerticalFraction: Float = 0.35f,
    onPositionChanged: (Boolean, Float) -> Unit = { _, _ -> },
    onRecordingChanged: (Boolean) -> Unit = {},
    onOpenChucker: () -> Unit = {},
    decodeResponse: (String, String) -> Boolean = { _, _ -> true },
    showEntry: Boolean = true,
) {
    val state by store.state.collectAsStateWithLifecycle()
    var open by rememberSaveable { mutableStateOf(false) }
    var dockRight by rememberSaveable { mutableStateOf(initialDockRight) }
    var verticalFraction by rememberSaveable { mutableFloatStateOf(initialVerticalFraction.coerceIn(0f, 1f)) }
    var selectedId by rememberSaveable { mutableStateOf<Long?>(null) }
    // Hold a selected record if it ages out while the user reads it.
    var selectedSnapshot by remember { mutableStateOf<NetworkLog?>(null) }
    val selected = state.logs.firstOrNull { it.id == selectedId } ?: selectedSnapshot?.takeIf { it.id == selectedId }
    val savedUi = rememberSaveableStateHolder()
    LaunchedEffect(selected) { if (selected != null) selectedSnapshot = selected }
    InspectorTheme {
        if (!open && showEntry) FloatingEntry(state, dockRight, verticalFraction, { right, fraction ->
            dockRight = right
            verticalFraction = fraction
            onPositionChanged(right, fraction)
        }, onOpen = { open = true })
        if (open) {
            val sheet = rememberModalBottomSheetState(skipPartiallyExpanded = true)
            ModalBottomSheet(
                onDismissRequest = { open = false },
                sheetState = sheet,
                sheetMaxWidth = InspectorDesign.maximumWidth,
                // The diagnostic panel has one stable height. Vertical drags belong to its
                // list/body/selection handles, never the sheet's nested-scroll drag anchor.
                sheetGesturesEnabled = false,
                dragHandle = null,
                containerColor = MaterialTheme.colorScheme.background,
                shape = InspectorDesign.panelShape,
                contentWindowInsets = { WindowInsets.safeDrawing },
                properties = ModalBottomSheetProperties(shouldDismissOnBackPress = false),
            ) {
                val backState = remember { InspectorBackState() }
                CompositionLocalProvider(LocalInspectorBackState provides backState) {
                    val back = inspectorBackAction {
                        if (selected != null) { selectedId = null; selectedSnapshot = null } else open = false
                    }
                    InspectorDialogBackHandler(back)
                    Box(Modifier.fillMaxWidth().fillMaxHeight(0.9f).imePadding().testTag("inspector_panel")) {
                        if (selected != null) {
                            savedUi.SaveableStateProvider("detail") {
                                RequestDetail(selected, onBack = { selectedId = null; selectedSnapshot = null }, onClose = { open = false },
                                    decodeResponse = decodeResponse(selected.method, selected.url))
                            }
                        } else {
                            savedUi.SaveableStateProvider("requests") {
                                RequestList(
                                    state, onSelect = { selectedId = it.id; selectedSnapshot = it },
                                    onClose = { open = false }, onClear = store::clear,
                                    onToggleRecording = {
                                        store.setRecording(!state.recording)
                                        onRecordingChanged(!state.recording)
                                    }, onOpenChucker = onOpenChucker,
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
internal fun FloatingEntry(
    state: InspectorState,
    right: Boolean,
    fraction: Float,
    onPositionChanged: (Boolean, Float) -> Unit,
    onOpen: () -> Unit,
    blocked: Boolean = false,
) {
    var dragX by remember { mutableFloatStateOf(0f) }
    var dragY by remember { mutableFloatStateOf(0f) }
    var dragging by remember { mutableStateOf(false) }
    val description = if (blocked) stringResource(com.mogu.inspector.R.string.ui_hidden_diagnostics)
        else stringResource(R.string.inspector_open, state.logs.size)
    val recording = stringResource(if (state.recording) R.string.inspector_recording else R.string.inspector_paused)
    val moveLeft = stringResource(R.string.inspector_move_left)
    val moveRight = stringResource(R.string.inspector_move_right)
    BoxWithConstraints(Modifier.fillMaxSize().windowInsetsPadding(WindowInsets.safeDrawing).imePadding().padding(InspectorDesign.small)) {
        val density = LocalDensity.current
        val maxX = with(density) { (maxWidth - InspectorDesign.badgeWidth).toPx().coerceAtLeast(0f) }
        val maxY = with(density) { (maxHeight - InspectorDesign.badgeHeight).toPx().coerceAtLeast(0f) }
        val dockX by animateFloatAsState(if (right) maxX else 0f, label = "inspector dock")
        Surface(
            modifier = Modifier.offset { IntOffset((if (dragging) dragX else dockX).roundToInt(), (if (dragging) dragY else maxY * fraction).roundToInt()) }
                .size(InspectorDesign.badgeWidth, InspectorDesign.badgeHeight)
                .testTag("inspector_bubble")
                .semantics {
                    contentDescription = description
                    stateDescription = recording
                    customActions = listOf(
                        CustomAccessibilityAction(moveLeft) { onPositionChanged(false, fraction); true },
                        CustomAccessibilityAction(moveRight) { onPositionChanged(true, fraction); true },
                    )
                }
                .pointerInput(maxX, maxY, right, fraction) {
                    detectDragGestures(
                        onDragStart = { dragging = true; dragX = if (right) maxX else 0f; dragY = fraction * maxY },
                        onDragEnd = {
                            dragging = false
                            onPositionChanged(dragX > maxX / 2, if (maxY > 0) dragY / maxY else 0f)
                        },
                        onDragCancel = { dragging = false },
                    ) { change, amount ->
                        change.consume()
                        dragX = (dragX + amount.x).coerceIn(0f, maxX)
                        dragY = (dragY + amount.y).coerceIn(0f, maxY)
                    }
                }.clickable(onClick = onOpen),
            shape = CircleShape, color = MaterialTheme.colorScheme.surface,
            border = BorderStroke(InspectorDesign.border, MaterialTheme.colorScheme.primary),
            shadowElevation = InspectorDesign.elevation,
        ) {
            Row(Modifier.padding(horizontal = InspectorDesign.small), verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(InspectorDesign.tiny, Alignment.CenterHorizontally)) {
                Icon(painterResource(R.drawable.inspector_network), null, Modifier.size(InspectorDesign.icon), MaterialTheme.colorScheme.primary)
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(if (blocked) stringResource(com.mogu.inspector.R.string.ui_hidden_value) else state.logs.size.toString(), style = MaterialTheme.typography.labelLarge)
                    Box(Modifier.size(InspectorDesign.dot).background(if (state.recording) MaterialTheme.colorScheme.secondary else MaterialTheme.colorScheme.outline, CircleShape))
                }
            }
        }
    }
}
