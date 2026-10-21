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
import com.github.like.LikeButton;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.view.ShortVideoView;

/* JADX INFO: loaded from: classes2.dex */
public final class ActShortdetailsBinding implements ViewBinding {
    public final ImageView ivBack;
    public final RoundedImageView ivPhoto;
    public final LikeButton likeBtn;
    public final LinearLayout llRight;
    private final RelativeLayout rootView;
    public final TextView tvContent;
    public final TextView tvPrase;
    public final TextView tvUserName;
    public final ShortVideoView videoPlayer;
    public final View viewShare;

    private ActShortdetailsBinding(RelativeLayout relativeLayout, ImageView imageView, RoundedImageView roundedImageView, LikeButton likeButton, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, ShortVideoView shortVideoView, View view) {
        this.rootView = relativeLayout;
        this.ivBack = imageView;
        this.ivPhoto = roundedImageView;
        this.likeBtn = likeButton;
        this.llRight = linearLayout;
        this.tvContent = textView;
        this.tvPrase = textView2;
        this.tvUserName = textView3;
        this.videoPlayer = shortVideoView;
        this.viewShare = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActShortdetailsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActShortdetailsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_shortdetails, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActShortdetailsBinding bind(View view) {
        int i = R.id.iv_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_back);
        if (imageView != null) {
            i = R.id.ivPhoto;
            RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.ivPhoto);
            if (roundedImageView != null) {
                i = R.id.likeBtn;
                LikeButton likeButton = (LikeButton) ViewBindings.findChildViewById(view, R.id.likeBtn);
                if (likeButton != null) {
                    i = R.id.llRight;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llRight);
                    if (linearLayout != null) {
                        i = R.id.tvContent;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
                        if (textView != null) {
                            i = R.id.tvPrase;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrase);
                            if (textView2 != null) {
                                i = R.id.tvUserName;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUserName);
                                if (textView3 != null) {
                                    i = R.id.videoPlayer;
                                    ShortVideoView shortVideoView = (ShortVideoView) ViewBindings.findChildViewById(view, R.id.videoPlayer);
                                    if (shortVideoView != null) {
                                        i = R.id.viewShare;
                                        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.viewShare);
                                        if (viewFindChildViewById != null) {
                                            return new ActShortdetailsBinding((RelativeLayout) view, imageView, roundedImageView, likeButton, linearLayout, textView, textView2, textView3, shortVideoView, viewFindChildViewById);
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
