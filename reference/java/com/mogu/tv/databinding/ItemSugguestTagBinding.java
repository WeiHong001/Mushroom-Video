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
public final class ItemSugguestTagBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvItem;

    private ItemSugguestTagBinding(LinearLayout linearLayout, TextView textView) {
        this.rootView = linearLayout;
        this.tvItem = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemSugguestTagBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSugguestTagBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sugguest_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemSugguestTagBinding bind(View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_item);
        if (textView != null) {
            return new ItemSugguestTagBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.tv_item)));
    }
}
