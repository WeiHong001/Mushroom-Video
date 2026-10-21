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
public final class ItemFocususerBinding implements ViewBinding {
    public final RoundedImageView ivPhoto;
    private final LinearLayout rootView;
    public final TextView tvDown;
    public final TextView tvUser;

    private ItemFocususerBinding(LinearLayout linearLayout, RoundedImageView roundedImageView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.ivPhoto = roundedImageView;
        this.tvDown = textView;
        this.tvUser = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemFocususerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemFocususerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_focususer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemFocususerBinding bind(View view) {
        int i = R.id.iv_photo;
        RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
        if (roundedImageView != null) {
            i = R.id.tvDown;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvDown);
            if (textView != null) {
                i = R.id.tvUser;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUser);
                if (textView2 != null) {
                    return new ItemFocususerBinding((LinearLayout) view, roundedImageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
