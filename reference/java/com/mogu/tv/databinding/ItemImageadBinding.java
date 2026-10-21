package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemImageadBinding implements ViewBinding {
    public final ImageView ivMainAd;
    private final RelativeLayout rootView;

    private ItemImageadBinding(RelativeLayout relativeLayout, ImageView imageView) {
        this.rootView = relativeLayout;
        this.ivMainAd = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemImageadBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemImageadBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_imagead, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemImageadBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_ad);
        if (imageView != null) {
            return new ItemImageadBinding((RelativeLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_main_ad)));
    }
}
