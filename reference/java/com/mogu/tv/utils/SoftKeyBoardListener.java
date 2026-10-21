package com.mogu.tv.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes2.dex */
public class SoftKeyBoardListener {
    private ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.mogu.tv.utils.SoftKeyBoardListener.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (SoftKeyBoardListener.this.rootView == null) {
                SoftKeyBoardListener.this.rootView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                return;
            }
            Rect rect = new Rect();
            SoftKeyBoardListener.this.rootView.getWindowVisibleDisplayFrame(rect);
            int iHeight = rect.height();
            if (SoftKeyBoardListener.this.rootViewVisibleHeight == 0) {
                SoftKeyBoardListener.this.rootViewVisibleHeight = iHeight;
                return;
            }
            if (SoftKeyBoardListener.this.rootViewVisibleHeight == iHeight) {
                return;
            }
            if (SoftKeyBoardListener.this.rootViewVisibleHeight - iHeight > 200) {
                if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                    SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardShow(SoftKeyBoardListener.this.rootViewVisibleHeight - iHeight);
                }
                SoftKeyBoardListener.this.rootViewVisibleHeight = iHeight;
            } else if (iHeight - SoftKeyBoardListener.this.rootViewVisibleHeight > 200) {
                if (SoftKeyBoardListener.this.onSoftKeyBoardChangeListener != null) {
                    SoftKeyBoardListener.this.onSoftKeyBoardChangeListener.keyBoardHide(iHeight - SoftKeyBoardListener.this.rootViewVisibleHeight);
                }
                SoftKeyBoardListener.this.rootViewVisibleHeight = iHeight;
            }
        }
    };
    private OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener;
    private View rootView;
    int rootViewVisibleHeight;

    public interface OnSoftKeyBoardChangeListener {
        void keyBoardHide(int i);

        void keyBoardShow(int i);
    }

    public SoftKeyBoardListener(Activity activity, OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        if (activity == null) {
            return;
        }
        this.onSoftKeyBoardChangeListener = onSoftKeyBoardChangeListener;
        View decorView = activity.getWindow().getDecorView();
        this.rootView = decorView;
        if (decorView == null) {
            return;
        }
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.mGlobalLayoutListener);
    }

    public void setOnSoftKeyBoardChangeListener(OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        this.onSoftKeyBoardChangeListener = onSoftKeyBoardChangeListener;
        if (onSoftKeyBoardChangeListener == null) {
            this.rootView.getViewTreeObserver().removeOnGlobalLayoutListener(this.mGlobalLayoutListener);
            this.rootView = null;
        }
    }
}
