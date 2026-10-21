package com.kotlin.basiclib;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import androidx.viewbinding.ViewBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewBindingHelper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\f\u0010\n\u001a\u00020\u000b*\u00020\fH\u0016R\u0010\u0010\u0005\u001a\u00028\u0000X\u0082.¢\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/kotlin/basiclib/ActivityBindingDelegate;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/kotlin/basiclib/ActivityBinding;", "()V", "_binding", "Landroidx/viewbinding/ViewBinding;", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "setContentViewWithBinding", "Landroid/view/View;", "Landroid/app/Activity;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ActivityBindingDelegate<VB extends ViewBinding> implements ActivityBinding<VB> {
    private VB _binding;

    @Override // com.kotlin.basiclib.ActivityBinding
    public VB getBinding() {
        VB vb = this._binding;
        if (vb != null) {
            return vb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("_binding");
        return null;
    }

    @Override // com.kotlin.basiclib.ActivityBinding
    public View setContentViewWithBinding(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        LayoutInflater layoutInflater = activity.getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "layoutInflater");
        VB vb = (VB) ViewBindingUtil.inflateWithGeneric(activity, layoutInflater);
        this._binding = vb;
        VB vb2 = null;
        if (vb == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_binding");
            vb = null;
        }
        activity.setContentView(vb.getRoot());
        VB vb3 = this._binding;
        if (vb3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_binding");
        } else {
            vb2 = vb3;
        }
        View root = vb2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "_binding.root");
        return root;
    }
}
