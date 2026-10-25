package com.mogu.inspector

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.toggleable
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.Role
import com.mogu.inspector.ui.HomeDimensions

@Composable
internal fun InspectorSetting(enabled: Boolean, onEnabledChange: (Boolean) -> Unit) {
    Row(Modifier.fillMaxWidth().heightIn(min = HomeDimensions.TouchTarget)
        .toggleable(enabled, role = Role.Switch, onValueChange = onEnabledChange)
        .padding(vertical = HomeDimensions.ControlPadding).testTag("inspector_setting"),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(HomeDimensions.ControlSpacing)) {
        Column(Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(HomeDimensions.ControlSpacing)) {
            Text(stringResource(R.string.inspector_setting_title), style = MaterialTheme.typography.titleMedium)
            Text(stringResource(R.string.inspector_setting_description),
                style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
        Switch(checked = enabled, onCheckedChange = null)
    }
}
