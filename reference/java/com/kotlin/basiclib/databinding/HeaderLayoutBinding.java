package com.kotlin.basiclib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kotlin.basiclib.R;

/* JADX INFO: loaded from: classes2.dex */
public final class HeaderLayoutBinding implements ViewBinding {
    public final ImageView ivBack;
    public final ImageView ivRight;
    public final RelativeLayout rlHead;
    private final RelativeLayout rootView;
    public final Toolbar toolbar;
    public final TextView tvHeaderTitle;
    public final TextView tvRightTitle;

    private HeaderLayoutBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, Toolbar toolbar, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.ivBack = imageView;
        this.ivRight = imageView2;
        this.rlHead = relativeLayout2;
        this.toolbar = toolbar;
        this.tvHeaderTitle = textView;
        this.tvRightTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static HeaderLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HeaderLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.header_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HeaderLayoutBinding bind(View view) {
        int i = R.id.iv_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.iv_right;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i = R.id.toolbar;
                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i);
                if (toolbar != null) {
                    i = R.id.tv_header_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R.id.tv_right_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            return new HeaderLayoutBinding(relativeLayout, imageView, imageView2, relativeLayout, toolbar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
