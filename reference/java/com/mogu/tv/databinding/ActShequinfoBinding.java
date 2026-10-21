package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.makeramen.roundedimageview.RoundedImageView;
import com.mogu.tv.view.NineGridLayout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class ActShequinfoBinding implements ViewBinding {
    public final FrameLayout flImg;
    public final HeaderLayoutBinding headLayout;
    public final RoundedImageView ivPhoto;
    public final ImageView ivPlay;
    public final ImageView ivPraise;
    public final ImageView ivSingle;
    public final ImageView ivVideoPhoto;
    public final LinearLayout llHead;
    public final LinearLayout llPraise;
    public final LinearLayout llShare;
    public final LinearLayout llText;
    public final MagicIndicator magicIndicator;
    public final NineGridLayout ngridLayout;
    public final RefreshLayout refreshLayout;
    public final RelativeLayout rlBottomComment;
    public final RelativeLayout rlImg;
    public final RelativeLayout rlPersonal;
    private final LinearLayout rootView;
    public final RecyclerView rvComment;
    public final TextView tvFriendTitle;
    public final TextView tvName;
    public final TextView tvPraise;
    public final TextView tvTime;
    public final TextView tvTomain;

    private ActShequinfoBinding(LinearLayout linearLayout, FrameLayout frameLayout, HeaderLayoutBinding headerLayoutBinding, RoundedImageView roundedImageView, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, MagicIndicator magicIndicator, NineGridLayout nineGridLayout, RefreshLayout refreshLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.flImg = frameLayout;
        this.headLayout = headerLayoutBinding;
        this.ivPhoto = roundedImageView;
        this.ivPlay = imageView;
        this.ivPraise = imageView2;
        this.ivSingle = imageView3;
        this.ivVideoPhoto = imageView4;
        this.llHead = linearLayout2;
        this.llPraise = linearLayout3;
        this.llShare = linearLayout4;
        this.llText = linearLayout5;
        this.magicIndicator = magicIndicator;
        this.ngridLayout = nineGridLayout;
        this.refreshLayout = refreshLayout;
        this.rlBottomComment = relativeLayout;
        this.rlImg = relativeLayout2;
        this.rlPersonal = relativeLayout3;
        this.rvComment = recyclerView;
        this.tvFriendTitle = textView;
        this.tvName = textView2;
        this.tvPraise = textView3;
        this.tvTime = textView4;
        this.tvTomain = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActShequinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActShequinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_shequinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActShequinfoBinding bind(View view) {
        int i = R.id.fl_img;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_img);
        if (frameLayout != null) {
            i = R.id.head_layout;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
            if (viewFindChildViewById != null) {
                HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
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
                                                i = R.id.magicIndicator;
                                                MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
                                                if (magicIndicator != null) {
                                                    i = R.id.ngrid_layout;
                                                    NineGridLayout nineGridLayout = (NineGridLayout) ViewBindings.findChildViewById(view, R.id.ngrid_layout);
                                                    if (nineGridLayout != null) {
                                                        i = R.id.refresh_layout;
                                                        RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                                                        if (refreshLayout != null) {
                                                            i = R.id.rl_bottom_comment;
                                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_bottom_comment);
                                                            if (relativeLayout != null) {
                                                                i = R.id.rl_img;
                                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_img);
                                                                if (relativeLayout2 != null) {
                                                                    i = R.id.rl_personal;
                                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_personal);
                                                                    if (relativeLayout3 != null) {
                                                                        i = R.id.rv_comment;
                                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_comment);
                                                                        if (recyclerView != null) {
                                                                            i = R.id.tv_friend_title;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_friend_title);
                                                                            if (textView != null) {
                                                                                i = R.id.tv_name;
                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                                                                if (textView2 != null) {
                                                                                    i = R.id.tv_praise;
                                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_praise);
                                                                                    if (textView3 != null) {
                                                                                        i = R.id.tv_time;
                                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                                                                                        if (textView4 != null) {
                                                                                            i = R.id.tv_tomain;
                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tomain);
                                                                                            if (textView5 != null) {
                                                                                                return new ActShequinfoBinding(linearLayout, frameLayout, headerLayoutBindingBind, roundedImageView, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, linearLayout4, magicIndicator, nineGridLayout, refreshLayout, relativeLayout, relativeLayout2, relativeLayout3, recyclerView, textView, textView2, textView3, textView4, textView5);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
