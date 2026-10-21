package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public final class FragShortvideoBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final ViewPager2 viewPager;

    private FragShortvideoBinding(LinearLayout linearLayout, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.viewPager = viewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragShortvideoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragShortvideoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_shortvideo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragShortvideoBinding bind(View view) {
        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.viewPager);
        if (viewPager2 != null) {
            return new FragShortvideoBinding((LinearLayout) view, viewPager2);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.viewPager)));
    }
}
