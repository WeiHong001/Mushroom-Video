package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragShequlistBinding implements ViewBinding {
    public final ImageView ivReturnTop;
    public final RefreshLayout refreshLayout;
    private final RelativeLayout rootView;
    public final RecyclerView rvList;

    private FragShequlistBinding(RelativeLayout relativeLayout, ImageView imageView, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = relativeLayout;
        this.ivReturnTop = imageView;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragShequlistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragShequlistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_shequlist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragShequlistBinding bind(View view) {
        int i = R.id.iv_returnTop;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_returnTop);
        if (imageView != null) {
            i = R.id.refreshLayout;
            RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
            if (refreshLayout != null) {
                i = R.id.rvList;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvList);
                if (recyclerView != null) {
                    return new FragShequlistBinding((RelativeLayout) view, imageView, refreshLayout, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
