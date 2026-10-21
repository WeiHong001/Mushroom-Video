package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentListindexBinding implements ViewBinding {
    public final Banner banner;
    public final RefreshLayout refreshLayout;
    private final LinearLayout rootView;
    public final RecyclerView rvList;

    private FragmentListindexBinding(LinearLayout linearLayout, Banner banner, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.banner = banner;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentListindexBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentListindexBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_listindex, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentListindexBinding bind(View view) {
        int i = R.id.banner;
        Banner banner = (Banner) ViewBindings.findChildViewById(view, R.id.banner);
        if (banner != null) {
            i = R.id.refresh_layout;
            RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
            if (refreshLayout != null) {
                i = R.id.rv_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                if (recyclerView != null) {
                    return new FragmentListindexBinding((LinearLayout) view, banner, refreshLayout, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
