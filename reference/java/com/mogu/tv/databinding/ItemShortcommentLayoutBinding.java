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
import com.makeramen.roundedimageview.RoundedImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemShortcommentLayoutBinding implements ViewBinding {
    public final ImageView ivItemDown;
    public final ImageView ivItemPraise;
    public final RoundedImageView ivUserphoto;
    public final LinearLayout llCommentHead;
    public final LinearLayout llItemDown;
    public final LinearLayout llItemPraise;
    private final RelativeLayout rootView;
    public final TextView tvAuther;
    public final TextView tvCommentContent;
    public final TextView tvPraiseItemDown;
    public final TextView tvPraiseItemNumber;
    public final TextView tvReply;
    public final TextView tvTime;

    private ItemShortcommentLayoutBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, RoundedImageView roundedImageView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = relativeLayout;
        this.ivItemDown = imageView;
        this.ivItemPraise = imageView2;
        this.ivUserphoto = roundedImageView;
        this.llCommentHead = linearLayout;
        this.llItemDown = linearLayout2;
        this.llItemPraise = linearLayout3;
        this.tvAuther = textView;
        this.tvCommentContent = textView2;
        this.tvPraiseItemDown = textView3;
        this.tvPraiseItemNumber = textView4;
        this.tvReply = textView5;
        this.tvTime = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemShortcommentLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemShortcommentLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shortcomment_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemShortcommentLayoutBinding bind(View view) {
        int i = R.id.iv_item_down;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_item_down);
        if (imageView != null) {
            i = R.id.iv_item_praise;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_item_praise);
            if (imageView2 != null) {
                i = R.id.iv_userphoto;
                RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_userphoto);
                if (roundedImageView != null) {
                    i = R.id.ll_comment_head;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_comment_head);
                    if (linearLayout != null) {
                        i = R.id.ll_item_down;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_item_down);
                        if (linearLayout2 != null) {
                            i = R.id.ll_item_praise;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_item_praise);
                            if (linearLayout3 != null) {
                                i = R.id.tv_auther;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_auther);
                                if (textView != null) {
                                    i = R.id.tv_comment_content;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_comment_content);
                                    if (textView2 != null) {
                                        i = R.id.tv_praise_item_down;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_praise_item_down);
                                        if (textView3 != null) {
                                            i = R.id.tv_praise_item_number;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_praise_item_number);
                                            if (textView4 != null) {
                                                i = R.id.tv_reply;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_reply);
                                                if (textView5 != null) {
                                                    i = R.id.tv_time;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                                                    if (textView6 != null) {
                                                        return new ItemShortcommentLayoutBinding((RelativeLayout) view, imageView, imageView2, roundedImageView, linearLayout, linearLayout2, linearLayout3, textView, textView2, textView3, textView4, textView5, textView6);
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
