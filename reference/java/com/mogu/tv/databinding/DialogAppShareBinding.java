package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class DialogAppShareBinding implements ViewBinding {
    public final LinearLayout llCopyLink;
    public final LinearLayout llQq;
    public final LinearLayout llQqzone;
    public final LinearLayout llQrCode;
    public final LinearLayout llReport;
    public final LinearLayout llSaveImage;
    public final LinearLayout llShareMore;
    public final LinearLayout llSina;
    public final LinearLayout llWechat;
    public final LinearLayout llWechatCircle;
    private final LinearLayout rootView;
    public final TextView tvCancel;

    private DialogAppShareBinding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8, LinearLayout linearLayout9, LinearLayout linearLayout10, LinearLayout linearLayout11, TextView textView) {
        this.rootView = linearLayout;
        this.llCopyLink = linearLayout2;
        this.llQq = linearLayout3;
        this.llQqzone = linearLayout4;
        this.llQrCode = linearLayout5;
        this.llReport = linearLayout6;
        this.llSaveImage = linearLayout7;
        this.llShareMore = linearLayout8;
        this.llSina = linearLayout9;
        this.llWechat = linearLayout10;
        this.llWechatCircle = linearLayout11;
        this.tvCancel = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static DialogAppShareBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAppShareBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_app_share, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogAppShareBinding bind(View view) {
        int i = R.id.ll_copy_link;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_copy_link);
        if (linearLayout != null) {
            i = R.id.ll_qq;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_qq);
            if (linearLayout2 != null) {
                i = R.id.ll_qqzone;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_qqzone);
                if (linearLayout3 != null) {
                    i = R.id.ll_qrCode;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_qrCode);
                    if (linearLayout4 != null) {
                        i = R.id.ll_report;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_report);
                        if (linearLayout5 != null) {
                            i = R.id.ll_saveImage;
                            LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_saveImage);
                            if (linearLayout6 != null) {
                                i = R.id.ll_share_more;
                                LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_share_more);
                                if (linearLayout7 != null) {
                                    i = R.id.ll_sina;
                                    LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_sina);
                                    if (linearLayout8 != null) {
                                        i = R.id.ll_wechat;
                                        LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_wechat);
                                        if (linearLayout9 != null) {
                                            i = R.id.ll_wechat_circle;
                                            LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_wechat_circle);
                                            if (linearLayout10 != null) {
                                                i = R.id.tv_cancel;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
                                                if (textView != null) {
                                                    return new DialogAppShareBinding((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, textView);
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
