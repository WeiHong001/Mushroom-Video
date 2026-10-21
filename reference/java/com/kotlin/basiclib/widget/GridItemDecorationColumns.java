package com.kotlin.basiclib.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class GridItemDecorationColumns extends RecyclerView.ItemDecoration {
    private int mGridSize;
    private boolean mNeedLeftSpacing = false;
    private int mSizeGridSpacingPx;

    public GridItemDecorationColumns(int i, int i2) {
        this.mSizeGridSpacingPx = i;
        this.mGridSize = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        float width = recyclerView.getWidth();
        float f = this.mSizeGridSpacingPx;
        int i = this.mGridSize;
        int width2 = (recyclerView.getWidth() / this.mGridSize) - ((int) ((width - (f * (i - 1))) / i));
        int viewAdapterPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewAdapterPosition();
        if (viewAdapterPosition < this.mGridSize) {
            rect.top = 0;
        } else {
            rect.top = this.mSizeGridSpacingPx;
        }
        int i2 = this.mGridSize;
        if (viewAdapterPosition % i2 == 0) {
            rect.left = 0;
            rect.right = width2;
            this.mNeedLeftSpacing = true;
        } else if ((viewAdapterPosition + 1) % i2 == 0) {
            this.mNeedLeftSpacing = false;
            rect.right = 0;
            rect.left = width2;
        } else if (this.mNeedLeftSpacing) {
            this.mNeedLeftSpacing = false;
            rect.left = this.mSizeGridSpacingPx - width2;
            if ((viewAdapterPosition + 2) % this.mGridSize == 0) {
                rect.right = this.mSizeGridSpacingPx - width2;
            } else {
                rect.right = this.mSizeGridSpacingPx / 2;
            }
        } else if ((viewAdapterPosition + 2) % i2 == 0) {
            this.mNeedLeftSpacing = false;
            rect.left = this.mSizeGridSpacingPx / 2;
            rect.right = this.mSizeGridSpacingPx - width2;
        } else {
            this.mNeedLeftSpacing = false;
            rect.left = this.mSizeGridSpacingPx / 2;
            rect.right = this.mSizeGridSpacingPx / 2;
        }
        rect.bottom = 0;
    }
}
