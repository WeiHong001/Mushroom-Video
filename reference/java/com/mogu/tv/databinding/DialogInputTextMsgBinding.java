package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogInputTextMsgBinding implements ViewBinding {
    public final EditText etInputMessage;
    public final RelativeLayout rlComment;
    public final LinearLayout rlInputdlgView;
    private final LinearLayout rootView;
    public final TextView tvConfirm;
    public final TextView tvTest;

    private DialogInputTextMsgBinding(LinearLayout linearLayout, EditText editText, RelativeLayout relativeLayout, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.etInputMessage = editText;
        this.rlComment = relativeLayout;
        this.rlInputdlgView = linearLayout2;
        this.tvConfirm = textView;
        this.tvTest = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogInputTextMsgBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogInputTextMsgBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_input_text_msg, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogInputTextMsgBinding bind(View view) {
        int i = R.id.et_input_message;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_input_message);
        if (editText != null) {
            i = R.id.rl_comment;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_comment);
            if (relativeLayout != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.tv_confirm;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_confirm);
                if (textView != null) {
                    i = R.id.tv_test;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_test);
                    if (textView2 != null) {
                        return new DialogInputTextMsgBinding(linearLayout, editText, relativeLayout, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
