package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutQqgetBinding implements ViewBinding {
    public final TextView content;
    public final ImageView ivGoShare;
    public final ImageView ivUnlock;
    private final RelativeLayout rootView;

    private LayoutQqgetBinding(RelativeLayout relativeLayout, TextView textView, ImageView imageView, ImageView imageView2) {
        this.rootView = relativeLayout;
        this.content = textView;
        this.ivGoShare = imageView;
        this.ivUnlock = imageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static LayoutQqgetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutQqgetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_qqget, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutQqgetBinding bind(View view) {
        int i = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i = R.id.ivGoShare;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivGoShare);
            if (imageView != null) {
                i = R.id.ivUnlock;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivUnlock);
                if (imageView2 != null) {
                    return new LayoutQqgetBinding((RelativeLayout) view, textView, imageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
