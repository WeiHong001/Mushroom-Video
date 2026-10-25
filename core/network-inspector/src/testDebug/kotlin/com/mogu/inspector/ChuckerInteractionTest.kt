package com.mogu.inspector

import android.content.ClipboardManager
import android.content.Context
import android.text.Selection
import android.text.Spannable
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.style.ForegroundColorSpan
import android.view.ActionMode
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.widget.FrameLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.view.menu.MenuBuilder
import androidx.recyclerview.widget.RecyclerView
import com.chuckerteam.chucker.internal.support.SpanTextUtil.ChuckerForegroundColorSpan
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.RobolectricTestRunner

/** Verify the transformed 4.1 AAR's actual body/adapter and Activity hooks using synthetic text. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34])
class ChuckerInteractionTest {
    private val adapterType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionBodyAdapter")
    private val lineType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadItem\$BodyLineItem")
    private val fragmentType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadFragment")

    @Test fun continuousBodyPreservesNewlinesUnicodeAndFormattingSpans() {
        val source = SpannableStringBuilder("{\n  \"field\": \"合成 😀\",\n  \"last\": 123\n}")
        val color = ChuckerForegroundColorSpan(android.graphics.Color.GREEN)
        source.setSpan(color, 5, 10, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        val fragment = fragmentType.getDeclaredConstructor().newInstance()
        val method = fragmentType.getDeclaredMethod("lines", CharSequence::class.java).apply { isAccessible = true }
        val chunks = method.invoke(fragment, source) as List<*>
        assertEquals(1, chunks.size)
        assertSame(source, chunks.single())
        assertEquals(source.toString(), chunks.single().toString())
        assertTrue((chunks.single() as Spanned).getSpans(0, source.length, ForegroundColorSpan::class.java).contains(color))
    }

    @Test fun bodyAndHeadersSupportExactPartialAndCrossLineNativeCopy() {
        val context = RuntimeEnvironment.getApplication()
        val body = "first: synthetic\nsecond: 合成 😀\nthird: last"
        val adapter = adapterType.constructors.single().newInstance({ Unit }) as RecyclerView.Adapter<RecyclerView.ViewHolder>
        val line = lineType.getConstructor(SpannableStringBuilder::class.java).newInstance(SpannableStringBuilder(body))
        val headerType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadItem\$HeaderItem")
        val header = headerType.getConstructor(Spanned::class.java).newInstance(SpannableStringBuilder("X-Synthetic: value\nContent-Type: application/json"))
        adapterType.getMethod("setItems", List::class.java).invoke(adapter, listOf(header, line))
        val parent = FrameLayout(context)
        for (position in 0..1) {
            val holder = adapter.createViewHolder(parent, adapter.getItemViewType(position))
            adapter.bindViewHolder(holder, position)
            val text = holder.itemView as TextView
            assertTrue(text.isTextSelectable)
            val expected = if (position == 0) "Synthetic: value" else "synthetic\nsecond: 合成 😀"
            val start = text.text.indexOf(expected)
            assertTrue(start >= 0)
            Selection.setSelection(text.text as Spannable, start, start + expected.length)
            assertTrue(text.onTextContextMenuItem(android.R.id.copy))
            val clipboard = context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
            assertEquals(expected, clipboard.primaryClip!!.getItemAt(0).text.toString())
        }
    }

    @Test fun overviewUrlSupportsSelectingAQueryValueWithoutTheOtherParameters() {
        val context = android.view.ContextThemeWrapper(RuntimeEnvironment.getApplication(), com.chuckerteam.chucker.R.style.Chucker_Theme)
        val type = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionOverviewFragment")
        val fragment = type.getDeclaredConstructor().newInstance()
        val root = type.getMethod("onCreateView", android.view.LayoutInflater::class.java,
            android.view.ViewGroup::class.java, android.os.Bundle::class.java)
            .invoke(fragment, android.view.LayoutInflater.from(context), null, null) as View
        val url = root.findViewById<TextView>(com.chuckerteam.chucker.R.id.url)
        url.text = "https://synthetic.example.test/path?field=selected-value&other=unselected"
        assertTrue(url.isTextSelectable)
        val start = url.text.indexOf("selected-value")
        Selection.setSelection(url.text as Spannable, start, start + "selected-value".length)
        assertTrue(url.onTextContextMenuItem(android.R.id.copy))
        val clipboard = context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        assertEquals("selected-value", clipboard.primaryClip!!.getItemAt(0).text.toString())
    }

    @Test fun searchTracksEachOffsetInActualBodyItemAfterHeadersAndCopy() {
        val context = RuntimeEnvironment.getApplication()
        val text = SpannableStringBuilder("needle one\n\n${"long synthetic line\n".repeat(100)}needle two\nneedle three")
        val syntax = ChuckerForegroundColorSpan(android.graphics.Color.GREEN)
        text.setSpan(syntax, 0, 6, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        val body = lineType.getConstructor(SpannableStringBuilder::class.java).newInstance(text)
        val headerType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadItem\$HeaderItem")
        val copyType = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionPayloadItem\$CopyItem")
        val header = headerType.getConstructor(Spanned::class.java).newInstance(SpannableStringBuilder("X-Synthetic: test"))
        val copy = copyType.getConstructor(String::class.java).newInstance("Copy all")
        val adapter = adapterType.constructors.single().newInstance({ Unit }) as RecyclerView.Adapter<RecyclerView.ViewHolder>
        adapterType.getMethod("setItems", List::class.java).invoke(adapter, listOf(header, copy, body))
        val matches = adapterType.methods.single { it.name.startsWith("highlightQueryWithColors") }
            .invoke(adapter, "needle", android.graphics.Color.YELLOW, android.graphics.Color.BLACK) as List<*>
        assertEquals(3, matches.size)
        val expectedOffsets = listOf(0, text.indexOf("needle two"), text.indexOf("needle three"))
        matches.forEachIndexed { index, match ->
            assertEquals(2, match!!.javaClass.getMethod("getIndexBodyLine").invoke(match))
            assertEquals(expectedOffsets[index], match.javaClass.getMethod("getIndexStartOfQuerySubString").invoke(match))
        }
        val holder = adapter.createViewHolder(FrameLayout(context), adapter.getItemViewType(2))
        adapter.bindViewHolder(holder, 2)
        assertTrue((holder.itemView as TextView).isTextSelectable)
        adapterType.methods.single { it.name.startsWith("highlightItemWithColorOnPosition") }
            .invoke(adapter, 2, expectedOffsets[1], "needle", android.graphics.Color.GREEN, android.graphics.Color.BLACK)
        adapterType.methods.single { it.name.startsWith("resetHighlight") }.invoke(adapter)
        val reset = lineType.getMethod("getLine").invoke(body) as Spanned
        assertEquals(text.toString(), reset.toString())
        assertTrue(reset.getSpans(0, reset.length, ForegroundColorSpan::class.java).contains(syntax))
        assertTrue(reset.getSpans(0, reset.length, android.text.style.UnderlineSpan::class.java).isEmpty())
    }

    @Test fun selectionBackConsumesOneEventBeforeHostActivityFinishes() {
        val controller = Robolectric.buildActivity(AppCompatActivity::class.java)
        val activity = controller.get()
        activity.setTheme(androidx.appcompat.R.style.Theme_AppCompat)
        controller.setup().use {
            val text = TextView(activity).apply { this.text = "synthetic selectable text" }
            activity.setContentView(text)
            ChuckerInteractions.install(activity)
            ChuckerInteractions.makeSelectable(text)
            val mode = TestActionMode(MenuBuilder(activity))
            text.customSelectionActionModeCallback!!.onCreateActionMode(mode, mode.menu)
            activity.onBackPressedDispatcher.onBackPressed()
            assertTrue(mode.finished)
            assertFalse(activity.isFinishing)
            activity.onBackPressedDispatcher.onBackPressed()
            assertTrue(activity.isFinishing)
        }
    }

    @Test fun oneToolbarBackCollapsesANonemptySearchWithoutAnExtraClearQueryBack() {
        val controller = Robolectric.buildActivity(AppCompatActivity::class.java)
        val activity = controller.get()
        activity.setTheme(androidx.appcompat.R.style.Theme_AppCompat)
        controller.setup().use {
            val search = androidx.appcompat.widget.SearchView(activity)
            activity.setContentView(search)
            search.isIconified = false
            search.setQuery("synthetic query", false)
            assertFalse(search.isIconified)
            ChuckerInteractions.navigateBack(activity)
            assertTrue(search.isIconified)
            assertEquals("", search.query.toString())
            assertFalse(activity.isFinishing)
            ChuckerInteractions.navigateBack(activity)
            assertTrue(activity.isFinishing)
        }
    }

    @Test fun directlyOpenedNativeDetailToolbarBackAddsListInsteadOfLeavingInspector() {
        @Suppress("UNCHECKED_CAST")
        val type = Class.forName("com.chuckerteam.chucker.internal.ui.transaction.TransactionActivity") as Class<AppCompatActivity>
        val controller = Robolectric.buildActivity(type)
        val activity = controller.get()
        activity.setTheme(com.chuckerteam.chucker.R.style.Chucker_Theme)
        controller.setup().use {
            val menu = MenuBuilder(activity)
            assertTrue(activity.onOptionsItemSelected(menu.add(0, android.R.id.home, 0, "Back")))
            assertTrue(activity.isFinishing)
            assertEquals("com.chuckerteam.chucker.internal.ui.MainActivity", shadowOf(activity).nextStartedActivity.component!!.className)
        }
    }

    private class TestActionMode(private val testMenu: Menu) : ActionMode() {
        var finished = false
        override fun finish() { finished = true }
        override fun invalidate() {}
        override fun getMenu() = testMenu
        override fun getMenuInflater(): android.view.MenuInflater? = null
        override fun getTitle(): CharSequence = ""
        override fun getSubtitle(): CharSequence = ""
        override fun getCustomView(): View? = null
        override fun setTitle(title: CharSequence?) {}
        override fun setTitle(resId: Int) {}
        override fun setSubtitle(subtitle: CharSequence?) {}
        override fun setSubtitle(resId: Int) {}
        override fun setCustomView(view: View?) {}
    }
}
