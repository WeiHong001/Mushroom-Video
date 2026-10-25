package com.mogu.inspector

import android.content.Context
import android.graphics.Rect
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.view.ViewConfiguration
import android.view.Window
import android.view.inputmethod.InputMethodManager
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SearchView
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner

/** The existing third-party View search UI has its own window, outside Compose. */
internal fun installChuckerInputDismissal(activity: AppCompatActivity) {
    val window = activity.window
    val original = window.callback
    val configuration = ViewConfiguration.get(activity)
    val callback = object : Window.Callback by original {
        var input: EditText? = null
        var startX = 0f
        var startY = 0f
        var startTime = 0L
        var tap = false

        fun outsideInput(event: MotionEvent, editor: EditText): Boolean {
            // Include SearchView's clear/submit controls in the editing region.
            val region = generateSequence(editor as View) { it.parent as? View }
                .filterIsInstance<SearchView>().firstOrNull() ?: editor
            val bounds = Rect()
            return region.getGlobalVisibleRect(bounds) && !bounds.contains(event.rawX.toInt(), event.rawY.toInt())
        }

        override fun dispatchTouchEvent(event: MotionEvent): Boolean {
            when (event.actionMasked) {
                MotionEvent.ACTION_DOWN -> {
                    input = window.decorView.findFocus() as? EditText
                    startX = event.rawX
                    startY = event.rawY
                    startTime = event.eventTime
                    tap = input?.let { outsideInput(event, it) } == true
                }
                MotionEvent.ACTION_MOVE, MotionEvent.ACTION_UP -> {
                    val dx = event.rawX - startX
                    val dy = event.rawY - startY
                    tap = tap && dx * dx + dy * dy <= configuration.scaledTouchSlop.toFloat().let { it * it }
                }
                MotionEvent.ACTION_POINTER_DOWN, MotionEvent.ACTION_CANCEL -> tap = false
            }
            val handled = original.dispatchTouchEvent(event)
            if (event.actionMasked == MotionEvent.ACTION_UP) {
                val editor = input
                if (tap && editor != null && window.decorView.findFocus() === editor && outsideInput(event, editor) &&
                    event.eventTime - startTime < ViewConfiguration.getLongPressTimeout()) {
                    val search = generateSequence(editor as View) { it.parent as? View }
                        .filterIsInstance<SearchView>().firstOrNull()
                    if (search != null) search.clearFocus() else editor.clearFocus()
                    // Native focus search can also return to the first editor. Park it on
                    // this window's content root without changing descendant traversal.
                    if (editor.hasFocus()) {
                        val content = activity.findViewById<ViewGroup>(android.R.id.content)
                        val traversal = content.descendantFocusability
                        content.isFocusableInTouchMode = true
                        content.descendantFocusability = ViewGroup.FOCUS_BLOCK_DESCENDANTS
                        content.requestFocus()
                        content.descendantFocusability = traversal
                    }
                    (activity.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager)
                        .hideSoftInputFromWindow(editor.windowToken, 0)
                }
                input = null
                tap = false
            } else if (event.actionMasked == MotionEvent.ACTION_CANCEL) input = null
            return handled
        }
    }
    window.callback = callback
    activity.lifecycle.addObserver(object : DefaultLifecycleObserver {
        override fun onDestroy(owner: LifecycleOwner) {
            callback.input = null
            if (window.callback === callback) window.callback = original
        }
    })
}
