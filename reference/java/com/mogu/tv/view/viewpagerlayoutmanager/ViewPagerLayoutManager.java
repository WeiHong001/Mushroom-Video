package com.mogu.tv.view.viewpagerlayoutmanager;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.umeng.analytics.pro.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewPagerLayoutManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B!\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u001c\u0010\u0017\u001a\u00020\u00142\n\u0010\u0018\u001a\u00060\u0019R\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0006H\u0016J$\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\n\u0010\u0018\u001a\u00060\u0019R\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J$\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\n\u0010\u0018\u001a\u00060\u0019R\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\u00142\b\u0010\"\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/mogu/tv/view/viewpagerlayoutmanager/ViewPagerLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", d.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "orientation", "", "reverseLayout", "", "(Landroid/content/Context;IZ)V", "mChildAttachStateChangeListener", "Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;", "mDrift", "mOnViewPagerListener", "Lcom/mogu/tv/view/viewpagerlayoutmanager/OnViewPagerListener;", "mPagerSnapHelper", "Landroidx/recyclerview/widget/PagerSnapHelper;", "mRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "init", "", "onAttachedToWindow", "view", "onLayoutChildren", "recycler", "Landroidx/recyclerview/widget/RecyclerView$Recycler;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "onScrollStateChanged", "scrollHorizontallyBy", "dx", "scrollVerticallyBy", "dy", "setOnViewPagerListener", "listener", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
                if (this.this$0.mOnViewPagerListener == null || this.this$0.getChildCount() != 1) {
                    return;
                }
                OnViewPagerListener onViewPagerListener = this.this$0.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener);
                onViewPagerListener.onInitComplete();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (this.this$0.mDrift >= 0) {
                    if (this.this$0.mOnViewPagerListener != null) {
                        OnViewPagerListener onViewPagerListener = this.this$0.mOnViewPagerListener;
                        Intrinsics.checkNotNull(onViewPagerListener);
                        onViewPagerListener.onPageRelease(true, this.this$0.getPosition(view));
                    }
                } else if (this.this$0.mOnViewPagerListener != null) {
                    OnViewPagerListener onViewPagerListener2 = this.this$0.mOnViewPagerListener;
                    Intrinsics.checkNotNull(onViewPagerListener2);
                    onViewPagerListener2.onPageRelease(false, this.this$0.getPosition(view));
                }
                OnViewPagerListener onViewPagerListener3 = this.this$0.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener3);
                onViewPagerListener3.onPageRelease(true, this.this$0.getPosition(view));
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
                if (this.this$0.mOnViewPagerListener == null || this.this$0.getChildCount() != 1) {
                    return;
                }
                OnViewPagerListener onViewPagerListener = this.this$0.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener);
                onViewPagerListener.onInitComplete();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                if (this.this$0.mDrift >= 0) {
                    if (this.this$0.mOnViewPagerListener != null) {
                        OnViewPagerListener onViewPagerListener = this.this$0.mOnViewPagerListener;
                        Intrinsics.checkNotNull(onViewPagerListener);
                        onViewPagerListener.onPageRelease(true, this.this$0.getPosition(view));
                    }
                } else if (this.this$0.mOnViewPagerListener != null) {
                    OnViewPagerListener onViewPagerListener2 = this.this$0.mOnViewPagerListener;
                    Intrinsics.checkNotNull(onViewPagerListener2);
                    onViewPagerListener2.onPageRelease(false, this.this$0.getPosition(view));
                }
                OnViewPagerListener onViewPagerListener3 = this.this$0.mOnViewPagerListener;
                Intrinsics.checkNotNull(onViewPagerListener3);
                onViewPagerListener3.onPageRelease(true, this.this$0.getPosition(view));
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
