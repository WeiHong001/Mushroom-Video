package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutSearchBinding implements ViewBinding {
    public final ImageView ivSaoyisao;
    public final LinearLayout llTosearch;
    public final RelativeLayout rlTop;
    private final RelativeLayout rootView;
    public final TextView tvMianSearch1;

    private LayoutSearchBinding(RelativeLayout relativeLayout, ImageView imageView, LinearLayout linearLayout, RelativeLayout relativeLayout2, TextView textView) {
        this.rootView = relativeLayout;
        this.ivSaoyisao = imageView;
        this.llTosearch = linearLayout;
        this.rlTop = relativeLayout2;
        this.tvMianSearch1 = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSearchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutSearchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_search, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutSearchBinding bind(View view) {
        int i = R.id.iv_saoyisao;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_saoyisao);
        if (imageView != null) {
            i = R.id.ll_tosearch;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tosearch);
            if (linearLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i = R.id.tv_mian_search_1;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mian_search_1);
                if (textView != null) {
                    return new LayoutSearchBinding(relativeLayout, imageView, linearLayout, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
