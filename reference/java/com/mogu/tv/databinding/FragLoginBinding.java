package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class FragLoginBinding implements ViewBinding {
    public final EditText etAccount;
    public final EditText etPassword;
    public final EditText etVerify;
    public final ImageView ivPhoto;
    public final ImageView ivVerify;
    private final LinearLayout rootView;
    public final TextView tvClick;
    public final TextView tvForgetPass;
    public final TextView tvSubmit;
    public final TextView tvYzm;

    private FragLoginBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.etAccount = editText;
        this.etPassword = editText2;
        this.etVerify = editText3;
        this.ivPhoto = imageView;
        this.ivVerify = imageView2;
        this.tvClick = textView;
        this.tvForgetPass = textView2;
        this.tvSubmit = textView3;
        this.tvYzm = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_login, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragLoginBinding bind(View view) {
        int i = R.id.et_account;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_account);
        if (editText != null) {
            i = R.id.et_password;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_password);
            if (editText2 != null) {
                i = R.id.et_verify;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.et_verify);
                if (editText3 != null) {
                    i = R.id.iv_photo;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
                    if (imageView != null) {
                        i = R.id.iv_verify;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_verify);
                        if (imageView2 != null) {
                            i = R.id.tv_click;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_click);
                            if (textView != null) {
                                i = R.id.tvForgetPass;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvForgetPass);
                                if (textView2 != null) {
                                    i = R.id.tv_submit;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_submit);
                                    if (textView3 != null) {
                                        i = R.id.tv_yzm;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_yzm);
                                        if (textView4 != null) {
                                            return new FragLoginBinding((LinearLayout) view, editText, editText2, editText3, imageView, imageView2, textView, textView2, textView3, textView4);
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
