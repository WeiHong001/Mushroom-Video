package com.mogu.tv.view.viewpagerlayoutmanager;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewPagerLayoutManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewPagerLayoutManager extends LinearLayoutManager {
    private final RecyclerView.OnChildAttachStateChangeListener mChildAttachStateChangeListener;
    private int mDrift;
    private OnViewPagerListener mOnViewPagerListener;
    private PagerSnapHelper mPagerSnapHelper;
    private RecyclerView mRecyclerView;

    public ViewPagerLayoutManager(Context context) {
        super(context);
        this.mChildAttachStateChangeListener = new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.mogu.tv.view.viewpagerlayoutmanager.ViewPagerLayoutManager$mChildAttachStateChangeListener$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (ViewPagerLayoutManager.this.mOnViewPagerListener == null || ViewPagerLayoutManager.this.getChildCount() != 1) {
                    return;
                }
                OnViewPagerListener onViewPagerListener = ViewPagerLayoutManager.this.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener);
                onViewPagerListener.onInitComplete();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (ViewPagerLayoutManager.this.mDrift >= 0) {
                    if (ViewPagerLayoutManager.this.mOnViewPagerListener != null) {
                        OnViewPagerListener onViewPagerListener = ViewPagerLayoutManager.this.mOnViewPagerListener;
                        Intrinsics.checkNotNull(onViewPagerListener);
                        onViewPagerListener.onPageRelease(true, ViewPagerLayoutManager.this.getPosition(view));
                    }
                } else if (ViewPagerLayoutManager.this.mOnViewPagerListener != null) {
                    OnViewPagerListener onViewPagerListener2 = ViewPagerLayoutManager.this.mOnViewPagerListener;
                    Intrinsics.checkNotNull(onViewPagerListener2);
                    onViewPagerListener2.onPageRelease(false, ViewPagerLayoutManager.this.getPosition(view));
                }
                OnViewPagerListener onViewPagerListener3 = ViewPagerLayoutManager.this.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener3);
                onViewPagerListener3.onPageRelease(true, ViewPagerLayoutManager.this.getPosition(view));
            }
        };
        init();
    }

    public ViewPagerLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.mChildAttachStateChangeListener = new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.mogu.tv.view.viewpagerlayoutmanager.ViewPagerLayoutManager$mChildAttachStateChangeListener$1
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (ViewPagerLayoutManager.this.mOnViewPagerListener == null || ViewPagerLayoutManager.this.getChildCount() != 1) {
                    return;
                }
                OnViewPagerListener onViewPagerListener = ViewPagerLayoutManager.this.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener);
                onViewPagerListener.onInitComplete();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (ViewPagerLayoutManager.this.mDrift >= 0) {
                    if (ViewPagerLayoutManager.this.mOnViewPagerListener != null) {
                        OnViewPagerListener onViewPagerListener = ViewPagerLayoutManager.this.mOnViewPagerListener;
                        Intrinsics.checkNotNull(onViewPagerListener);
                        onViewPagerListener.onPageRelease(true, ViewPagerLayoutManager.this.getPosition(view));
                    }
                } else if (ViewPagerLayoutManager.this.mOnViewPagerListener != null) {
                    OnViewPagerListener onViewPagerListener2 = ViewPagerLayoutManager.this.mOnViewPagerListener;
                    Intrinsics.checkNotNull(onViewPagerListener2);
                    onViewPagerListener2.onPageRelease(false, ViewPagerLayoutManager.this.getPosition(view));
                }
                OnViewPagerListener onViewPagerListener3 = ViewPagerLayoutManager.this.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener3);
                onViewPagerListener3.onPageRelease(true, ViewPagerLayoutManager.this.getPosition(view));
            }
        };
        init();
    }

    private final void init() {
        this.mPagerSnapHelper = new PagerSnapHelper();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onAttachedToWindow(view);
        PagerSnapHelper pagerSnapHelper = this.mPagerSnapHelper;
        Intrinsics.checkNotNull(pagerSnapHelper);
        pagerSnapHelper.attachToRecyclerView(view);
        this.mRecyclerView = view;
        Intrinsics.checkNotNull(view);
        view.addOnChildAttachStateChangeListener(this.mChildAttachStateChangeListener);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        super.onLayoutChildren(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int state) {
        if (state == 0) {
            PagerSnapHelper pagerSnapHelper = this.mPagerSnapHelper;
            Intrinsics.checkNotNull(pagerSnapHelper);
            View viewFindSnapView = pagerSnapHelper.findSnapView(this);
            if (viewFindSnapView == null) {
                return;
            }
            int position = getPosition(viewFindSnapView);
            if (this.mOnViewPagerListener == null || getChildCount() != 1) {
                return;
            }
            OnViewPagerListener onViewPagerListener = this.mOnViewPagerListener;
            Intrinsics.checkNotNull(onViewPagerListener);
            onViewPagerListener.onPageSelected(position, position == getItemCount() - 1);
            return;
        }
        if (state == 1) {
            PagerSnapHelper pagerSnapHelper2 = this.mPagerSnapHelper;
            Intrinsics.checkNotNull(pagerSnapHelper2);
            View viewFindSnapView2 = pagerSnapHelper2.findSnapView(this);
            if (viewFindSnapView2 != null) {
                getPosition(viewFindSnapView2);
                return;
            }
            return;
        }
        if (state != 2) {
            return;
        }
        PagerSnapHelper pagerSnapHelper3 = this.mPagerSnapHelper;
        Intrinsics.checkNotNull(pagerSnapHelper3);
        View viewFindSnapView3 = pagerSnapHelper3.findSnapView(this);
        if (viewFindSnapView3 != null) {
            getPosition(viewFindSnapView3);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        this.mDrift = dy;
        return super.scrollVerticallyBy(dy, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(recycler, "recycler");
        Intrinsics.checkNotNullParameter(state, "state");
        this.mDrift = dx;
        return super.scrollHorizontallyBy(dx, recycler, state);
    }

    public final void setOnViewPagerListener(OnViewPagerListener listener) {
        this.mOnViewPagerListener = listener;
    }
}

