package com.mogu.tv.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class MNestedScrollView extends NestedScrollView {
    private float xDistance;
    private float xLast;
    private float yDistance;
    private float yLast;

    public MNestedScrollView(Context context) {
        super(context);
    }

    public MNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MNestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.yDistance = 0.0f;
            this.xDistance = 0.0f;
            this.xLast = motionEvent.getX();
            this.yLast = motionEvent.getY();
        } else if (action == 2) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.xDistance += Math.abs(x - this.xLast);
            float fAbs = this.yDistance + Math.abs(y - this.yLast);
            this.yDistance = fAbs;
            this.xLast = x;
            this.yLast = y;
            if (this.xDistance > fAbs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
