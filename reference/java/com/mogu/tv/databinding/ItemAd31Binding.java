package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemAd31Binding implements ViewBinding {
    public final ImageView ivAd;
    private final FrameLayout rootView;

    private ItemAd31Binding(FrameLayout frameLayout, ImageView imageView) {
        this.rootView = frameLayout;
        this.ivAd = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemAd31Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemAd31Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_ad_31, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemAd31Binding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAd);
        if (imageView != null) {
            return new ItemAd31Binding((FrameLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.ivAd)));
    }
}
