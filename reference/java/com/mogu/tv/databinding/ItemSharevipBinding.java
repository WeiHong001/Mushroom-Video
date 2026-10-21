package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.makeramen.roundedimageview.RoundedImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemSharevipBinding implements ViewBinding {
    public final FrameLayout flRoot;
    public final RoundedImageView ivItem;
    public final ImageView ivQrCode;
    private final RelativeLayout rootView;
    public final TextView tvAddressTitle;
    public final TextView tvHint;
    public final TextView tvSaveLink;
    public final TextView tvSavePhoto;
    public final TextView tvShareAddress;
    public final TextView tvTitle;

    private ItemSharevipBinding(RelativeLayout relativeLayout, FrameLayout frameLayout, RoundedImageView roundedImageView, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = relativeLayout;
        this.flRoot = frameLayout;
        this.ivItem = roundedImageView;
        this.ivQrCode = imageView;
        this.tvAddressTitle = textView;
        this.tvHint = textView2;
        this.tvSaveLink = textView3;
        this.tvSavePhoto = textView4;
        this.tvShareAddress = textView5;
        this.tvTitle = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemSharevipBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSharevipBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sharevip, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemSharevipBinding bind(View view) {
        int i = R.id.flRoot;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flRoot);
        if (frameLayout != null) {
            i = R.id.ivItem;
            RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.ivItem);
            if (roundedImageView != null) {
                i = R.id.ivQrCode;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivQrCode);
                if (imageView != null) {
                    i = R.id.tvAddressTitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvAddressTitle);
                    if (textView != null) {
                        i = R.id.tvHint;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvHint);
                        if (textView2 != null) {
                            i = R.id.tvSaveLink;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvSaveLink);
                            if (textView3 != null) {
                                i = R.id.tvSavePhoto;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvSavePhoto);
                                if (textView4 != null) {
                                    i = R.id.tvShareAddress;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvShareAddress);
                                    if (textView5 != null) {
                                        i = R.id.tvTitle;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                                        if (textView6 != null) {
                                            return new ItemSharevipBinding((RelativeLayout) view, frameLayout, roundedImageView, imageView, textView, textView2, textView3, textView4, textView5, textView6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
