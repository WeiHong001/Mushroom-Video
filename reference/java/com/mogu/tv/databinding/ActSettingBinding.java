package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActSettingBinding implements ViewBinding {
    public final CardView carPrivate;
    public final CardView carUser;
    public final CardView cardExt;
    public final CardView cardVersion;
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    private final LinearLayout rootView;
    public final TextView tvVerison;

    private ActSettingBinding(LinearLayout linearLayout, CardView cardView, CardView cardView2, CardView cardView3, CardView cardView4, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, TextView textView) {
        this.rootView = linearLayout;
        this.carPrivate = cardView;
        this.carUser = cardView2;
        this.cardExt = cardView3;
        this.cardVersion = cardView4;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.tvVerison = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActSettingBinding bind(View view) {
        int i = R.id.carPrivate;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.carPrivate);
        if (cardView != null) {
            i = R.id.carUser;
            CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, R.id.carUser);
            if (cardView2 != null) {
                i = R.id.card_ext;
                CardView cardView3 = (CardView) ViewBindings.findChildViewById(view, R.id.card_ext);
                if (cardView3 != null) {
                    i = R.id.cardVersion;
                    CardView cardView4 = (CardView) ViewBindings.findChildViewById(view, R.id.cardVersion);
                    if (cardView4 != null) {
                        i = R.id.head_layout;
                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
                        if (viewFindChildViewById != null) {
                            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
                            LinearLayout linearLayout = (LinearLayout) view;
                            i = R.id.tvVerison;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvVerison);
                            if (textView != null) {
                                return new ActSettingBinding(linearLayout, cardView, cardView2, cardView3, cardView4, headerLayoutBindingBind, linearLayout, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
