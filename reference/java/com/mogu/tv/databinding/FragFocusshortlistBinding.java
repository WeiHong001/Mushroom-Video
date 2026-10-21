package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragFocusshortlistBinding implements ViewBinding {
    public final ImageView ivLogin;
    public final ImageView ivReturnTop;
    public final RelativeLayout llHead;
    public final LinearLayout llLogin;
    public final RefreshLayout refreshLayout;
    private final RelativeLayout rootView;
    public final RecyclerView rvList;

    private FragFocusshortlistBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, LinearLayout linearLayout, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = relativeLayout;
        this.ivLogin = imageView;
        this.ivReturnTop = imageView2;
        this.llHead = relativeLayout2;
        this.llLogin = linearLayout;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragFocusshortlistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragFocusshortlistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_focusshortlist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragFocusshortlistBinding bind(View view) {
        int i = R.id.ivLogin;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivLogin);
        if (imageView != null) {
            i = R.id.iv_returnTop;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_returnTop);
            if (imageView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i = R.id.llLogin;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llLogin);
                if (linearLayout != null) {
                    i = R.id.refresh_layout;
                    RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                    if (refreshLayout != null) {
                        i = R.id.rv_list;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                        if (recyclerView != null) {
                            return new FragFocusshortlistBinding(relativeLayout, imageView, imageView2, relativeLayout, linearLayout, refreshLayout, recyclerView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
