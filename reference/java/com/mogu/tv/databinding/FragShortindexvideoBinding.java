package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.amogu6.tv.R;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class FragShortindexvideoBinding implements ViewBinding {
    public final MagicIndicator magicIndicator;
    private final FrameLayout rootView;
    public final ViewPager viewPager;

    private FragShortindexvideoBinding(FrameLayout frameLayout, MagicIndicator magicIndicator, ViewPager viewPager) {
        this.rootView = frameLayout;
        this.magicIndicator = magicIndicator;
        this.viewPager = viewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragShortindexvideoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragShortindexvideoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_shortindexvideo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragShortindexvideoBinding bind(View view) {
        int i = R.id.magicIndicator;
        MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
        if (magicIndicator != null) {
            i = R.id.view_pager;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.view_pager);
            if (viewPager != null) {
                return new FragShortindexvideoBinding((FrameLayout) view, magicIndicator, viewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
