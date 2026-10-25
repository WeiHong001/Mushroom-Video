package com.mogu.inspector

import android.content.ClipboardManager
import android.content.ClipData
import android.content.ContentResolver
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.widget.Toast
import com.mogu.inspector.privacy.DesensitizationSettings
import okio.Buffer
import okio.ForwardingSink
import okio.Sink
import okio.sink
import java.io.File
import java.io.FilterOutputStream
import java.io.IOException
import java.io.OutputStream

/** Debug-only sinks checked when used, including callbacks retained before a mode change. */
object ChuckerOutputGuard {
    @Volatile private var settings: DesensitizationSettings? = null
    private var application: Context? = null
    val blocked: Boolean get() = settings?.state?.value?.hidesContent == true

    internal fun bind(context: Context, settings: DesensitizationSettings?) {
        application = context.applicationContext
        this.settings = settings
    }

    private fun inform() {
        application?.let { context -> Handler(Looper.getMainLooper()).post {
            Toast.makeText(context, com.mogu.inspector.R.string.ui_hidden_diagnostics, Toast.LENGTH_LONG).show()
        } }
    }

    private fun requireVisible() {
        if (blocked) { inform(); throw IOException("Diagnostic output is hidden") }
    }

    // Serialize a bounded output chunk with setEnabled(), so a worker cannot write past a toggle.
    private fun <T> visibleOutput(action: () -> T): T = synchronized(settings ?: this) {
        requireVisible()
        action()
    }

    @JvmStatic fun copy(clipboard: ClipboardManager, clip: ClipData) {
        synchronized(settings ?: this) { if (blocked) inform() else clipboard.setPrimaryClip(clip) }
    }

    @JvmStatic fun launch(context: Context, intent: Intent) {
        synchronized(settings ?: this) { if (blocked) inform() else context.startActivity(intent) }
    }

    @JvmStatic fun fileSink(file: File, append: Boolean): Sink {
        val delegate = visibleOutput { file.sink(append) }
        return object : ForwardingSink(delegate) {
            override fun write(source: Buffer, byteCount: Long) {
                visibleOutput { super.write(source, byteCount) }
            }
        }
    }

    @JvmStatic fun fileSinkDefault(file: File, append: Boolean, mask: Int, @Suppress("UNUSED_PARAMETER") marker: Any?): Sink =
        fileSink(file, if (mask and 1 != 0) false else append)

    @JvmStatic fun outputStream(resolver: ContentResolver, uri: Uri): OutputStream? {
        val delegate = visibleOutput { resolver.openOutputStream(uri) } ?: return null
        return object : FilterOutputStream(delegate) {
            override fun write(value: Int) { visibleOutput { out.write(value) } }
            override fun write(bytes: ByteArray, offset: Int, count: Int) {
                visibleOutput { out.write(bytes, offset, count) }
            }
        }
    }
}
