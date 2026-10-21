package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.widget.commontab.CommonTabLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final FrameLayout container;
    public final RelativeLayout rlHead;
    private final RelativeLayout rootView;
    public final CommonTabLayout tabLayout;

    private ActivityMainBinding(RelativeLayout relativeLayout, FrameLayout frameLayout, RelativeLayout relativeLayout2, CommonTabLayout commonTabLayout) {
        this.rootView = relativeLayout;
        this.container = frameLayout;
        this.rlHead = relativeLayout2;
        this.tabLayout = commonTabLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_main, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMainBinding bind(View view) {
        int i = R.id.container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.container);
        if (frameLayout != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            CommonTabLayout commonTabLayout = (CommonTabLayout) ViewBindings.findChildViewById(view, R.id.tabLayout);
            if (commonTabLayout != null) {
                return new ActivityMainBinding(relativeLayout, frameLayout, relativeLayout, commonTabLayout);
            }
            i = R.id.tabLayout;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
