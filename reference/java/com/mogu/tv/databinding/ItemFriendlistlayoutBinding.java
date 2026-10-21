package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.view.NineGridLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemFriendlistlayoutBinding implements ViewBinding {
    public final FrameLayout flImg;
    public final RoundedImageView ivPhoto;
    public final ImageView ivPlay;
    public final ImageView ivPraise;
    public final ImageView ivSingle;
    public final ImageView ivVideoPhoto;
    public final LinearLayout llContent;
    public final LinearLayout llPraise;
    public final LinearLayout llShare;
    public final LinearLayout llText;
    public final NineGridLayout ngridLayout;
    public final RelativeLayout rlImg;
    public final RelativeLayout rlPersonal;
    private final LinearLayout rootView;
    public final TextView tvComment;
    public final TextView tvFriendTitle;
    public final TextView tvName;
    public final TextView tvPraise;
    public final TextView tvTime;

    private ItemFriendlistlayoutBinding(LinearLayout linearLayout, FrameLayout frameLayout, RoundedImageView roundedImageView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, NineGridLayout nineGridLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.flImg = frameLayout;
        this.ivPhoto = roundedImageView;
        this.ivPlay = imageView;
        this.ivPraise = imageView2;
        this.ivSingle = imageView3;
        this.ivVideoPhoto = imageView4;
        this.llContent = linearLayout2;
        this.llPraise = linearLayout3;
        this.llShare = linearLayout4;
        this.llText = linearLayout5;
        this.ngridLayout = nineGridLayout;
        this.rlImg = relativeLayout;
        this.rlPersonal = relativeLayout2;
        this.tvComment = textView;
        this.tvFriendTitle = textView2;
        this.tvName = textView3;
        this.tvPraise = textView4;
        this.tvTime = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemFriendlistlayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemFriendlistlayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_friendlistlayout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemFriendlistlayoutBinding bind(View view) {
        int i = R.id.fl_img;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_img);
        if (frameLayout != null) {
            i = R.id.iv_photo;
            RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_photo);
            if (roundedImageView != null) {
                i = R.id.iv_play;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_play);
                if (imageView != null) {
                    i = R.id.iv_praise;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_praise);
                    if (imageView2 != null) {
                        i = R.id.iv_single;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_single);
                        if (imageView3 != null) {
                            i = R.id.iv_video_photo;
                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_video_photo);
                            if (imageView4 != null) {
                                LinearLayout linearLayout = (LinearLayout) view;
                                i = R.id.ll_praise;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_praise);
                                if (linearLayout2 != null) {
                                    i = R.id.ll_share;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_share);
                                    if (linearLayout3 != null) {
                                        i = R.id.ll_text;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_text);
                                        if (linearLayout4 != null) {
                                            i = R.id.ngrid_layout;
                                            NineGridLayout nineGridLayout = (NineGridLayout) ViewBindings.findChildViewById(view, R.id.ngrid_layout);
                                            if (nineGridLayout != null) {
                                                i = R.id.rl_img;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_img);
                                                if (relativeLayout != null) {
                                                    i = R.id.rl_personal;
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_personal);
                                                    if (relativeLayout2 != null) {
                                                        i = R.id.tv_comment;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_comment);
                                                        if (textView != null) {
                                                            i = R.id.tv_friend_title;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_friend_title);
                                                            if (textView2 != null) {
                                                                i = R.id.tv_name;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                                if (textView3 != null) {
                                                                    i = R.id.tv_praise;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_praise);
                                                                    if (textView4 != null) {
                                                                        i = R.id.tv_time;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                                                                        if (textView5 != null) {
                                                                            return new ItemFriendlistlayoutBinding(linearLayout, frameLayout, roundedImageView, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, linearLayout4, nineGridLayout, relativeLayout, relativeLayout2, textView, textView2, textView3, textView4, textView5);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
