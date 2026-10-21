package com.kotlin.basiclib;

import android.app.Activity;
import android.view.View;
import androidx.viewbinding.ViewBinding;
import kotlin.Metadata;

/* JADX INFO: compiled from: ViewBindingHelper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003J\f\u0010\u0007\u001a\u00020\b*\u00020\tH&R\u0012\u0010\u0004\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/kotlin/basiclib/ActivityBinding;", "VB", "Landroidx/viewbinding/ViewBinding;", "", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "setContentViewWithBinding", "Landroid/view/View;", "Landroid/app/Activity;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ActivityBinding<VB extends ViewBinding> {
    VB getBinding();

    View setContentViewWithBinding(Activity activity);
}
