package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemShortvideolistBinding implements ViewBinding {
    public final CardView cardV;
    public final ImageView ivVideolist;
    public final RelativeLayout rlContent;
    private final RelativeLayout rootView;
    public final TextView tvViews;

    private ItemShortvideolistBinding(RelativeLayout relativeLayout, CardView cardView, ImageView imageView, RelativeLayout relativeLayout2, TextView textView) {
        this.rootView = relativeLayout;
        this.cardV = cardView;
        this.ivVideolist = imageView;
        this.rlContent = relativeLayout2;
        this.tvViews = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemShortvideolistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemShortvideolistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shortvideolist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemShortvideolistBinding bind(View view) {
        int i = R.id.card_v;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card_v);
        if (cardView != null) {
            i = R.id.iv_videolist;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_videolist);
            if (imageView != null) {
                i = R.id.rl_content;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_content);
                if (relativeLayout != null) {
                    i = R.id.tv_views;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_views);
                    if (textView != null) {
                        return new ItemShortvideolistBinding((RelativeLayout) view, cardView, imageView, relativeLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
