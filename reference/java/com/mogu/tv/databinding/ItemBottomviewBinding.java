package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemBottomviewBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final TextView tvBottomtext;

    private ItemBottomviewBinding(RelativeLayout relativeLayout, TextView textView) {
        this.rootView = relativeLayout;
        this.tvBottomtext = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemBottomviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemBottomviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_bottomview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemBottomviewBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_bottomtext);
        if (textView != null) {
            return new ItemBottomviewBinding((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_bottomtext)));
    }
}
