package com.kotlin.basiclib.widget.layoutmanager;

import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class CenterSnapHelper extends RecyclerView.OnFlingListener {
    Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private boolean snapToCenter = false;
    private final RecyclerView.OnScrollListener mScrollListener = new RecyclerView.OnScrollListener() { // from class: com.kotlin.basiclib.widget.layoutmanager.CenterSnapHelper.1
        boolean mScrolled = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            BannerLayoutManager bannerLayoutManager = (BannerLayoutManager) recyclerView.getLayoutManager();
            BannerLayoutManager.OnPageChangeListener onPageChangeListener = bannerLayoutManager.onPageChangeListener;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i);
            }
            if (i == 0 && this.mScrolled) {
                this.mScrolled = false;
                if (!CenterSnapHelper.this.snapToCenter) {
                    CenterSnapHelper.this.snapToCenter = true;
                    CenterSnapHelper.this.snapToCenterView(bannerLayoutManager, onPageChangeListener);
                } else {
                    CenterSnapHelper.this.snapToCenter = false;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.mScrolled = true;
        }
    };

    @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
    public boolean onFling(int i, int i2) {
        BannerLayoutManager bannerLayoutManager = (BannerLayoutManager) this.mRecyclerView.getLayoutManager();
        if (bannerLayoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        if (!bannerLayoutManager.getInfinite() && (bannerLayoutManager.mOffset == bannerLayoutManager.getMaxOffset() || bannerLayoutManager.mOffset == bannerLayoutManager.getMinOffset())) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        this.mGravityScroller.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (bannerLayoutManager.mOrientation == 1 && Math.abs(i2) > minFlingVelocity) {
            int currentPosition = bannerLayoutManager.getCurrentPosition();
            int finalY = (int) ((this.mGravityScroller.getFinalY() / bannerLayoutManager.mInterval) / bannerLayoutManager.getDistanceRatio());
            this.mRecyclerView.smoothScrollToPosition(bannerLayoutManager.getReverseLayout() ? currentPosition - finalY : currentPosition + finalY);
            return true;
        }
        if (bannerLayoutManager.mOrientation == 0 && Math.abs(i) > minFlingVelocity) {
            int currentPosition2 = bannerLayoutManager.getCurrentPosition();
            int finalX = (int) ((this.mGravityScroller.getFinalX() / bannerLayoutManager.mInterval) / bannerLayoutManager.getDistanceRatio());
            this.mRecyclerView.smoothScrollToPosition(bannerLayoutManager.getReverseLayout() ? currentPosition2 - finalX : currentPosition2 + finalX);
        }
        return true;
    }

    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof BannerLayoutManager) {
                setupCallbacks();
                this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
                BannerLayoutManager bannerLayoutManager = (BannerLayoutManager) layoutManager;
                snapToCenterView(bannerLayoutManager, bannerLayoutManager.onPageChangeListener);
            }
        }
    }

    void snapToCenterView(BannerLayoutManager bannerLayoutManager, BannerLayoutManager.OnPageChangeListener onPageChangeListener) {
        int offsetToCenter = bannerLayoutManager.getOffsetToCenter();
        if (offsetToCenter != 0) {
            if (bannerLayoutManager.getOrientation() == 1) {
                this.mRecyclerView.smoothScrollBy(0, offsetToCenter);
            } else {
                this.mRecyclerView.smoothScrollBy(offsetToCenter, 0);
            }
        } else {
            this.snapToCenter = false;
        }
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(bannerLayoutManager.getCurrentPosition());
        }
    }

    void setupCallbacks() throws IllegalStateException {
        if (this.mRecyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.mRecyclerView.addOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(this);
    }

    void destroyCallbacks() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }
}
