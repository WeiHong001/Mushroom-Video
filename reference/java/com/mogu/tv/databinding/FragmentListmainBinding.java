package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentListmainBinding implements ViewBinding {
    public final Banner banner;
    public final FrameLayout flProgressView;
    public final CircularProgressIndicator ivLloading;
    public final ImageView ivNotice;
    public final RefreshLayout refreshLayout;
    private final LinearLayout rootView;
    public final RecyclerView rvMenu;
    public final RecyclerView rvRecommend;
    public final NestedScrollView scrollView;
    public final TextView tvSmv;

    private FragmentListmainBinding(LinearLayout linearLayout, Banner banner, FrameLayout frameLayout, CircularProgressIndicator circularProgressIndicator, ImageView imageView, RefreshLayout refreshLayout, RecyclerView recyclerView, RecyclerView recyclerView2, NestedScrollView nestedScrollView, TextView textView) {
        this.rootView = linearLayout;
        this.banner = banner;
        this.flProgressView = frameLayout;
        this.ivLloading = circularProgressIndicator;
        this.ivNotice = imageView;
        this.refreshLayout = refreshLayout;
        this.rvMenu = recyclerView;
        this.rvRecommend = recyclerView2;
        this.scrollView = nestedScrollView;
        this.tvSmv = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentListmainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentListmainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_listmain, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentListmainBinding bind(View view) {
        int i = R.id.banner;
        Banner banner = (Banner) ViewBindings.findChildViewById(view, R.id.banner);
        if (banner != null) {
            i = R.id.fl_progress_view;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_progress_view);
            if (frameLayout != null) {
                i = R.id.iv_lloading;
                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.iv_lloading);
                if (circularProgressIndicator != null) {
                    i = R.id.iv_notice;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_notice);
                    if (imageView != null) {
                        i = R.id.refresh_layout;
                        RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                        if (refreshLayout != null) {
                            i = R.id.rv_menu;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_menu);
                            if (recyclerView != null) {
                                i = R.id.rv_recommend;
                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_recommend);
                                if (recyclerView2 != null) {
                                    i = R.id.scroll_view;
                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                                    if (nestedScrollView != null) {
                                        i = R.id.tv_smv;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_smv);
                                        if (textView != null) {
                                            return new FragmentListmainBinding((LinearLayout) view, banner, frameLayout, circularProgressIndicator, imageView, refreshLayout, recyclerView, recyclerView2, nestedScrollView, textView);
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
