package com.kotlin.basiclib.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public class RVDividerHeightMargin extends RecyclerView.ItemDecoration {
    private Paint mPaint;
    private int mStrokeWidth;
    private int margin;
    private boolean needDraw;

    public RVDividerHeightMargin(Context context) {
        this(context, 0, 1, true);
    }

    public RVDividerHeightMargin(Context context, int i, int i2, boolean z) {
        this.margin = 0;
        this.mStrokeWidth = 0;
        this.needDraw = true;
        this.mPaint = new Paint(1);
        float f = context.getResources().getDisplayMetrics().density;
        this.margin = (int) (i * f);
        this.needDraw = z;
        double d = f;
        Double.isNaN(d);
        double d2 = i2;
        Double.isNaN(d2);
        int i3 = (int) (d * 0.5d * d2);
        this.mStrokeWidth = i3;
        if (i3 < 1) {
            this.mStrokeWidth = 1;
        }
        this.mPaint.setColor(-2236963);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
    }

    public RVDividerHeightMargin(Context context, int i, int i2, boolean z, int i3) {
        this.margin = 0;
        this.mStrokeWidth = 0;
        this.needDraw = true;
        this.mPaint = new Paint(1);
        float f = context.getResources().getDisplayMetrics().density;
        this.margin = (int) (i * f);
        this.needDraw = z;
        double d = f;
        Double.isNaN(d);
        double d2 = i2;
        Double.isNaN(d2);
        int i4 = (int) (d * 0.5d * d2);
        this.mStrokeWidth = i4;
        if (i4 < 1) {
            this.mStrokeWidth = 1;
        }
        this.mPaint.setColor(i3);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getAdapter().getItemViewType(recyclerView.getChildAdapterPosition(view)) == 1365) {
            this.needDraw = false;
            return;
        }
        this.needDraw = true;
        if ("skip".equals(view.getTag())) {
            return;
        }
        rect.set(0, 0, 0, this.mStrokeWidth);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.needDraw) {
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth() - this.margin;
            for (int i = 0; i < childCount; i++) {
                float bottom = recyclerView.getChildAt(i).getBottom();
                canvas.drawLine(this.margin, bottom, width, bottom, this.mPaint);
            }
        }
    }
}
