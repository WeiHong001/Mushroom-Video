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
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActQiupianBinding implements ViewBinding {
    public final EditText etPassword;
    public final EditText etVerify;
    public final HeaderLayoutBinding headLayout;
    public final ImageView ivPhoto;
    public final ImageView ivVerify;
    public final LinearLayout llHead;
    private final LinearLayout rootView;
    public final TextView tvSubmit;
    public final TextView tvYzm;

    private ActQiupianBinding(LinearLayout linearLayout, EditText editText, EditText editText2, HeaderLayoutBinding headerLayoutBinding, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.etPassword = editText;
        this.etVerify = editText2;
        this.headLayout = headerLayoutBinding;
        this.ivPhoto = imageView;
        this.ivVerify = imageView2;
        this.llHead = linearLayout2;
        this.tvSubmit = textView;
        this.tvYzm = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActQiupianBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActQiupianBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_qiupian, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActQiupianBinding bind(View view) {
        int i = R.id.et_password;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_password);
        if (editText != null) {
            i = R.id.et_verify;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_verify);
            if (editText2 != null) {
                i = R.id.head_layout;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
                if (viewFindChildViewById != null) {
                    HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
                    i = R.id.iv_photo;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
                    if (imageView != null) {
                        i = R.id.iv_verify;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_verify);
                        if (imageView2 != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            i = R.id.tv_submit;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_submit);
                            if (textView != null) {
                                i = R.id.tv_yzm;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_yzm);
                                if (textView2 != null) {
                                    return new ActQiupianBinding(linearLayout, editText, editText2, headerLayoutBindingBind, imageView, imageView2, linearLayout, textView, textView2);
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
