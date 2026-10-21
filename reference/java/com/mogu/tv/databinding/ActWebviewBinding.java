package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.kotlin.basiclib.widget.ProgressWebView;

/* JADX INFO: loaded from: classes2.dex */
public final class ActWebviewBinding implements ViewBinding {
    public final LinearLayout llContent;
    public final HeaderLayoutBinding llHead;
    private final LinearLayout rootView;
    public final ProgressWebView webview;

    private ActWebviewBinding(LinearLayout linearLayout, LinearLayout linearLayout2, HeaderLayoutBinding headerLayoutBinding, ProgressWebView progressWebView) {
        this.rootView = linearLayout;
        this.llContent = linearLayout2;
        this.llHead = headerLayoutBinding;
        this.webview = progressWebView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActWebviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActWebviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_webview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActWebviewBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R.id.ll_Head;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.ll_Head);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            ProgressWebView progressWebView = (ProgressWebView) ViewBindings.findChildViewById(view, R.id.webview);
            if (progressWebView != null) {
                return new ActWebviewBinding(linearLayout, linearLayout, headerLayoutBindingBind, progressWebView);
            }
            i = R.id.webview;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
