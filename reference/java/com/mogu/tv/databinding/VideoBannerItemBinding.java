package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoBannerItemBinding implements ViewBinding {
    public final ImageView ivBannerItem;
    private final CardView rootView;

    private VideoBannerItemBinding(CardView cardView, ImageView imageView) {
        this.rootView = cardView;
        this.ivBannerItem = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static VideoBannerItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VideoBannerItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.video_banner_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static VideoBannerItemBinding bind(View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner_item);
        if (imageView != null) {
            return new VideoBannerItemBinding((CardView) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_banner_item)));
    }
}
