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
public final class FragRegistBinding implements ViewBinding {
    public final EditText etAccount;
    public final EditText etImgverify;
    public final EditText etPassword;
    public final ImageView ivPhoto;
    public final ImageView ivVerify;
    private final LinearLayout rootView;
    public final TextView tvClick;
    public final TextView tvSubmit;
    public final TextView tvYzm;

    private FragRegistBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.etAccount = editText;
        this.etImgverify = editText2;
        this.etPassword = editText3;
        this.ivPhoto = imageView;
        this.ivVerify = imageView2;
        this.tvClick = textView;
        this.tvSubmit = textView2;
        this.tvYzm = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragRegistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragRegistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_regist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragRegistBinding bind(View view) {
        int i = R.id.et_account;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_account);
        if (editText != null) {
            i = R.id.et_imgverify;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_imgverify);
            if (editText2 != null) {
                i = R.id.et_password;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.et_password);
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
                                i = R.id.tv_submit;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_submit);
                                if (textView2 != null) {
                                    i = R.id.tv_yzm;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_yzm);
                                    if (textView3 != null) {
                                        return new FragRegistBinding((LinearLayout) view, editText, editText2, editText3, imageView, imageView2, textView, textView2, textView3);
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
