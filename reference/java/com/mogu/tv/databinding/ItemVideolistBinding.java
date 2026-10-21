package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemVideolistBinding implements ViewBinding {
    public final CardView cardV;
    public final ImageView ivVideolist;
    public final LinearLayout llBottom;
    public final RelativeLayout rlBottom;
    public final RelativeLayout rlContent;
    private final RelativeLayout rootView;
    public final TextView tvActor;
    public final TextView tvCreateTime;
    public final TextView tvName;
    public final TextView tvViews;

    private ItemVideolistBinding(RelativeLayout relativeLayout, CardView cardView, ImageView imageView, LinearLayout linearLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.cardV = cardView;
        this.ivVideolist = imageView;
        this.llBottom = linearLayout;
        this.rlBottom = relativeLayout2;
        this.rlContent = relativeLayout3;
        this.tvActor = textView;
        this.tvCreateTime = textView2;
        this.tvName = textView3;
        this.tvViews = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemVideolistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemVideolistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_videolist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemVideolistBinding bind(View view) {
        int i = R.id.card_v;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.card_v);
        if (cardView != null) {
            i = R.id.iv_videolist;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_videolist);
            if (imageView != null) {
                i = R.id.llBottom;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llBottom);
                if (linearLayout != null) {
                    i = R.id.rlBottom;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlBottom);
                    if (relativeLayout != null) {
                        i = R.id.rl_content;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_content);
                        if (relativeLayout2 != null) {
                            i = R.id.tv_actor;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_actor);
                            if (textView != null) {
                                i = R.id.tv_createTime;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_createTime);
                                if (textView2 != null) {
                                    i = R.id.tv_name;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                    if (textView3 != null) {
                                        i = R.id.tv_views;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_views);
                                        if (textView4 != null) {
                                            return new ItemVideolistBinding((RelativeLayout) view, cardView, imageView, linearLayout, relativeLayout, relativeLayout2, textView, textView2, textView3, textView4);
                                        }
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
