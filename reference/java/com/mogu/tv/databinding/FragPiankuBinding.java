package com.mogu.tv.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.amogu6.tv.R;
import com.kotlin.basiclib.databinding.HeaderLayoutBinding;
import com.kotlin.basiclib.widget.RefreshLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class FragPiankuBinding implements ViewBinding {
    public final HeaderLayoutBinding headLayout;
    public final ImageView ivMainAd;
    public final ImageView ivReturnTop;
    public final RelativeLayout llHead;
    public final RefreshLayout refreshLayout;
    private final RelativeLayout rootView;
    public final RecyclerView rvLike;
    public final RecyclerView rvList;
    public final RecyclerView rvParentType;
    public final RecyclerView rvTime;
    public final RecyclerView rvchildType;

    private FragPiankuBinding(RelativeLayout relativeLayout, HeaderLayoutBinding headerLayoutBinding, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, RefreshLayout refreshLayout, RecyclerView recyclerView, RecyclerView recyclerView2, RecyclerView recyclerView3, RecyclerView recyclerView4, RecyclerView recyclerView5) {
        this.rootView = relativeLayout;
        this.headLayout = headerLayoutBinding;
        this.ivMainAd = imageView;
        this.ivReturnTop = imageView2;
        this.llHead = relativeLayout2;
        this.refreshLayout = refreshLayout;
        this.rvLike = recyclerView;
        this.rvList = recyclerView2;
        this.rvParentType = recyclerView3;
        this.rvTime = recyclerView4;
        this.rvchildType = recyclerView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragPiankuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragPiankuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frag_pianku, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragPiankuBinding bind(View view) {
        int i = R.id.head_layout;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.head_layout);
        if (viewFindChildViewById != null) {
            HeaderLayoutBinding headerLayoutBindingBind = HeaderLayoutBinding.bind(viewFindChildViewById);
            i = R.id.iv_main_ad;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_main_ad);
            if (imageView != null) {
                i = R.id.iv_returnTop;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_returnTop);
                if (imageView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i = R.id.refresh_layout;
                    RefreshLayout refreshLayout = (RefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                    if (refreshLayout != null) {
                        i = R.id.rvLike;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvLike);
                        if (recyclerView != null) {
                            i = R.id.rv_list;
                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list);
                            if (recyclerView2 != null) {
                                i = R.id.rvParentType;
                                RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvParentType);
                                if (recyclerView3 != null) {
                                    i = R.id.rvTime;
                                    RecyclerView recyclerView4 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvTime);
                                    if (recyclerView4 != null) {
                                        i = R.id.rvchildType;
                                        RecyclerView recyclerView5 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rvchildType);
                                        if (recyclerView5 != null) {
                                            return new FragPiankuBinding(relativeLayout, headerLayoutBindingBind, imageView, imageView2, relativeLayout, refreshLayout, recyclerView, recyclerView2, recyclerView3, recyclerView4, recyclerView5);
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
