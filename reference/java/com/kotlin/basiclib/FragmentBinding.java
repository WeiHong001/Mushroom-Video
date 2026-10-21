package com.kotlin.basiclib;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewbinding.ViewBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: ViewBindingHelper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\u001e\u0010\u0007\u001a\u00020\b*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&R\u0014\u0010\u0004\u001a\u0004\u0018\u00018\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/kotlin/basiclib/FragmentBinding;", "VB", "Landroidx/viewbinding/ViewBinding;", "", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "createViewWithBinding", "Landroid/view/View;", "Landroidx/fragment/app/Fragment;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface FragmentBinding<VB extends ViewBinding> {
    View createViewWithBinding(Fragment fragment, LayoutInflater layoutInflater, ViewGroup viewGroup);

    VB getBinding();
}
