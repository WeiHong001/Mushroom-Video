package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.google.android.flexbox.FlexboxLayout;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActLabelsBinding implements ViewBinding {
    public final FlexboxLayout flexLables;
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    private final LinearLayout rootView;

    private ActLabelsBinding(LinearLayout linearLayout, FlexboxLayout flexboxLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.flexLables = flexboxLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActLabelsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActLabelsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_labels, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActLabelsBinding bind(View view) {
        int i = R.id.flexLables;
        FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, R.id.flexLables);
        if (flexboxLayout != null) {
            i = R.id.head_layout;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
            if (viewFindChildViewById != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new ActLabelsBinding(linearLayout, flexboxLayout, HeaderLayoutBinding.bind(viewFindChildViewById), linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
