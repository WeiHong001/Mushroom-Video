package com.kotlin.basiclib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kotlin.basiclib.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutRefreshFooterBinding implements ViewBinding {
    public final ProgressBar progress;
    public final TextView refreshStatus;
    private final FrameLayout rootView;

    private LayoutRefreshFooterBinding(FrameLayout frameLayout, ProgressBar progressBar, TextView textView) {
        this.rootView = frameLayout;
        this.progress = progressBar;
        this.refreshStatus = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutRefreshFooterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutRefreshFooterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_refresh_footer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutRefreshFooterBinding bind(View view) {
        int i = R.id.progress;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = R.id.refresh_status;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new LayoutRefreshFooterBinding((FrameLayout) view, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
