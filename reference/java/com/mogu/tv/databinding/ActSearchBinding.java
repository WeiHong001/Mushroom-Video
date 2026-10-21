package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.google.android.flexbox.FlexboxLayout;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes2.dex */
public final class ActSearchBinding implements ViewBinding {
    public final EditText etSearch;
    public final FlexboxLayout flexLables;
    public final FlexboxLayout flexLayout;
    public final ImageView ivClear;
    public final ImageView ivClearContent;
    public final ImageView ivMainAd;
    public final ImageView ivSearchleft;
    public final LinearLayout llMore;
    public final LinearLayout llSearchfirst;
    public final LinearLayout llSearchresult;
    public final MagicIndicator magicIndicator;
    public final RelativeLayout rlHead;
    private final LinearLayout rootView;
    public final RecyclerView rvHotSearch;
    public final RecyclerView rvUser;
    public final TextView tvMore;
    public final TextView tvMoreIc;
    public final TextView tvTosearch;
    public final TextView tvTypename;
    public final ViewPager2 viewPager;

    private ActSearchBinding(LinearLayout linearLayout, EditText editText, FlexboxLayout flexboxLayout, FlexboxLayout flexboxLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, MagicIndicator magicIndicator, RelativeLayout relativeLayout, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView, TextView textView2, TextView textView3, TextView textView4, ViewPager2 viewPager2) {
        this.rootView = linearLayout;
        this.etSearch = editText;
        this.flexLables = flexboxLayout;
        this.flexLayout = flexboxLayout2;
        this.ivClear = imageView;
        this.ivClearContent = imageView2;
        this.ivMainAd = imageView3;
        this.ivSearchleft = imageView4;
        this.llMore = linearLayout2;
        this.llSearchfirst = linearLayout3;
        this.llSearchresult = linearLayout4;
        this.magicIndicator = magicIndicator;
        this.rlHead = relativeLayout;
        this.rvHotSearch = recyclerView;
        this.rvUser = recyclerView2;
        this.tvMore = textView;
        this.tvMoreIc = textView2;
        this.tvTosearch = textView3;
        this.tvTypename = textView4;
        this.viewPager = viewPager2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ActSearchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActSearchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.act_search, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActSearchBinding bind(View view) {
        int i = R.id.et_search;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
        if (editText != null) {
            i = R.id.flexLables;
            FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, R.id.flexLables);
            if (flexboxLayout != null) {
                i = R.id.flex_layout;
                FlexboxLayout flexboxLayout2 = (FlexboxLayout) ViewBindings.findChildViewById(view, R.id.flex_layout);
                if (flexboxLayout2 != null) {
                    i = R.id.iv_clear;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_clear);
                    if (imageView != null) {
                        i = R.id.iv_clear_content;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_clear_content);
                        if (imageView2 != null) {
                            i = R.id.iv_main_ad;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_ad);
                            if (imageView3 != null) {
                                i = R.id.iv_searchleft;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_searchleft);
                                if (imageView4 != null) {
                                    i = R.id.ll_more;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_more);
                                    if (linearLayout != null) {
                                        i = R.id.ll_searchfirst;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_searchfirst);
                                        if (linearLayout2 != null) {
                                            i = R.id.ll_searchresult;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_searchresult);
                                            if (linearLayout3 != null) {
                                                i = R.id.magicIndicator;
                                                MagicIndicator magicIndicator = (MagicIndicator) ViewBindings.findChildViewById(view, R.id.magicIndicator);
                                                if (magicIndicator != null) {
                                                    i = R.id.rl_head;
                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_head);
                                                    if (relativeLayout != null) {
                                                        i = R.id.rv_hot_search;
                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_hot_search);
                                                        if (recyclerView != null) {
                                                            i = R.id.rvUser;
                                                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvUser);
                                                            if (recyclerView2 != null) {
                                                                i = R.id.tv_more;
                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_more);
                                                                if (textView != null) {
                                                                    i = R.id.tvMoreIc;
                                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvMoreIc);
                                                                    if (textView2 != null) {
                                                                        i = R.id.tv_tosearch;
                                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tosearch);
                                                                        if (textView3 != null) {
                                                                            i = R.id.tv_typename;
                                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_typename);
                                                                            if (textView4 != null) {
                                                                                i = R.id.view_pager;
                                                                                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, R.id.view_pager);
                                                                                if (viewPager2 != null) {
                                                                                    return new ActSearchBinding((LinearLayout) view, editText, flexboxLayout, flexboxLayout2, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, magicIndicator, relativeLayout, recyclerView, recyclerView2, textView, textView2, textView3, textView4, viewPager2);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
