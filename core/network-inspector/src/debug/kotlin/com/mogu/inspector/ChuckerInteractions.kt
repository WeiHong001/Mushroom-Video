@file:Suppress("INVISIBLE_MEMBER", "INVISIBLE_REFERENCE", "EXPOSED_PARAMETER_TYPE", "EXPOSED_FUNCTION_RETURN_TYPE")

package com.mogu.inspector

import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.os.Build
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.style.BackgroundColorSpan
import android.text.style.ForegroundColorSpan
import android.text.style.UnderlineSpan
import android.view.ActionMode
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.view.inputmethod.InputMethodManager
import android.widget.TextView
import androidx.activity.OnBackPressedCallback
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SearchView
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.doOnNextLayout
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
import androidx.recyclerview.widget.RecyclerView
import com.chuckerteam.chucker.internal.support.SpanTextUtil.ChuckerForegroundColorSpan
import com.chuckerteam.chucker.internal.ui.transaction.TransactionBodyAdapter.SearchItemBodyLine
import com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadItem
import java.util.WeakHashMap

/** JVM hooks for the version-checked Debug Chucker AAR; no collection or wire-body changes. */
object ChuckerInteractions {
    private const val LIST_ACTIVITY = "com.chuckerteam.chucker.internal.ui.MainActivity"
    private const val DETAIL_ACTIVITY = "com.chuckerteam.chucker.internal.ui.transaction.TransactionActivity"
    private val selections = WeakHashMap<AppCompatActivity, ActionMode>()
    private val lists = WeakHashMap<AppCompatActivity, Unit>()

    internal fun hideSelection(activity: AppCompatActivity) { selections.remove(activity)?.finish() }

    @JvmStatic
    fun install(activity: AppCompatActivity) {
        installChuckerInputDismissal(activity)
        if (activity.javaClass.name == LIST_ACTIVITY) lists[activity] = Unit
        activity.onBackPressedDispatcher.addCallback(activity, object : OnBackPressedCallback(true) {
            override fun handleOnBackPressed() { navigateBack(activity) }
        })
        activity.lifecycle.addObserver(object : DefaultLifecycleObserver {
            override fun onDestroy(owner: LifecycleOwner) {
                selections.remove(activity)
                lists.remove(activity)
            }
        })
    }

    /** Toolbar Up and the Activity dispatcher share exactly one navigation action. */
    @JvmStatic
    fun navigateBack(activity: AppCompatActivity) {
        val root = activity.window.decorView
        if (ViewCompat.getRootWindowInsets(root)?.isVisible(WindowInsetsCompat.Type.ime()) == true) {
            (activity.getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager)
                .hideSoftInputFromWindow(root.windowToken, 0)
            activity.currentFocus?.clearFocus()
            return
        }
        selections.remove(activity)?.let { it.finish(); return }
        val search = descendants(root).filterIsInstance<SearchView>().firstOrNull { !it.isIconified }
        if (search != null) {
            search.setQuery("", false)
            search.isIconified = true
            search.clearFocus()
            return
        }
        if (activity.javaClass.name == DETAIL_ACTIVITY && !hasListParent(activity)) {
            // A restored/directly launched detail must still offer the transaction list once.
            activity.startActivity(Intent().setClassName(activity, LIST_ACTIVITY)
                .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP))
        }
        activity.finish()
    }

    private fun hasListParent(activity: AppCompatActivity): Boolean {
        if (lists.keys.any { !it.isFinishing && !it.isDestroyed && it.taskId == activity.taskId }) return true
        val tasks = (activity.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager).appTasks
        return tasks.any {
            val task = it.taskInfo
            @Suppress("DEPRECATION")
            val taskId = if (Build.VERSION.SDK_INT >= 29) task.taskId else task.id
            taskId == activity.taskId && task.baseActivity?.className == LIST_ACTIVITY && task.numActivities > 1
        }
    }

    @JvmStatic
    fun makeSelectable(root: View) {
        val activity = root.context.activityOrNull() as? AppCompatActivity
        descendants(root).filterIsInstance<TextView>().forEach { text ->
            if (!text.isTextSelectable) {
                // TextView installs ArrowKeyMovementMethod: link taps cannot steal long press.
                text.setTextIsSelectable(true)
            }
            if (text.customSelectionActionModeCallback == null) {
                text.customSelectionActionModeCallback = object : ActionMode.Callback {
                    override fun onCreateActionMode(mode: ActionMode, menu: Menu): Boolean {
                        if (ChuckerOutputGuard.blocked) return false
                        if (activity != null) selections[activity] = mode
                        return true
                    }
                    override fun onPrepareActionMode(mode: ActionMode, menu: Menu) = false
                    override fun onActionItemClicked(mode: ActionMode, item: MenuItem) = ChuckerOutputGuard.blocked
                    override fun onDestroyActionMode(mode: ActionMode) {
                        if (activity != null && selections[activity] === mode) selections.remove(activity)
                    }
                }
            }
        }
    }

    private fun Context.activityOrNull(): android.app.Activity? = when (this) {
        is android.app.Activity -> this
        is android.content.ContextWrapper -> if (baseContext !== this) baseContext.activityOrNull() else null
        else -> null
    }

    private fun descendants(root: View): Sequence<View> = sequence {
        yield(root)
        if (root is ViewGroup) for (index in 0 until root.childCount) yieldAll(descendants(root.getChildAt(index)))
    }

    @JvmStatic
    fun highlight(adapter: RecyclerView.Adapter<*>, items: List<TransactionPayloadItem>, query: String,
                  background: Int, foreground: Int): List<SearchItemBodyLine> {
        val matches = mutableListOf<SearchItemBodyLine>()
        items.forEachIndexed { index, item ->
            if (item is TransactionPayloadItem.BodyLineItem) {
                clearSearchSpans(item.line)
                var offset = if (query.isEmpty()) -1 else item.line.indexOf(query, ignoreCase = true)
                while (offset >= 0) {
                    addHighlight(item.line, offset, offset + query.length, background, foreground)
                    matches += SearchItemBodyLine(index, offset)
                    offset = item.line.indexOf(query, offset + query.length, ignoreCase = true)
                }
                adapter.notifyItemChanged(index)
            }
        }
        return matches
    }

    @JvmStatic
    fun resetHighlight(adapter: RecyclerView.Adapter<*>, items: List<TransactionPayloadItem>) {
        items.forEachIndexed { index, item ->
            if (item is TransactionPayloadItem.BodyLineItem) {
                clearSearchSpans(item.line)
                adapter.notifyItemChanged(index)
            }
        }
    }

    private fun clearSearchSpans(text: SpannableStringBuilder) {
        text.getSpans(0, text.length, BackgroundColorSpan::class.java).forEach(text::removeSpan)
        text.getSpans(0, text.length, UnderlineSpan::class.java).forEach(text::removeSpan)
        text.getSpans(0, text.length, ForegroundColorSpan::class.java)
            .filterNot { it is ChuckerForegroundColorSpan }.forEach(text::removeSpan)
    }

    private fun addHighlight(text: SpannableStringBuilder, start: Int, end: Int, background: Int, foreground: Int) {
        text.setSpan(BackgroundColorSpan(background), start, end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        text.setSpan(ForegroundColorSpan(foreground), start, end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
    }

    /** One body item can contain many matches; reveal the exact matched paragraph after layout. */
    @JvmStatic
    fun revealMatch(recycler: RecyclerView, matches: List<SearchItemBodyLine>, matchIndex: Int) {
        val match = matches.getOrNull(matchIndex) ?: return
        recycler.doOnNextLayout {
            val holder = recycler.findViewHolderForAdapterPosition(match.indexBodyLine) ?: return@doOnNextLayout
            val text = descendants(holder.itemView).filterIsInstance<TextView>().firstOrNull() ?: return@doOnNextLayout
            val layout = text.layout ?: return@doOnNextLayout
            val offset = match.indexStartOfQuerySubString.coerceIn(0, text.text.length)
            val bounds = android.graphics.Rect(0, 0, text.width, text.height)
            recycler.offsetDescendantRectToMyCoords(text, bounds)
            val y = bounds.top + text.totalPaddingTop + layout.getLineTop(layout.getLineForOffset(offset))
            recycler.scrollBy(0, y - recycler.paddingTop)
        }
        recycler.scrollToPosition(match.indexBodyLine)
        recycler.requestLayout()
    }
}
