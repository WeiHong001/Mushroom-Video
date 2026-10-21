package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.makeramen.roundedimageview.RoundedImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivityMsgDetailsBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final RoundedImageView ivPhoto;
    public final LinearLayout llHead;
    private final LinearLayout rootView;
    public final TextView tvContent;
    public final TextView tvTime;
    public final TextView tvTitle;
    public final TextView tvUser;

    private ActivityMsgDetailsBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, RoundedImageView roundedImageView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.ivPhoto = roundedImageView;
        this.llHead = linearLayout2;
        this.tvContent = textView;
        this.tvTime = textView2;
        this.tvTitle = textView3;
        this.tvUser = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMsgDetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMsgDetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_msg_details, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMsgDetailsBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.iv_photo;
            RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
            if (roundedImageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.tvContent;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
                if (textView != null) {
                    i = R.id.tvTime;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTime);
                    if (textView2 != null) {
                        i = R.id.tvTitle;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTitle);
                        if (textView3 != null) {
                            i = R.id.tvUser;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUser);
                            if (textView4 != null) {
                                return new ActivityMsgDetailsBinding(linearLayout, headerLayoutBindingBind, roundedImageView, linearLayout, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
