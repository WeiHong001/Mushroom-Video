package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragBqlistBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final ImageView ivReturnTop;
    public final RelativeLayout llHead;
    public final RefreshLayout refreshLayout;
    private final RelativeLayout rootView;
    public final RecyclerView rvList;
    public final TextView tvLabelsName;

    private FragBqlistBinding(RelativeLayout relativeLayout, HeaderLayoutBinding headerLayoutBinding, ImageView imageView, RelativeLayout relativeLayout2, RefreshLayout refreshLayout, RecyclerView recyclerView, TextView textView) {
        this.rootView = relativeLayout;
        this.headLayout = headerLayoutBinding;
        this.ivReturnTop = imageView;
        this.llHead = relativeLayout2;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
        this.tvLabelsName = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragBqlistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragBqlistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_bqlist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragBqlistBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.iv_returnTop;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_returnTop);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i = R.id.refresh_layout;
                RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                if (refreshLayout != null) {
                    i = R.id.rv_list;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                    if (recyclerView != null) {
                        i = R.id.tvLabelsName;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvLabelsName);
                        if (textView != null) {
                            return new FragBqlistBinding(relativeLayout, headerLayoutBindingBind, imageView, relativeLayout, refreshLayout, recyclerView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
