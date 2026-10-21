package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActContactBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llEmail;
    public final LinearLayout llHead;
    public final LinearLayout llPotato;
    public final LinearLayout llQQ;
    public final LinearLayout llTele;
    private final LinearLayout rootView;
    public final TextView tvQQqun;

    private ActContactBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, TextView textView) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llEmail = linearLayout2;
        this.llHead = linearLayout3;
        this.llPotato = linearLayout4;
        this.llQQ = linearLayout5;
        this.llTele = linearLayout6;
        this.tvQQqun = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActContactBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActContactBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_contact, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActContactBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.llEmail;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llEmail);
            if (linearLayout != null) {
                LinearLayout linearLayout2 = (LinearLayout) view;
                i = R.id.llPotato;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llPotato);
                if (linearLayout3 != null) {
                    i = R.id.llQQ;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llQQ);
                    if (linearLayout4 != null) {
                        i = R.id.llTele;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llTele);
                        if (linearLayout5 != null) {
                            i = R.id.tvQQqun;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvQQqun);
                            if (textView != null) {
                                return new ActContactBinding(linearLayout2, headerLayoutBindingBind, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
