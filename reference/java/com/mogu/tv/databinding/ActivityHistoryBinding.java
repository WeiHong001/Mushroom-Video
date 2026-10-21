package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivityHistoryBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    public final RefreshLayout refreshLayout;
    private final LinearLayout rootView;
    public final RecyclerView rvList;

    private ActivityHistoryBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, RefreshLayout refreshLayout, RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityHistoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_history, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityHistoryBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            LinearLayout linearLayout = (LinearLayout) view;
            i = R.id.refresh_layout;
            RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
            if (refreshLayout != null) {
                i = R.id.rv_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                if (recyclerView != null) {
                    return new ActivityHistoryBinding(linearLayout, headerLayoutBindingBind, linearLayout, refreshLayout, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
