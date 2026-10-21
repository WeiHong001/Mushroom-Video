package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogHomeadBinding implements ViewBinding {
    public final ImageView ivAd;
    public final ImageView ivClose;
    private final LinearLayout rootView;

    private DialogHomeadBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2) {
        this.rootView = linearLayout;
        this.ivAd = imageView;
        this.ivClose = imageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogHomeadBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogHomeadBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_homead, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogHomeadBinding bind(View view) {
        int i = R.id.ivAd;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivAd);
        if (imageView != null) {
            i = R.id.ivClose;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivClose);
            if (imageView2 != null) {
                return new DialogHomeadBinding((LinearLayout) view, imageView, imageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
