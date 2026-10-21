package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.google.android.flexbox.FlexboxLayout;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.mogu.tv.view.TipsEditText;

/* JADX INFO: loaded from: classes2.dex */
public final class FragAdviceReportBinding implements ViewBinding {
    public final FlexboxLayout flexLayout;
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    public final TipsEditText putEdit;
    private final LinearLayout rootView;
    public final TextView tvSubmit;

    private FragAdviceReportBinding(LinearLayout linearLayout, FlexboxLayout flexboxLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, TipsEditText tipsEditText, TextView textView) {
        this.rootView = linearLayout;
        this.flexLayout = flexboxLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.putEdit = tipsEditText;
        this.tvSubmit = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragAdviceReportBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragAdviceReportBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_advice_report, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragAdviceReportBinding bind(View view) {
        int i = R.id.flex_layout;
        FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, R.id.flex_layout);
        if (flexboxLayout != null) {
            i = R.id.head_layout;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
            if (viewFindChildViewById != null) {
                HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.put_edit;
                TipsEditText tipsEditText = (TipsEditText) ViewBindings.findChildViewById(view, R.id.put_edit);
                if (tipsEditText != null) {
                    i = R.id.tv_submit;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_submit);
                    if (textView != null) {
                        return new FragAdviceReportBinding(linearLayout, flexboxLayout, headerLayoutBindingBind, linearLayout, tipsEditText, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
