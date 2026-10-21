package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.amogu6.tv.R;
import com.google.android.material.appbar.AppBarLayout;
import com.makeramen.roundedimageview.RoundedImageView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivityTopicBinding implements ViewBinding {
    public final AppBarLayout appBar;
    public final ImageView ivBack;
    public final ImageView ivBg;
    public final RoundedImageView ivUser;
    public final LinearLayout llHead;
    public final MagicIndicator magicIndicator;
    private final LinearLayout rootView;
    public final Toolbar toolbar;
    public final TextView tvFocus;
    public final TextView tvHeaderTitle;
    public final TextView tvIntroduce;
    public final TextView tvName;
    public final ViewPager viewPager;

    private ActivityTopicBinding(LinearLayout linearLayout, AppBarLayout appBarLayout, ImageView imageView, ImageView imageView2, RoundedImageView roundedImageView, LinearLayout linearLayout2, MagicIndicator magicIndicator, Toolbar toolbar, TextView textView, TextView textView2, TextView textView3, TextView textView4, ViewPager viewPager) {
        this.rootView = linearLayout;
        this.appBar = appBarLayout;
        this.ivBack = imageView;
        this.ivBg = imageView2;
        this.ivUser = roundedImageView;
        this.llHead = linearLayout2;
        this.magicIndicator = magicIndicator;
        this.toolbar = toolbar;
        this.tvFocus = textView;
        this.tvHeaderTitle = textView2;
        this.tvIntroduce = textView3;
        this.tvName = textView4;
        this.viewPager = viewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityTopicBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTopicBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_topic, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityTopicBinding bind(View view) {
        int i = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.app_bar);
        if (appBarLayout != null) {
            i = R.id.iv_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
            if (imageView != null) {
                i = R.id.iv_bg;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_bg);
                if (imageView2 != null) {
                    i = R.id.ivUser;
                    RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.ivUser);
                    if (roundedImageView != null) {
                        LinearLayout linearLayout = (LinearLayout) view;
                        i = R.id.magicIndicator;
                        MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
                        if (magicIndicator != null) {
                            i = R.id.toolbar;
                            Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (toolbar != null) {
                                i = R.id.tvFocus;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvFocus);
                                if (textView != null) {
                                    i = R.id.tv_header_title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header_title);
                                    if (textView2 != null) {
                                        i = R.id.tvIntroduce;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvIntroduce);
                                        if (textView3 != null) {
                                            i = R.id.tv_name;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                            if (textView4 != null) {
                                                i = R.id.view_pager;
                                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                if (viewPager != null) {
                                                    return new ActivityTopicBinding(linearLayout, appBarLayout, imageView, imageView2, roundedImageView, linearLayout, magicIndicator, toolbar, textView, textView2, textView3, textView4, viewPager);
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
