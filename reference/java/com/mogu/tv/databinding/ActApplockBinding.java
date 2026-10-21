package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.github.ihsg.patternlocker.PatternLockerView;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActApplockBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    public final LinearLayout llLock;
    public final PatternLockerView patternLockerView;
    private final LinearLayout rootView;
    public final TextView tvClear;
    public final TextView tvLockTitle;

    private ActApplockBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, LinearLayout linearLayout3, PatternLockerView patternLockerView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.llLock = linearLayout3;
        this.patternLockerView = patternLockerView;
        this.tvClear = textView;
        this.tvLockTitle = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActApplockBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActApplockBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_applock, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActApplockBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            LinearLayout linearLayout = (LinearLayout) view;
            i = R.id.llLock;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llLock);
            if (linearLayout2 != null) {
                i = R.id.patternLockerView;
                PatternLockerView patternLockerView = (PatternLockerView) ViewBindings.findChildViewById(view, R.id.patternLockerView);
                if (patternLockerView != null) {
                    i = R.id.tvClear;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvClear);
                    if (textView != null) {
                        i = R.id.tvLockTitle;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvLockTitle);
                        if (textView2 != null) {
                            return new ActApplockBinding(linearLayout, headerLayoutBindingBind, linearLayout, linearLayout2, patternLockerView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
