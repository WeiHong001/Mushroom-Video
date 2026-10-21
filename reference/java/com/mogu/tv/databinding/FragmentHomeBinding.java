package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.gongwen.marqueen.SimpleMarqueeView;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentHomeBinding implements ViewBinding {
    public final RelativeLayout llTosearch;
    public final MagicIndicator magicIndicator;
    public final RelativeLayout rlNight;
    public final RelativeLayout rlTop;
    private final RelativeLayout rootView;
    public final TextView tvNightMode;
    public final SimpleMarqueeView tvSmv;
    public final ViewPager2 viewPager;

    private FragmentHomeBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, MagicIndicator magicIndicator, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, TextView textView, SimpleMarqueeView simpleMarqueeView, ViewPager2 viewPager2) {
        this.rootView = relativeLayout;
        this.llTosearch = relativeLayout2;
        this.magicIndicator = magicIndicator;
        this.rlNight = relativeLayout3;
        this.rlTop = relativeLayout4;
        this.tvNightMode = textView;
        this.tvSmv = simpleMarqueeView;
        this.viewPager = viewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragmentHomeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_home, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentHomeBinding bind(View view) {
        int i = R.id.ll_tosearch;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.ll_tosearch);
        if (relativeLayout != null) {
            i = R.id.magicIndicator;
            MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
            if (magicIndicator != null) {
                i = R.id.rl_night;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_night);
                if (relativeLayout2 != null) {
                    i = R.id.rl_top;
                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_top);
                    if (relativeLayout3 != null) {
                        i = R.id.tv_night_mode;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_night_mode);
                        if (textView != null) {
                            i = R.id.tv_smv;
                            SimpleMarqueeView simpleMarqueeView = (SimpleMarqueeView) ViewBindings.findChildViewById(view, R.id.tv_smv);
                            if (simpleMarqueeView != null) {
                                i = R.id.view_pager;
                                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                                if (viewPager2 != null) {
                                    return new FragmentHomeBinding((RelativeLayout) view, relativeLayout, magicIndicator, relativeLayout2, relativeLayout3, textView, simpleMarqueeView, viewPager2);
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
