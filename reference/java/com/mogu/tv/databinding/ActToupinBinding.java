package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.widget.ContentLoadingProgressBar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;

/* JADX INFO: loaded from: classes2.dex */
public final class ActToupinBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final TextView ivEnd;
    public final LinearLayout llHead;
    public final LinearLayout llItem;
    public final ContentLoadingProgressBar progressBar;
    public final RelativeLayout rlVideo;
    private final LinearLayout rootView;
    public final ScrollView scrollView;
    public final TextView tvDevicename;
    public final TextView tvSearchHint;

    private ActToupinBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, TextView textView, LinearLayout linearLayout2, LinearLayout linearLayout3, ContentLoadingProgressBar contentLoadingProgressBar, RelativeLayout relativeLayout, ScrollView scrollView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.ivEnd = textView;
        this.llHead = linearLayout2;
        this.llItem = linearLayout3;
        this.progressBar = contentLoadingProgressBar;
        this.rlVideo = relativeLayout;
        this.scrollView = scrollView;
        this.tvDevicename = textView2;
        this.tvSearchHint = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActToupinBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActToupinBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_toupin, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActToupinBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.iv_end;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.iv_end);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i = R.id.ll_item;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_item);
                if (linearLayout2 != null) {
                    i = R.id.progressBar;
                    ContentLoadingProgressBar contentLoadingProgressBar = (ContentLoadingProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                    if (contentLoadingProgressBar != null) {
                        i = R.id.rl_video;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_video);
                        if (relativeLayout != null) {
                            i = R.id.scroll_view;
                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scroll_view);
                            if (scrollView != null) {
                                i = R.id.tv_devicename;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_devicename);
                                if (textView2 != null) {
                                    i = R.id.tv_search_hint;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_search_hint);
                                    if (textView3 != null) {
                                        return new ActToupinBinding(linearLayout, headerLayoutBindingBind, textView, linearLayout, linearLayout2, contentLoadingProgressBar, relativeLayout, scrollView, textView2, textView3);
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
