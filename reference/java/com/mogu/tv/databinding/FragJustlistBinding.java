package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.view.RefreshSlideLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragJustlistBinding implements ViewBinding {
    public final RefreshSlideLayout llHead;
    public final RefreshLayout refreshLayout;
    private final RefreshSlideLayout rootView;
    public final RecyclerView rvList;

    private FragJustlistBinding(RefreshSlideLayout refreshSlideLayout, RefreshSlideLayout refreshSlideLayout2, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = refreshSlideLayout;
        this.llHead = refreshSlideLayout2;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RefreshSlideLayout getRoot() {
        return this.rootView;
    }

    public static FragJustlistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragJustlistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_justlist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragJustlistBinding bind(View view) {
        RefreshSlideLayout refreshSlideLayout = (RefreshSlideLayout) view;
        int i = R.id.refresh_layout;
        RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
        if (refreshLayout != null) {
            i = R.id.rv_list;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
            if (recyclerView != null) {
                return new FragJustlistBinding(refreshSlideLayout, refreshSlideLayout, refreshLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
