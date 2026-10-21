package com.kotlin.basiclib.widget.layoutmanager;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class CenterScrollListener extends RecyclerView.OnScrollListener {
    private boolean mAutoSet = false;

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        OverFlyingLayoutManager overFlyingLayoutManager = (OverFlyingLayoutManager) recyclerView.getLayoutManager();
        OverFlyingLayoutManager.OnPageChangeListener onPageChangeListener = overFlyingLayoutManager.onPageChangeListener;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
        if (i != 0) {
            if (i == 1 || i == 2) {
                this.mAutoSet = false;
                return;
            }
            return;
        }
        if (this.mAutoSet) {
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(overFlyingLayoutManager.getCurrentPosition());
            }
            this.mAutoSet = false;
            return;
        }
        int offsetToCenter = overFlyingLayoutManager.getOffsetToCenter();
        if (offsetToCenter != 0) {
            if (overFlyingLayoutManager.getOrientation() == 1) {
                recyclerView.smoothScrollBy(0, offsetToCenter);
            } else {
                recyclerView.smoothScrollBy(offsetToCenter, 0);
            }
            this.mAutoSet = true;
            return;
        }
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(overFlyingLayoutManager.getCurrentPosition());
        }
        this.mAutoSet = false;
    }
}
