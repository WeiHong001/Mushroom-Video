package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.github.ihsg.patternlocker.PatternLockerView;

/* JADX INFO: loaded from: classes2.dex */
public final class ActLoadpageBinding implements ViewBinding {
    public final ImageView adImg;
    public final ImageView ivLoading;
    public final LinearLayout llBottom;
    public final LinearLayout llLock;
    public final PatternLockerView patternLockerView;
    public final ContentLoadingProgressBar progressBar;
    public final LinearLayout rlLoading;
    public final RelativeLayout rlPhoto;
    public final RelativeLayout rootLayout;
    private final RelativeLayout rootView;
    public final TextView tvCountdown;

    private ActLoadpageBinding(RelativeLayout relativeLayout, ImageView imageView, ImageView imageView2, LinearLayout linearLayout, LinearLayout linearLayout2, PatternLockerView patternLockerView, ContentLoadingProgressBar contentLoadingProgressBar, LinearLayout linearLayout3, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView) {
        this.rootView = relativeLayout;
        this.adImg = imageView;
        this.ivLoading = imageView2;
        this.llBottom = linearLayout;
        this.llLock = linearLayout2;
        this.patternLockerView = patternLockerView;
        this.progressBar = contentLoadingProgressBar;
        this.rlLoading = linearLayout3;
        this.rlPhoto = relativeLayout2;
        this.rootLayout = relativeLayout3;
        this.tvCountdown = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActLoadpageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActLoadpageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_loadpage, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActLoadpageBinding bind(View view) {
        int i = R.id.adImg;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.adImg);
        if (imageView != null) {
            i = R.id.iv_loading;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_loading);
            if (imageView2 != null) {
                i = R.id.llBottom;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llBottom);
                if (linearLayout != null) {
                    i = R.id.llLock;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llLock);
                    if (linearLayout2 != null) {
                        i = R.id.patternLockerView;
                        PatternLockerView patternLockerView = (PatternLockerView) ViewBindings.findChildViewById(view, R.id.patternLockerView);
                        if (patternLockerView != null) {
                            i = R.id.progressBar;
                            ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                            if (contentLoadingProgressBar != null) {
                                i = R.id.rlLoading;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rlLoading);
                                if (linearLayout3 != null) {
                                    i = R.id.rlPhoto;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rlPhoto);
                                    if (relativeLayout != null) {
                                        RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                        i = R.id.tv_countdown;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_countdown);
                                        if (textView != null) {
                                            return new ActLoadpageBinding(relativeLayout2, imageView, imageView2, linearLayout, linearLayout2, patternLockerView, contentLoadingProgressBar, linearLayout3, relativeLayout, relativeLayout2, textView);
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
