package com.kotlin.basiclib;

import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewBindingHelper.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00018\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/kotlin/basiclib/FragmentBindingDelegate;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/kotlin/basiclib/FragmentBinding;", "()V", "_binding", "Landroidx/viewbinding/ViewBinding;", "binding", "getBinding", "()Landroidx/viewbinding/ViewBinding;", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler$delegate", "Lkotlin/Lazy;", "createViewWithBinding", "Landroid/view/View;", "Landroidx/fragment/app/Fragment;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FragmentBindingDelegate<VB extends ViewBinding> implements FragmentBinding<VB> {
    private VB _binding;

    /* JADX INFO: renamed from: handler$delegate, reason: from kotlin metadata */
    private final Lazy handler = LazyKt.lazy(new Function0<Handler>() { // from class: com.kotlin.basiclib.FragmentBindingDelegate$handler$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Handler invoke() {
            return new Handler(Looper.getMainLooper());
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler getHandler() {
        return (Handler) this.handler.getValue();
    }

    @Override // com.kotlin.basiclib.FragmentBinding
    public VB getBinding() {
        return this._binding;
    }

    @Override // com.kotlin.basiclib.FragmentBinding
    public View createViewWithBinding(Fragment fragment, LayoutInflater inflater, ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        if (this._binding == null) {
            this._binding = (VB) ViewBindingUtil.inflateWithGeneric(fragment, inflater, viewGroup, false);
            fragment.getViewLifecycleOwner().getLifecycle().addObserver(new AnonymousClass1(this));
        }
        VB vb = this._binding;
        Intrinsics.checkNotNull(vb);
        View root = vb.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "_binding!!.root");
        return root;
    }

    /* JADX INFO: renamed from: com.kotlin.basiclib.FragmentBindingDelegate$createViewWithBinding$1, reason: invalid class name */
    /* JADX INFO: compiled from: ViewBindingHelper.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/kotlin/basiclib/FragmentBindingDelegate$createViewWithBinding$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onDestroy", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class AnonymousClass1 implements DefaultLifecycleObserver {
        final /* synthetic */ FragmentBindingDelegate<VB> this$0;

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onCreate(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onPause(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onResume(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onStart(this, lifecycleOwner);
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
            DefaultLifecycleObserver.CC.$default$onStop(this, lifecycleOwner);
        }

        AnonymousClass1(FragmentBindingDelegate<VB> fragmentBindingDelegate) {
            this.this$0 = fragmentBindingDelegate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onDestroy$lambda-0, reason: not valid java name */
        public static final void m149onDestroy$lambda0(FragmentBindingDelegate this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0._binding = null;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
        public void onDestroy(LifecycleOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            Handler handler = this.this$0.getHandler();
            final FragmentBindingDelegate<VB> fragmentBindingDelegate = this.this$0;
            handler.post(new Runnable() { // from class: com.kotlin.basiclib.FragmentBindingDelegate$createViewWithBinding$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentBindingDelegate.AnonymousClass1.m149onDestroy$lambda0(fragmentBindingDelegate);
                }
            });
        }
    }
}
