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
public final class ItemMessageBinding implements ViewBinding {
    public final RoundedImageView ivPhoto;
    private final LinearLayout rootView;
    public final TextView tvTime;
    public final TextView tvTitle;
    public final TextView tvUser;

    private ItemMessageBinding(LinearLayout linearLayout, RoundedImageView roundedImageView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.ivPhoto = roundedImageView;
        this.tvTime = textView;
        this.tvTitle = textView2;
        this.tvUser = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemMessageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemMessageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_message, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemMessageBinding bind(View view) {
        int i = R.id.iv_photo;
        RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
        if (roundedImageView != null) {
            i = R.id.tvTime;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvTime);
            if (textView != null) {
                i = R.id.tvTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                if (textView2 != null) {
                    i = R.id.tvUser;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUser);
                    if (textView3 != null) {
                        return new ItemMessageBinding((LinearLayout) view, roundedImageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
