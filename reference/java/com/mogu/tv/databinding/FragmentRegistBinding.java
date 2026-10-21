package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentRegistBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final LinearLayout llHead;
    public final MagicIndicator magicIndicator;
    private final LinearLayout rootView;
    public final ViewPager2 viewPager;

    private FragmentRegistBinding(LinearLayout linearLayout, HeaderLayoutBinding headerLayoutBinding, LinearLayout linearLayout2, MagicIndicator magicIndicator, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.headLayout = headerLayoutBinding;
        this.llHead = linearLayout2;
        this.magicIndicator = magicIndicator;
        this.viewPager = viewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentRegistBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentRegistBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_regist, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentRegistBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            LinearLayout linearLayout = (LinearLayout) view;
            i = R.id.magicIndicator;
            MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
            if (magicIndicator != null) {
                i = R.id.view_pager;
                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                if (viewPager2 != null) {
                    return new FragmentRegistBinding(linearLayout, headerLayoutBindingBind, linearLayout, magicIndicator, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
