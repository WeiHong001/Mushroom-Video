package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.mogu.tv.view.TopScrollEditText;

/* JADX INFO: loaded from: classes2.dex */
public final class TipsEtBinding implements ViewBinding {
    private final RelativeLayout rootView;
    public final TopScrollEditText tvContent;
    public final TextView tvTips;

    private TipsEtBinding(RelativeLayout relativeLayout, TopScrollEditText topScrollEditText, TextView textView) {
        this.rootView = relativeLayout;
        this.tvContent = topScrollEditText;
        this.tvTips = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static TipsEtBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TipsEtBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tips_et, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static TipsEtBinding bind(View view) {
        int i = R.id.tv_content;
        TopScrollEditText topScrollEditText = (TopScrollEditText) ViewBindings.findChildViewById(view, R.id.tv_content);
        if (topScrollEditText != null) {
            i = R.id.tv_tips;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tips);
            if (textView != null) {
                return new TipsEtBinding((RelativeLayout) view, topScrollEditText, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
