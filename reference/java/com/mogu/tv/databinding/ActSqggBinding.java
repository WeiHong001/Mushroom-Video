package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActSqggBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    private final LinearLayout rootView;
    public final WebView webView;

    private ActSqggBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, WebView webView) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.webView = webView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActSqggBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActSqggBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_sqgg, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActSqggBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            LinearLayout linearLayout = (LinearLayout) view;
            WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.webView);
            if (webView != null) {
                return new ActSqggBinding(linearLayout, headerLayoutBindingBind, linearLayout, webView);
            }
            i = R.id.webView;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
