package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemAppcenterBinding implements ViewBinding {
    public final ImageView ivPhoto;
    private final LinearLayout rootView;
    public final TextView tvTitle;
    public final TextView tvUser;

    private ItemAppcenterBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.ivPhoto = imageView;
        this.tvTitle = textView;
        this.tvUser = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemAppcenterBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemAppcenterBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_appcenter, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemAppcenterBinding bind(View view) {
        int i = R.id.iv_photo;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
        if (imageView != null) {
            i = R.id.tvTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
            if (textView != null) {
                i = R.id.tvUser;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUser);
                if (textView2 != null) {
                    return new ItemAppcenterBinding((LinearLayout) view, imageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
