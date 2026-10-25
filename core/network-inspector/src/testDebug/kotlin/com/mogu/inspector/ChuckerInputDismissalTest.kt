package com.mogu.inspector

import android.graphics.Rect
import android.os.SystemClock
import android.view.MotionEvent
import android.view.View
import android.widget.FrameLayout
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SearchView
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class ChuckerInputDismissalTest {
    private fun fixture(check: (AppCompatActivity, SearchView, Rect) -> Unit) {
        val controller = Robolectric.buildActivity(AppCompatActivity::class.java)
        val activity = controller.get()
        activity.setTheme(androidx.appcompat.R.style.Theme_AppCompat)
        controller.setup().visible().use {
            val root = FrameLayout(activity).apply { isFocusableInTouchMode = true }
            val search = SearchView(activity)
            root.addView(search, FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, 160))
            activity.setContentView(root)
            controller.visible().windowFocusChanged(true)
            activity.window.decorView.apply {
                measure(View.MeasureSpec.makeMeasureSpec(600, View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(1000, View.MeasureSpec.EXACTLY))
                layout(0, 0, 600, 1000)
            }
            installChuckerInputDismissal(activity)
            search.isIconified = false
            search.setQuery("synthetic query", false)
            search.requestFocus()
            org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle()
            val bounds = Rect().also { assertTrue(search.getGlobalVisibleRect(it)) }
            check(activity, search, bounds)
        }
    }

    private fun gesture(activity: AppCompatActivity, x: Float, y: Float,
        endY: Float = y, duration: Long = 40, cancel: Boolean = false) {
        val start = SystemClock.uptimeMillis()
        fun send(action: Int, at: Long, py: Float) {
            MotionEvent.obtain(start, at, action, x, py, 0).also {
                activity.window.callback.dispatchTouchEvent(it)
                it.recycle()
            }
        }
        send(MotionEvent.ACTION_DOWN, start, y)
        if (endY != y) send(MotionEvent.ACTION_MOVE, start + duration / 2, endY)
        send(if (cancel) MotionEvent.ACTION_CANCEL else MotionEvent.ACTION_UP, start + duration, endY)
    }

    @Test fun nativeSearchBackgroundTapRemovesFocusWithoutClearingQueryOrCollapsingSearch() = fixture { activity, search, bounds ->
        assertTrue(search.hasFocus())
        assertTrue(activity.window.decorView.findFocus() is android.widget.EditText)
        gesture(activity, 300f, bounds.bottom + 100f)
        assertFalse(search.hasFocus())
        assertFalse(search.isIconified)
        assertEquals("synthetic query", search.query.toString())
        search.requestFocus()
        assertTrue(search.hasFocus())
    }

    @Test fun editorTapDragLongPressAndCancellationPreserveNativeSearchFocus() = fixture { activity, search, bounds ->
        gesture(activity, bounds.centerX().toFloat(), bounds.centerY().toFloat())
        assertTrue(search.hasFocus())
        val y = bounds.bottom + 100f
        gesture(activity, 300f, y, endY = y + 100)
        assertTrue(search.hasFocus())
        gesture(activity, 300f, y, duration = 700)
        assertTrue(search.hasFocus())
        gesture(activity, 300f, y, cancel = true)
        assertTrue(search.hasFocus())
    }
}
