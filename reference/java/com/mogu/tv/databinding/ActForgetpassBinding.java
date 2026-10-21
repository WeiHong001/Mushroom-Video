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
public final class ActForgetpassBinding implements ViewBinding {
    public final EditText etAccount;
    public final EditText etImgverify;
    public final EditText etPassword;
    public final EditText etPassword2;
    public final EditText etVerify;
    public final HeaderLayoutBinding headLayout;
    public final ImageView ivPhoto;
    public final ImageView ivPhoto1;
    public final ImageView ivVerify;
    public final LinearLayout llHead;
    private final LinearLayout rootView;
    public final TextView tvClick;
    public final TextView tvGetVerifycation;
    public final TextView tvPhoneyzm;
    public final TextView tvSubmit;
    public final TextView tvYzm;

    private ActForgetpassBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, HeaderLayoutBinding headerLayoutBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.etAccount = editText;
        this.etImgverify = editText2;
        this.etPassword = editText3;
        this.etPassword2 = editText4;
        this.etVerify = editText5;
        this.headLayout = headerLayoutBinding;
        this.ivPhoto = imageView;
        this.ivPhoto1 = imageView2;
        this.ivVerify = imageView3;
        this.llHead = linearLayout2;
        this.tvClick = textView;
        this.tvGetVerifycation = textView2;
        this.tvPhoneyzm = textView3;
        this.tvSubmit = textView4;
        this.tvYzm = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActForgetpassBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActForgetpassBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_forgetpass, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActForgetpassBinding bind(View view) {
        int i = R.id.et_account;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_account);
        if (editText != null) {
            i = R.id.et_imgverify;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_imgverify);
            if (editText2 != null) {
                i = R.id.et_password;
                EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.et_password);
                if (editText3 != null) {
                    i = R.id.et_password2;
                    EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.et_password2);
                    if (editText4 != null) {
                        i = R.id.et_verify;
                        EditText editText5 = (EditText) ViewBindings.findChildViewById(view, R.id.et_verify);
                        if (editText5 != null) {
                            i = R.id.head_layout;
                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
                            if (viewFindChildViewById != null) {
                                HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
                                i = R.id.iv_photo;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
                                if (imageView != null) {
                                    i = R.id.iv_photo1;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_photo1);
                                    if (imageView2 != null) {
                                        i = R.id.iv_verify;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_verify);
                                        if (imageView3 != null) {
                                            LinearLayout linearLayout = (LinearLayout) view;
                                            i = R.id.tv_click;
                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_click);
                                            if (textView != null) {
                                                i = R.id.tv_getVerifycation;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_getVerifycation);
                                                if (textView2 != null) {
                                                    i = R.id.tv_phoneyzm;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phoneyzm);
                                                    if (textView3 != null) {
                                                        i = R.id.tv_submit;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_submit);
                                                        if (textView4 != null) {
                                                            i = R.id.tv_yzm;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_yzm);
                                                            if (textView5 != null) {
                                                                return new ActForgetpassBinding(linearLayout, editText, editText2, editText3, editText4, editText5, headerLayoutBindingBind, imageView, imageView2, imageView3, linearLayout, textView, textView2, textView3, textView4, textView5);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
