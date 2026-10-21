package com.kotlin.basiclib;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.chad.library.adapter.base.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewBindingHelper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"getBinding", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/chad/library/adapter/base/BaseViewHolder;", "bind", "Lkotlin/Function1;", "Landroid/view/View;", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lkotlin/jvm/functions/Function1;)Landroidx/viewbinding/ViewBinding;", "basiclib_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class ViewBindingHelperKt {
    public static final <VB extends ViewBinding> VB getBinding(BaseViewHolder baseViewHolder, Function1<? super View, ? extends VB> bind) {
        Intrinsics.checkNotNullParameter(baseViewHolder, "<this>");
        Intrinsics.checkNotNullParameter(bind, "bind");
        Object tag = baseViewHolder.itemView.getTag(R.id.tag_view_binding);
        VB vb = tag instanceof ViewBinding ? (VB) tag : null;
        if (vb != null) {
            return vb;
        }
        View itemView = baseViewHolder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        VB vbInvoke = bind.invoke(itemView);
        baseViewHolder.itemView.setTag(R.id.tag_view_binding, vbInvoke);
        return vbInvoke;
    }
}
