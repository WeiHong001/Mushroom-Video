package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemTypevideoBinding implements ViewBinding {
    public final ImageView ivAd;
    public final TextView ivLiveChange;
    public final LinearLayout llLiveChange;
    public final LinearLayout llMore;
    private final LinearLayout rootView;
    public final RecyclerView rvList;
    public final TextView tvMore;
    public final TextView tvMoreIc;
    public final TextView tvTypename;

    private ItemTypevideoBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, LinearLayout linearLayout2, LinearLayout linearLayout3, RecyclerView recyclerView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.ivAd = imageView;
        this.ivLiveChange = textView;
        this.llLiveChange = linearLayout2;
        this.llMore = linearLayout3;
        this.rvList = recyclerView;
        this.tvMore = textView2;
        this.tvMoreIc = textView3;
        this.tvTypename = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemTypevideoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemTypevideoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_typevideo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemTypevideoBinding bind(View view) {
        int i = R.id.ivAd;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAd);
        if (imageView != null) {
            i = R.id.iv_live_change;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.iv_live_change);
            if (textView != null) {
                i = R.id.ll_live_change;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_live_change);
                if (linearLayout != null) {
                    i = R.id.ll_more;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_more);
                    if (linearLayout2 != null) {
                        i = R.id.rv_list;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                        if (recyclerView != null) {
                            i = R.id.tv_more;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_more);
                            if (textView2 != null) {
                                i = R.id.tv_more_ic;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_more_ic);
                                if (textView3 != null) {
                                    i = R.id.tv_typename;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_typename);
                                    if (textView4 != null) {
                                        return new ItemTypevideoBinding((LinearLayout) view, imageView, textView, linearLayout, linearLayout2, recyclerView, textView2, textView3, textView4);
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
