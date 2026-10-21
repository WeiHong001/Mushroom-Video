package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.makeramen.roundedimageview.RoundedImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ActNewUserinfoBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final ImageView ivTodophoto;
    public final RoundedImageView ivUserIcon;
    public final LinearLayout llHead;
    public final RelativeLayout rlName;
    private final LinearLayout rootView;
    public final TextView tvName;
    public final ImageView tvRight1;

    private ActNewUserinfoBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, ImageView imageView, RoundedImageView roundedImageView, LinearLayout linearLayout2, RelativeLayout relativeLayout, TextView textView, ImageView imageView2) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.ivTodophoto = imageView;
        this.ivUserIcon = roundedImageView;
        this.llHead = linearLayout2;
        this.rlName = relativeLayout;
        this.tvName = textView;
        this.tvRight1 = imageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActNewUserinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActNewUserinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_new_userinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActNewUserinfoBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.iv_todophoto;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_todophoto);
            if (imageView != null) {
                i = R.id.iv_userIcon;
                RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_userIcon);
                if (roundedImageView != null) {
                    LinearLayout linearLayout = (LinearLayout) view;
                    i = R.id.rl_name;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_name);
                    if (relativeLayout != null) {
                        i = R.id.tv_name;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                        if (textView != null) {
                            i = R.id.tv_right_1;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.tv_right_1);
                            if (imageView2 != null) {
                                return new ActNewUserinfoBinding(linearLayout, headerLayoutBindingBind, imageView, roundedImageView, linearLayout, relativeLayout, textView, imageView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
