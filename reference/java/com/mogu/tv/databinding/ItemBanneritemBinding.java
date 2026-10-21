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
public final class ItemBanneritemBinding implements ViewBinding {
    public final ImageView ivPhoto;
    private final RelativeLayout rootView;

    private ItemBanneritemBinding(RelativeLayout relativeLayout, ImageView imageView) {
        this.rootView = relativeLayout;
        this.ivPhoto = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemBanneritemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemBanneritemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_banneritem, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemBanneritemBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
        if (imageView != null) {
            return new ItemBanneritemBinding((RelativeLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_photo)));
    }
}
