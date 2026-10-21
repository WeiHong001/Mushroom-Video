package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.mogu.tv.view.DetailsVideoView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class ActDetailsBinding implements ViewBinding {
    public final ImageView ivImageAd;
    public final TextView jumpAd;
    public final LinearLayout llHead;
    public final MagicIndicator magicIndicator;
    private final LinearLayout rootView;
    public final TextView tvToget;
    public final DetailsVideoView videoView;
    public final ViewPager2 viewPager;

    private ActDetailsBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, LinearLayout linearLayout2, MagicIndicator magicIndicator, TextView textView2, DetailsVideoView detailsVideoView, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.ivImageAd = imageView;
        this.jumpAd = textView;
        this.llHead = linearLayout2;
        this.magicIndicator = magicIndicator;
        this.tvToget = textView2;
        this.videoView = detailsVideoView;
        this.viewPager = viewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_details, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActDetailsBinding bind(View view) {
        int i = R.id.iv_image_ad;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image_ad);
        if (imageView != null) {
            i = R.id.jump_ad;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.jump_ad);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.magicIndicator;
                MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
                if (magicIndicator != null) {
                    i = R.id.tv_toget;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toget);
                    if (textView2 != null) {
                        i = R.id.video_view;
                        DetailsVideoView detailsVideoView = (DetailsVideoView) ViewBindings.findChildViewById(view, R.id.video_view);
                        if (detailsVideoView != null) {
                            i = R.id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                            if (viewPager2 != null) {
                                return new ActDetailsBinding(linearLayout, imageView, textView, linearLayout, magicIndicator, textView2, detailsVideoView, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
