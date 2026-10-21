package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemHomegridBinding implements ViewBinding {
    public final ImageView ivPhoto;
    public final RelativeLayout rlParent;
    private final RelativeLayout rootView;
    public final TextView tvName;
    public final TextView tvNumber;

    private ItemHomegridBinding(RelativeLayout relativeLayout, ImageView imageView, RelativeLayout relativeLayout2, TextView textView, TextView textView2) {
        this.rootView = relativeLayout;
        this.ivPhoto = imageView;
        this.rlParent = relativeLayout2;
        this.tvName = textView;
        this.tvNumber = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemHomegridBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemHomegridBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_homegrid, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemHomegridBinding bind(View view) {
        int i = R.id.iv_photo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i = R.id.tv_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
            if (textView != null) {
                i = R.id.tv_number;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_number);
                if (textView2 != null) {
                    return new ItemHomegridBinding(relativeLayout, imageView, relativeLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
