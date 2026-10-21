package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class FragShequBinding implements ViewBinding {
    public final ImageView IvSq1;
    public final ImageView IvSq2;
    public final MagicIndicator magicIndicator;
    private final LinearLayout rootView;
    public final RecyclerView rvUser;
    public final TextView tvTypename;
    public final ViewPager2 viewPager;

    private FragShequBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, MagicIndicator magicIndicator, RecyclerView recyclerView, TextView textView, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.IvSq1 = imageView;
        this.IvSq2 = imageView2;
        this.magicIndicator = magicIndicator;
        this.rvUser = recyclerView;
        this.tvTypename = textView;
        this.viewPager = viewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragShequBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragShequBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_shequ, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragShequBinding bind(View view) {
        int i = R.id.IvSq1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.IvSq1);
        if (imageView != null) {
            i = R.id.IvSq2;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.IvSq2);
            if (imageView2 != null) {
                i = R.id.magicIndicator;
                MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
                if (magicIndicator != null) {
                    i = R.id.rvUser;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvUser);
                    if (recyclerView != null) {
                        i = R.id.tv_typename;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_typename);
                        if (textView != null) {
                            i = R.id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                            if (viewPager2 != null) {
                                return new FragShequBinding((LinearLayout) view, imageView, imageView2, magicIndicator, recyclerView, textView, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
