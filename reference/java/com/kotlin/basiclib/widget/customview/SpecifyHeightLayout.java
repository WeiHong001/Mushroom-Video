package com.kotlin.basiclib.widget.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class SpecifyHeightLayout extends ViewGroup {
    private int mGraity;
    private int mHeight;
    private int mOright;

    public SpecifyHeightLayout(Context context) {
        super(context);
        this.mHeight = Integer.MIN_VALUE;
        this.mGraity = 48;
    }

    public SpecifyHeightLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHeight = Integer.MIN_VALUE;
        this.mGraity = 48;
    }

    public SpecifyHeightLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHeight = Integer.MIN_VALUE;
        this.mGraity = 48;
    }

    public void setOriginHeight(int i) {
        this.mOright = i;
    }

    public void resetOrightHeight() {
        setHeight(this.mOright);
    }

    public void setHeight(int i) {
        this.mHeight = i;
        requestLayout();
    }

    public int getHeightX() {
        return this.mHeight;
    }

    public void setGravity(int i) {
        this.mGraity = i;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (getChildCount() <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        setMeasuredDimension(size, this.mHeight);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int i5 = i4 - i2;
            int i6 = this.mGraity;
            if (i6 == 80) {
                childAt.layout(0, i5 - childAt.getMeasuredHeight(), i3 - i, i5);
            } else if (i6 == 48) {
                childAt.layout(0, 0, i3 - i, childAt.getMeasuredHeight());
            }
        }
    }
}
