package com.kotlin.basiclib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.kotlin.basiclib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DividerHorizontal2pBinding implements ViewBinding {
    private final View rootView;

    private DividerHorizontal2pBinding(View view) {
        this.rootView = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    public static DividerHorizontal2pBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DividerHorizontal2pBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.divider_horizontal_2p, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DividerHorizontal2pBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new DividerHorizontal2pBinding(view);
    }
}
