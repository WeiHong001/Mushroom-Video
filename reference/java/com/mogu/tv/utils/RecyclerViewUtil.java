package com.mogu.tv.utils;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class RecyclerViewUtil {
    private RecyclerView recyclerView;
    private int currentState = -1;
    private Handler cancelScrollHandler = new Handler();
    private Runnable cancelScrollRunnable = new Runnable() { // from class: com.mogu.tv.utils.RecyclerViewUtil.1
        @Override // java.lang.Runnable
        public void run() {
            if (RecyclerViewUtil.this.recyclerView != null) {
                RecyclerViewUtil.this.currentState = -1;
                RecyclerViewUtil.this.recyclerView.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, 0.0f, 0.0f, 0));
            }
        }
    };
    private RecyclerView.OnScrollListener mScrollListener = new RecyclerView.OnScrollListener() { // from class: com.mogu.tv.utils.RecyclerViewUtil.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            RecyclerViewUtil.this.currentState = i;
            Log.e("bottomSheetAdapter", "newState:: " + i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            if (RecyclerViewUtil.this.cancelScrollHandler == null || RecyclerViewUtil.this.cancelScrollRunnable == null) {
                return;
            }
            RecyclerViewUtil.this.cancelScrollHandler.removeCallbacks(RecyclerViewUtil.this.cancelScrollRunnable);
            if (RecyclerViewUtil.this.currentState == 2) {
                RecyclerViewUtil.this.cancelScrollHandler.postDelayed(RecyclerViewUtil.this.cancelScrollRunnable, 20L);
            }
        }
    };

    public void initScrollListener(RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
        RecyclerView.OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            recyclerView.addOnScrollListener(onScrollListener);
        }
    }

    public void destroy() {
        RecyclerView.OnScrollListener onScrollListener;
        Runnable runnable;
        Handler handler = this.cancelScrollHandler;
        if (handler != null && (runnable = this.cancelScrollRunnable) != null) {
            handler.removeCallbacks(runnable);
            this.cancelScrollHandler = null;
        }
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || (onScrollListener = this.mScrollListener) == null) {
            return;
        }
        recyclerView.removeOnScrollListener(onScrollListener);
        this.recyclerView = null;
        this.mScrollListener = null;
    }
}
