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
public final class ItemShortvideoBinding implements ViewBinding {
    public final ImageView adImg;
    public final RoundedImageView ivPhoto;
    public final LikeButton likeBtn;
    public final LinearLayout llComment;
    public final LinearLayout llRight;
    private final RelativeLayout rootView;
    public final TextView tvComment;
    public final TextView tvContent;
    public final TextView tvPrase;
    public final TextView tvUserName;
    public final ShortVideoView videoPlayer;
    public final View viewShare;

    private ItemShortvideoBinding(RelativeLayout relativeLayout, ImageView imageView, RoundedImageView roundedImageView, LikeButton likeButton, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, ShortVideoView shortVideoView, View view) {
        this.rootView = relativeLayout;
        this.adImg = imageView;
        this.ivPhoto = roundedImageView;
        this.likeBtn = likeButton;
        this.llComment = linearLayout;
        this.llRight = linearLayout2;
        this.tvComment = textView;
        this.tvContent = textView2;
        this.tvPrase = textView3;
        this.tvUserName = textView4;
        this.videoPlayer = shortVideoView;
        this.viewShare = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ItemShortvideoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemShortvideoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_shortvideo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemShortvideoBinding bind(View view) {
        int i = R.id.adImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.adImg);
        if (imageView != null) {
            i = R.id.ivPhoto;
            RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.ivPhoto);
            if (roundedImageView != null) {
                i = R.id.likeBtn;
                LikeButton likeButton = (LikeButton) ViewBindings.findChildViewById(view, R.id.likeBtn);
                if (likeButton != null) {
                    i = R.id.llComment;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llComment);
                    if (linearLayout != null) {
                        i = R.id.llRight;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llRight);
                        if (linearLayout2 != null) {
                            i = R.id.tvComment;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvComment);
                            if (textView != null) {
                                i = R.id.tvContent;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvContent);
                                if (textView2 != null) {
                                    i = R.id.tvPrase;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPrase);
                                    if (textView3 != null) {
                                        i = R.id.tvUserName;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvUserName);
                                        if (textView4 != null) {
                                            i = R.id.videoPlayer;
                                            ShortVideoView shortVideoView = (ShortVideoView) ViewBindings.findChildViewById(view, R.id.videoPlayer);
                                            if (shortVideoView != null) {
                                                i = R.id.viewShare;
                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.viewShare);
                                                if (viewFindChildViewById != null) {
                                                    return new ItemShortvideoBinding((RelativeLayout) view, imageView, roundedImageView, likeButton, linearLayout, linearLayout2, textView, textView2, textView3, textView4, shortVideoView, viewFindChildViewById);
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
