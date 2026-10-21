package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActTougaoBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llCollect;
    public final LinearLayout llData;
    public final LinearLayout llHead;
    public final LinearLayout llHistory;
    public final LinearLayout llMsg;
    public final RelativeLayout rl1;
    public final RelativeLayout rl2;
    public final RelativeLayout rl3;
    private final LinearLayout rootView;
    public final TextView tvSubmit;

    private ActTougaoBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llCollect = linearLayout2;
        this.llData = linearLayout3;
        this.llHead = linearLayout4;
        this.llHistory = linearLayout5;
        this.llMsg = linearLayout6;
        this.rl1 = relativeLayout;
        this.rl2 = relativeLayout2;
        this.rl3 = relativeLayout3;
        this.tvSubmit = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActTougaoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActTougaoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_tougao, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActTougaoBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.llCollect;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llCollect);
            if (linearLayout != null) {
                i = R.id.llData;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llData);
                if (linearLayout2 != null) {
                    LinearLayout linearLayout3 = (LinearLayout) view;
                    i = R.id.llHistory;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llHistory);
                    if (linearLayout4 != null) {
                        i = R.id.llMsg;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMsg);
                        if (linearLayout5 != null) {
                            i = R.id.rl1;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl1);
                            if (relativeLayout != null) {
                                i = R.id.rl2;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl2);
                                if (relativeLayout2 != null) {
                                    i = R.id.rl3;
                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl3);
                                    if (relativeLayout3 != null) {
                                        i = R.id.tvSubmit;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvSubmit);
                                        if (textView != null) {
                                            return new ActTougaoBinding(linearLayout3, headerLayoutBindingBind, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, relativeLayout, relativeLayout2, relativeLayout3, textView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
