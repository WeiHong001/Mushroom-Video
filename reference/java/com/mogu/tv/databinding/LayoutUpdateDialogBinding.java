package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutUpdateDialogBinding implements ViewBinding {
    public final TextView iKnow;
    public final ImageView loginBackground;
    public final ProgressBar progressBar;
    private final LinearLayout rootView;
    public final TextView tvDismiss;
    public final TextView tvMsg;
    public final TextView version;

    private LayoutUpdateDialogBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, ProgressBar progressBar, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.iKnow = textView;
        this.loginBackground = imageView;
        this.progressBar = progressBar;
        this.tvDismiss = textView2;
        this.tvMsg = textView3;
        this.version = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutUpdateDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutUpdateDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_update_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutUpdateDialogBinding bind(View view) {
        int i = R.id.iKnow;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.iKnow);
        if (textView != null) {
            i = R.id.loginBackground;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.loginBackground);
            if (imageView != null) {
                i = R.id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                if (progressBar != null) {
                    i = R.id.tv_dismiss;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_dismiss);
                    if (textView2 != null) {
                        i = R.id.tv_msg;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_msg);
                        if (textView3 != null) {
                            i = R.id.version;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.version);
                            if (textView4 != null) {
                                return new LayoutUpdateDialogBinding((LinearLayout) view, textView, imageView, progressBar, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
