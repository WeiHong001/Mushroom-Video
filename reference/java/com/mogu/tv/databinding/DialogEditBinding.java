package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.mogu.tv.view.TipsEditText;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogEditBinding implements ViewBinding {
    public final TipsEditText etContent;
    private final LinearLayout rootView;
    public final TextView tvCancel;
    public final TextView tvOk;

    private DialogEditBinding(LinearLayout linearLayout, TipsEditText tipsEditText, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.etContent = tipsEditText;
        this.tvCancel = textView;
        this.tvOk = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogEditBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogEditBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_edit, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogEditBinding bind(View view) {
        int i = R.id.et_content;
        TipsEditText tipsEditText = (TipsEditText) ViewBindings.findChildViewById(view, R.id.et_content);
        if (tipsEditText != null) {
            i = R.id.tv_cancel;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
            if (textView != null) {
                i = R.id.tv_ok;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ok);
                if (textView2 != null) {
                    return new DialogEditBinding((LinearLayout) view, tipsEditText, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
