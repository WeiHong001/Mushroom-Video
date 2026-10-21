package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.mogu.tv.view.DetailsVideoView;

/* JADX INFO: loaded from: classes2.dex */
public final class ActVipdetailsBinding implements ViewBinding {
    public final ImageView ivImageAd;
    public final ImageView ivInvite;
    public final ImageView ivMainAd;
    public final TextView jumpAd;
    public final LinearLayout llDzlayout;
    public final LinearLayout llHead;
    public final LinearLayout llJifen;
    public final LinearLayout llJuqing;
    public final LinearLayout llRecommend;
    public final LinearLayout llYzLayout;
    private final LinearLayout rootView;
    public final TextView tvIntroduce;
    public final TextView tvJifen;
    public final TextView tvName;
    public final TextView tvTitle;
    public final TextView tvToget;
    public final DetailsVideoView videoView;

    private ActVipdetailsBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, DetailsVideoView detailsVideoView) {
        this.rootView = linearLayout;
        this.ivImageAd = imageView;
        this.ivInvite = imageView2;
        this.ivMainAd = imageView3;
        this.jumpAd = textView;
        this.llDzlayout = linearLayout2;
        this.llHead = linearLayout3;
        this.llJifen = linearLayout4;
        this.llJuqing = linearLayout5;
        this.llRecommend = linearLayout6;
        this.llYzLayout = linearLayout7;
        this.tvIntroduce = textView2;
        this.tvJifen = textView3;
        this.tvName = textView4;
        this.tvTitle = textView5;
        this.tvToget = textView6;
        this.videoView = detailsVideoView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActVipdetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActVipdetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_vipdetails, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActVipdetailsBinding bind(View view) {
        int i = R.id.iv_image_ad;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image_ad);
        if (imageView != null) {
            i = R.id.ivInvite;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivInvite);
            if (imageView2 != null) {
                i = R.id.iv_main_ad;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_ad);
                if (imageView3 != null) {
                    i = R.id.jump_ad;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.jump_ad);
                    if (textView != null) {
                        i = R.id.llDzlayout;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llDzlayout);
                        if (linearLayout != null) {
                            LinearLayout linearLayout2 = (LinearLayout) view;
                            i = R.id.llJifen;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llJifen);
                            if (linearLayout3 != null) {
                                i = R.id.llJuqing;
                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llJuqing);
                                if (linearLayout4 != null) {
                                    i = R.id.llRecommend;
                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llRecommend);
                                    if (linearLayout5 != null) {
                                        i = R.id.llYzLayout;
                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llYzLayout);
                                        if (linearLayout6 != null) {
                                            i = R.id.tvIntroduce;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvIntroduce);
                                            if (textView2 != null) {
                                                i = R.id.tvJifen;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvJifen);
                                                if (textView3 != null) {
                                                    i = R.id.tv_name;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                    if (textView4 != null) {
                                                        i = R.id.tvTitle;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                                                        if (textView5 != null) {
                                                            i = R.id.tv_toget;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toget);
                                                            if (textView6 != null) {
                                                                i = R.id.video_view;
                                                                DetailsVideoView detailsVideoView = (DetailsVideoView) ViewBindings.findChildViewById(view, R.id.video_view);
                                                                if (detailsVideoView != null) {
                                                                    return new ActVipdetailsBinding(linearLayout2, imageView, imageView2, imageView3, textView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView2, textView3, textView4, textView5, textView6, detailsVideoView);
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
