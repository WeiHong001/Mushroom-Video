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
public final class LayoutPermissionDialogBinding implements ViewBinding {
    public final ImageView loginBackground;
    private final LinearLayout rootView;
    public final TextView tvSubmit;

    private LayoutPermissionDialogBinding(LinearLayout linearLayout, ImageView imageView, TextView textView) {
        this.rootView = linearLayout;
        this.loginBackground = imageView;
        this.tvSubmit = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutPermissionDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutPermissionDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_permission_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutPermissionDialogBinding bind(View view) {
        int i = R.id.loginBackground;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.loginBackground);
        if (imageView != null) {
            i = R.id.tv_submit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_submit);
            if (textView != null) {
                return new LayoutPermissionDialogBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
