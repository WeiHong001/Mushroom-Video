package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemVideofromBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvFrom;
    public final View vSelelct;

    private ItemVideofromBinding(LinearLayout linearLayout, TextView textView, View view) {
        this.rootView = linearLayout;
        this.tvFrom = textView;
        this.vSelelct = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemVideofromBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemVideofromBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_videofrom, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemVideofromBinding bind(View view) {
        int i = R.id.tv_from;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_from);
        if (textView != null) {
            i = R.id.v_selelct;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.v_selelct);
            if (viewFindChildViewById != null) {
                return new ItemVideofromBinding((LinearLayout) view, textView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
