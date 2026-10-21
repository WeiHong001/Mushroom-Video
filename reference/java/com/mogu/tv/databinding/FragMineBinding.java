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
public final class FragMineBinding implements ViewBinding {
    public final ImageView IvMessage;
    public final RelativeLayout cardLogin;
    public final ImageView ivMainAd;
    public final ImageView ivMsgCenter;
    public final RoundedImageView ivUser;
    public final LinearLayout llCollect;
    public final LinearLayout llContact;
    public final LinearLayout llData;
    public final LinearLayout llFocus;
    public final LinearLayout llHistory;
    public final LinearLayout llInvite;
    public final LinearLayout llJifen;
    public final LinearLayout llLock;
    public final LinearLayout llMsg;
    public final LinearLayout llSetting;
    public final LinearLayout llShangwu;
    public final LinearLayout llShare;
    public final LinearLayout llSuggest;
    public final LinearLayout llTougao;
    public final LinearLayout rlClearCache;
    private final LinearLayout rootView;
    public final TextView tvFocus;
    public final TextView tvInviteNumber;
    public final TextView tvJifen;
    public final TextView tvUploadNumber;
    public final TextView tvUsername;

    private FragMineBinding(LinearLayout linearLayout, ImageView imageView, RelativeLayout relativeLayout, ImageView imageView2, ImageView imageView3, RoundedImageView roundedImageView, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, LinearLayout linearLayout11, LinearLayout linearLayout12, LinearLayout linearLayout13, LinearLayout linearLayout14, LinearLayout linearLayout15, LinearLayout linearLayout16, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.IvMessage = imageView;
        this.cardLogin = relativeLayout;
        this.ivMainAd = imageView2;
        this.ivMsgCenter = imageView3;
        this.ivUser = roundedImageView;
        this.llCollect = linearLayout2;
        this.llContact = linearLayout3;
        this.llData = linearLayout4;
        this.llFocus = linearLayout5;
        this.llHistory = linearLayout6;
        this.llInvite = linearLayout7;
        this.llJifen = linearLayout8;
        this.llLock = linearLayout9;
        this.llMsg = linearLayout10;
        this.llSetting = linearLayout11;
        this.llShangwu = linearLayout12;
        this.llShare = linearLayout13;
        this.llSuggest = linearLayout14;
        this.llTougao = linearLayout15;
        this.rlClearCache = linearLayout16;
        this.tvFocus = textView;
        this.tvInviteNumber = textView2;
        this.tvJifen = textView3;
        this.tvUploadNumber = textView4;
        this.tvUsername = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragMineBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragMineBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_mine, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragMineBinding bind(View view) {
        int i = R.id.IvMessage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.IvMessage);
        if (imageView != null) {
            i = R.id.card_login;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.card_login);
            if (relativeLayout != null) {
                i = R.id.iv_main_ad;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_ad);
                if (imageView2 != null) {
                    i = R.id.ivMsgCenter;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivMsgCenter);
                    if (imageView3 != null) {
                        i = R.id.iv_user;
                        RoundedImageView roundedImageView = (RoundedImageView) ViewBindings.findChildViewById(view, R.id.iv_user);
                        if (roundedImageView != null) {
                            i = R.id.llCollect;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llCollect);
                            if (linearLayout != null) {
                                i = R.id.llContact;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llContact);
                                if (linearLayout2 != null) {
                                    i = R.id.llData;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llData);
                                    if (linearLayout3 != null) {
                                        i = R.id.llFocus;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llFocus);
                                        if (linearLayout4 != null) {
                                            i = R.id.llHistory;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llHistory);
                                            if (linearLayout5 != null) {
                                                i = R.id.llInvite;
                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llInvite);
                                                if (linearLayout6 != null) {
                                                    i = R.id.llJifen;
                                                    LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llJifen);
                                                    if (linearLayout7 != null) {
                                                        i = R.id.llLock;
                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llLock);
                                                        if (linearLayout8 != null) {
                                                            i = R.id.llMsg;
                                                            LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llMsg);
                                                            if (linearLayout9 != null) {
                                                                i = R.id.llSetting;
                                                                LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llSetting);
                                                                if (linearLayout10 != null) {
                                                                    i = R.id.llShangwu;
                                                                    LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llShangwu);
                                                                    if (linearLayout11 != null) {
                                                                        i = R.id.llShare;
                                                                        LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llShare);
                                                                        if (linearLayout12 != null) {
                                                                            i = R.id.llSuggest;
                                                                            LinearLayout linearLayout13 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llSuggest);
                                                                            if (linearLayout13 != null) {
                                                                                i = R.id.llTougao;
                                                                                LinearLayout linearLayout14 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llTougao);
                                                                                if (linearLayout14 != null) {
                                                                                    i = R.id.rlClearCache;
                                                                                    LinearLayout linearLayout15 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlClearCache);
                                                                                    if (linearLayout15 != null) {
                                                                                        i = R.id.tvFocus;
                                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvFocus);
                                                                                        if (textView != null) {
                                                                                            i = R.id.tvInviteNumber;
                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvInviteNumber);
                                                                                            if (textView2 != null) {
                                                                                                i = R.id.tvJifen;
                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvJifen);
                                                                                                if (textView3 != null) {
                                                                                                    i = R.id.tv_uploadNumber;
                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_uploadNumber);
                                                                                                    if (textView4 != null) {
                                                                                                        i = R.id.tv_username;
                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_username);
                                                                                                        if (textView5 != null) {
                                                                                                            return new FragMineBinding((LinearLayout) view, imageView, relativeLayout, imageView2, imageView3, roundedImageView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, linearLayout12, linearLayout13, linearLayout14, linearLayout15, textView, textView2, textView3, textView4, textView5);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
