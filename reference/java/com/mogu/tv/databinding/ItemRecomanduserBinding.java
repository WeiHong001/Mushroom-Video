package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.makeramen.roundedimageview.RoundedImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemRecomanduserBinding implements ViewBinding {
    public final RoundedImageView ivDetails;
    private final LinearLayout rootView;
    public final TextView tvName;

    private ItemRecomanduserBinding(LinearLayout linearLayout, RoundedImageView roundedImageView, TextView textView) {
        this.rootView = linearLayout;
        this.ivDetails = roundedImageView;
        this.tvName = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemRecomanduserBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemRecomanduserBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_recomanduser, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemRecomanduserBinding bind(View view) {
        int i = R.id.iv_details;
        RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_details);
        if (roundedImageView != null) {
            i = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
            if (textView != null) {
                return new ItemRecomanduserBinding((LinearLayout) view, roundedImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
