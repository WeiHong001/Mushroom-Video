package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragCommentBinding implements ViewBinding {
    public final RefreshLayout refreshLayout;
    public final RelativeLayout rlBottomComment;
    private final LinearLayout rootView;
    public final RecyclerView rvComment;
    public final TextView tvTomain;

    private FragCommentBinding(LinearLayout linearLayout, RefreshLayout refreshLayout, RelativeLayout relativeLayout, RecyclerView recyclerView, TextView textView) {
        this.rootView = linearLayout;
        this.refreshLayout = refreshLayout;
        this.rlBottomComment = relativeLayout;
        this.rvComment = recyclerView;
        this.tvTomain = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragCommentBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragCommentBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_comment, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragCommentBinding bind(View view) {
        int i = R.id.refresh_layout;
        RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
        if (refreshLayout != null) {
            i = R.id.rl_bottom_comment;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_bottom_comment);
            if (relativeLayout != null) {
                i = R.id.rv_comment;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_comment);
                if (recyclerView != null) {
                    i = R.id.tv_tomain;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tomain);
                    if (textView != null) {
                        return new FragCommentBinding((LinearLayout) view, refreshLayout, relativeLayout, recyclerView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
