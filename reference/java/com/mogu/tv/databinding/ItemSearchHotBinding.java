package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemSearchHotBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final TextView tvItemHistory;
    public final TextView tvRank;

    private ItemSearchHotBinding(RelativeLayout relativeLayout, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.tvItemHistory = textView;
        this.tvRank = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemSearchHotBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSearchHotBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_search_hot, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemSearchHotBinding bind(View view) {
        int i = R.id.tv_item_history;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item_history);
        if (textView != null) {
            i = R.id.tv_rank;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_rank);
            if (textView2 != null) {
                return new ItemSearchHotBinding((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
