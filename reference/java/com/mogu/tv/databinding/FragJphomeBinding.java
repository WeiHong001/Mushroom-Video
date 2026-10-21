package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragJphomeBinding implements ViewBinding {
    public final ImageView ivGetQ;
    public final ImageView ivProduct;
    public final RefreshLayout refreshLayout;
    private final LinearLayout rootView;
    public final RecyclerView rvList;

    private FragJphomeBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.ivGetQ = imageView;
        this.ivProduct = imageView2;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragJphomeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragJphomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_jphome, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragJphomeBinding bind(View view) {
        int i = R.id.ivGetQ;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivGetQ);
        if (imageView != null) {
            i = R.id.ivProduct;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivProduct);
            if (imageView2 != null) {
                i = R.id.refreshLayout;
                RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
                if (refreshLayout != null) {
                    i = R.id.rvList;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvList);
                    if (recyclerView != null) {
                        return new FragJphomeBinding((LinearLayout) view, imageView, imageView2, refreshLayout, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
