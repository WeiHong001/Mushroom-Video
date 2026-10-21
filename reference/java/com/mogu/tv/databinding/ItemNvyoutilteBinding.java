package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemNvyoutilteBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final TextView tvIndex;

    private ItemNvyoutilteBinding(FrameLayout frameLayout, TextView textView) {
        this.rootView = frameLayout;
        this.tvIndex = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ItemNvyoutilteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemNvyoutilteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_nvyoutilte, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemNvyoutilteBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_index);
        if (textView != null) {
            return new ItemNvyoutilteBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_index)));
    }
}
