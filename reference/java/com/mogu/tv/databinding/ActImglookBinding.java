package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.mogu.tv.view.PhotoViewPager;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class ActImglookBinding implements ViewBinding {
    public final MagicIndicator magicIndicator;
    public final PhotoViewPager photoviewpagerImglook;
    private final FrameLayout rootView;

    private ActImglookBinding(FrameLayout frameLayout, MagicIndicator magicIndicator, PhotoViewPager photoViewPager) {
        this.rootView = frameLayout;
        this.magicIndicator = magicIndicator;
        this.photoviewpagerImglook = photoViewPager;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ActImglookBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActImglookBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_imglook, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActImglookBinding bind(View view) {
        int i = R.id.magicIndicator;
        MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
        if (magicIndicator != null) {
            i = R.id.photoviewpager_imglook;
            PhotoViewPager photoViewPager = (PhotoViewPager) ViewBindings.findChildViewById(view, R.id.photoviewpager_imglook);
            if (photoViewPager != null) {
                return new ActImglookBinding((FrameLayout) view, magicIndicator, photoViewPager);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
