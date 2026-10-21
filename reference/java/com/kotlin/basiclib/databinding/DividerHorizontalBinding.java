package com.kotlin.basiclib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.kotlin.basiclib.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DividerHorizontalBinding implements ViewBinding {
    private final View rootView;

    private DividerHorizontalBinding(View view) {
        this.rootView = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    public static DividerHorizontalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DividerHorizontalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.divider_horizontal, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DividerHorizontalBinding bind(View view) {
        Objects.requireNonNull(view, "rootView");
        return new DividerHorizontalBinding(view);
    }
}
