package com.kotlin.basiclib.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class RVDividerWidthMargin extends RecyclerView.ItemDecoration {
    private Paint mPaint = new Paint(1);
    private int mStrokeWidth;
    private int mWidth;
    private int margin;

    public RVDividerWidthMargin(Context context, int i, int i2, int i3, int i4) {
        this.margin = 0;
        this.mStrokeWidth = 0;
        this.mWidth = 0;
        float f = context.getResources().getDisplayMetrics().density;
        this.margin = (int) (i2 * f);
        this.mWidth = i;
        double d = f;
        Double.isNaN(d);
        double d2 = i3;
        Double.isNaN(d2);
        int i5 = (int) (d * 0.5d * d2);
        this.mStrokeWidth = i5;
        if (i5 < 1) {
            this.mStrokeWidth = 1;
        }
        this.mPaint.setColor(i4);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.set(0, 0, this.mStrokeWidth, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int right = childAt.getRight();
            int top2 = childAt.getTop();
            int bottom = childAt.getBottom();
            int i2 = this.margin;
            canvas.drawLine(right, top2 + i2, right + this.mStrokeWidth, bottom - i2, this.mPaint);
        }
    }
}
