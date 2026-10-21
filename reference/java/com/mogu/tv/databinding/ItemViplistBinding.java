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
public final class ItemViplistBinding implements ViewBinding {
    public final ImageView ivItem;
    public final ImageView ivLock;
    public final ImageView ivShare;
    public final ImageView ivUnlock;
    public final LinearLayout llDzlayout;
    public final LinearLayout llJuqing;
    public final LinearLayout llRecommend;
    public final LinearLayout llYzLayout;
    private final RelativeLayout rootView;
    public final TextView tvIndex;
    public final TextView tvTitle;

    private ItemViplistBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.ivItem = imageView;
        this.ivLock = imageView2;
        this.ivShare = imageView3;
        this.ivUnlock = imageView4;
        this.llDzlayout = linearLayout;
        this.llJuqing = linearLayout2;
        this.llRecommend = linearLayout3;
        this.llYzLayout = linearLayout4;
        this.tvIndex = textView;
        this.tvTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemViplistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemViplistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_viplist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemViplistBinding bind(View view) {
        int i = R.id.ivItem;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivItem);
        if (imageView != null) {
            i = R.id.ivLock;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivLock);
            if (imageView2 != null) {
                i = R.id.ivShare;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivShare);
                if (imageView3 != null) {
                    i = R.id.ivUnlock;
                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivUnlock);
                    if (imageView4 != null) {
                        i = R.id.llDzlayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llDzlayout);
                        if (linearLayout != null) {
                            i = R.id.llJuqing;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llJuqing);
                            if (linearLayout2 != null) {
                                i = R.id.llRecommend;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llRecommend);
                                if (linearLayout3 != null) {
                                    i = R.id.llYzLayout;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llYzLayout);
                                    if (linearLayout4 != null) {
                                        i = R.id.tvIndex;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvIndex);
                                        if (textView != null) {
                                            i = R.id.tvTitle;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                                            if (textView2 != null) {
                                                return new ItemViplistBinding((RelativeLayout) view, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView, textView2);
                                            }
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
