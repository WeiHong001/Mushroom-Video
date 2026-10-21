package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class StateEmptyLayoutBinding implements ViewBinding {
    public final ContentLoadingProgressBar contentLoading;
    public final LinearLayout emptyLayout;
    public final TextView emptyText;
    public final ImageView ivEmpty;
    private final FrameLayout rootView;

    private StateEmptyLayoutBinding(FrameLayout frameLayout, ContentLoadingProgressBar contentLoadingProgressBar, LinearLayout linearLayout, TextView textView, ImageView imageView) {
        this.rootView = frameLayout;
        this.contentLoading = contentLoadingProgressBar;
        this.emptyLayout = linearLayout;
        this.emptyText = textView;
        this.ivEmpty = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static StateEmptyLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static StateEmptyLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.state_empty_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static StateEmptyLayoutBinding bind(View view) {
        int i = R.id.content_loading;
        ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) ViewBindings.findChildViewById(view, R.id.content_loading);
        if (contentLoadingProgressBar != null) {
            i = R.id.empty_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.empty_layout);
            if (linearLayout != null) {
                i = R.id.empty_text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.empty_text);
                if (textView != null) {
                    i = R.id.iv_empty;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_empty);
                    if (imageView != null) {
                        return new StateEmptyLayoutBinding((FrameLayout) view, contentLoadingProgressBar, linearLayout, textView, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
