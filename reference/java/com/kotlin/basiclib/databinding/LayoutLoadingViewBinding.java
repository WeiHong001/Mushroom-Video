package com.kotlin.basiclib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kotlin.basiclib.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutLoadingViewBinding implements ViewBinding {
    public final LinearLayout cnineLoadingBg;
    public final ProgressBar process;
    private final LinearLayout rootView;
    public final TextView txt;

    private LayoutLoadingViewBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ProgressBar progressBar, TextView textView) {
        this.rootView = linearLayout;
        this.cnineLoadingBg = linearLayout2;
        this.process = progressBar;
        this.txt = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutLoadingViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLoadingViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_loading_view, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutLoadingViewBinding bind(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = R.id.process;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = R.id.txt;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new LayoutLoadingViewBinding(linearLayout, linearLayout, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
