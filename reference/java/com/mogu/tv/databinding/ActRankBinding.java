package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class ActRankBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    public final LinearLayout magicIndicator;
    public final RefreshLayout refreshLayout;
    private final LinearLayout rootView;
    public final RecyclerView rvList;
    public final TextView tvMenu0;
    public final TextView tvMenu1;
    public final TextView tvMenu2;
    public final TextView tvMenu3;

    private ActRankBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, LinearLayout linearLayout3, RefreshLayout refreshLayout, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.magicIndicator = linearLayout3;
        this.refreshLayout = refreshLayout;
        this.rvList = recyclerView;
        this.tvMenu0 = textView;
        this.tvMenu1 = textView2;
        this.tvMenu2 = textView3;
        this.tvMenu3 = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActRankBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActRankBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_rank, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActRankBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            LinearLayout linearLayout = (LinearLayout) view;
            i = R.id.magicIndicator;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.magicIndicator);
            if (linearLayout2 != null) {
                i = R.id.refresh_layout;
                RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                if (refreshLayout != null) {
                    i = R.id.rv_list;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                    if (recyclerView != null) {
                        i = R.id.tvMenu0;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvMenu0);
                        if (textView != null) {
                            i = R.id.tvMenu1;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMenu1);
                            if (textView2 != null) {
                                i = R.id.tvMenu2;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMenu2);
                                if (textView3 != null) {
                                    i = R.id.tvMenu3;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMenu3);
                                    if (textView4 != null) {
                                        return new ActRankBinding(linearLayout, headerLayoutBindingBind, linearLayout, linearLayout2, refreshLayout, recyclerView, textView, textView2, textView3, textView4);
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
