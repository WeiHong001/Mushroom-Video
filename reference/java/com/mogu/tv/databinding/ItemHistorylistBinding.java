package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemHistorylistBinding implements ViewBinding {
    public final CardView cardV;
    public final ImageView ivDelete;
    public final AppCompatImageView ivDetails;
    private final FrameLayout rootView;
    public final TextView tvActor;
    public final TextView tvName;
    public final TextView tvTime;

    private ItemHistorylistBinding(FrameLayout frameLayout, CardView cardView, ImageView imageView, AppCompatImageView appCompatImageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.cardV = cardView;
        this.ivDelete = imageView;
        this.ivDetails = appCompatImageView;
        this.tvActor = textView;
        this.tvName = textView2;
        this.tvTime = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemHistorylistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemHistorylistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_historylist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemHistorylistBinding bind(View view) {
        int i = R.id.card_v;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card_v);
        if (cardView != null) {
            i = R.id.iv_delete;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_delete);
            if (imageView != null) {
                i = R.id.iv_details;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.iv_details);
                if (appCompatImageView != null) {
                    i = R.id.tv_actor;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_actor);
                    if (textView != null) {
                        i = R.id.tv_name;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                        if (textView2 != null) {
                            i = R.id.tv_time;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                            if (textView3 != null) {
                                return new ItemHistorylistBinding((FrameLayout) view, cardView, imageView, appCompatImageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
