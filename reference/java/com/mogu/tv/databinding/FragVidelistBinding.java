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
public final class FragVidelistBinding implements ViewBinding {
    public final ImageView ivReturnTop;
    public final RelativeLayout llHead;
    public final RefreshLayout refreshLayout;
    private final RelativeLayout rootView;
    public final RecyclerView rvList;

    private FragVidelistBinding(RelativeLayout relativeLayout, ImageView imageView, RelativeLayout relativeLayout2, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = relativeLayout;
        this.ivReturnTop = imageView;
        this.llHead = relativeLayout2;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragVidelistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragVidelistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_videlist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragVidelistBinding bind(View view) {
        int i = R.id.iv_returnTop;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_returnTop);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i = R.id.refresh_layout;
            RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
            if (refreshLayout != null) {
                i = R.id.rv_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                if (recyclerView != null) {
                    return new FragVidelistBinding(relativeLayout, imageView, relativeLayout, refreshLayout, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
