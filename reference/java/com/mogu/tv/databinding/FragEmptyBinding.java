package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import com.amogu6.tv.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class FragEmptyBinding implements ViewBinding {
    private final LinearLayout rootView;

    private FragEmptyBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragEmptyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragEmptyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_empty, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragEmptyBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new FragEmptyBinding((LinearLayout) view);
    }
}
