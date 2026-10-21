package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.google.android.flexbox.FlexboxLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragDetailsBinding implements ViewBinding {
    public final FlexboxLayout flexLayout;
    public final ImageView ivDetailsAd1;
    public final ImageView ivLike;
    public final ImageView ivMainAd;
    public final ImageView ivShare;
    public final ImageView ivSugguest;
    public final LinearLayout llLike;
    public final LinearLayout llResponse;
    public final LinearLayout llShare;
    private final RelativeLayout rootView;
    public final RecyclerView rvLikelists;
    public final RecyclerView rvUser;
    public final TextView tvCollect;
    public final TextView tvCreatetime;
    public final TextView tvLike;
    public final TextView tvName;
    public final TextView tvNumber;
    public final TextView tvViews;

    private FragDetailsBinding(RelativeLayout relativeLayout, FlexboxLayout flexboxLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = relativeLayout;
        this.flexLayout = flexboxLayout;
        this.ivDetailsAd1 = imageView;
        this.ivLike = imageView2;
        this.ivMainAd = imageView3;
        this.ivShare = imageView4;
        this.ivSugguest = imageView5;
        this.llLike = linearLayout;
        this.llResponse = linearLayout2;
        this.llShare = linearLayout3;
        this.rvLikelists = recyclerView;
        this.rvUser = recyclerView2;
        this.tvCollect = textView;
        this.tvCreatetime = textView2;
        this.tvLike = textView3;
        this.tvName = textView4;
        this.tvNumber = textView5;
        this.tvViews = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_details, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragDetailsBinding bind(View view) {
        int i = R.id.flex_layout;
        FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, R.id.flex_layout);
        if (flexboxLayout != null) {
            i = R.id.iv_details_ad_1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_details_ad_1);
            if (imageView != null) {
                i = R.id.iv_like;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_like);
                if (imageView2 != null) {
                    i = R.id.iv_main_ad;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_ad);
                    if (imageView3 != null) {
                        i = R.id.iv_share;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_share);
                        if (imageView4 != null) {
                            i = R.id.iv_sugguest;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_sugguest);
                            if (imageView5 != null) {
                                i = R.id.ll_like;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_like);
                                if (linearLayout != null) {
                                    i = R.id.llResponse;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llResponse);
                                    if (linearLayout2 != null) {
                                        i = R.id.llShare;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llShare);
                                        if (linearLayout3 != null) {
                                            i = R.id.rv_likelists;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_likelists);
                                            if (recyclerView != null) {
                                                i = R.id.rvUser;
                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvUser);
                                                if (recyclerView2 != null) {
                                                    i = R.id.tvCollect;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvCollect);
                                                    if (textView != null) {
                                                        i = R.id.tv_createtime;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_createtime);
                                                        if (textView2 != null) {
                                                            i = R.id.tvLike;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvLike);
                                                            if (textView3 != null) {
                                                                i = R.id.tv_name;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                                if (textView4 != null) {
                                                                    i = R.id.tv_number;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_number);
                                                                    if (textView5 != null) {
                                                                        i = R.id.tv_views;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_views);
                                                                        if (textView6 != null) {
                                                                            return new FragDetailsBinding((RelativeLayout) view, flexboxLayout, imageView, imageView2, imageView3, imageView4, imageView5, linearLayout, linearLayout2, linearLayout3, recyclerView, recyclerView2, textView, textView2, textView3, textView4, textView5, textView6);
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
