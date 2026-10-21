package com.mogu.tv.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatEditText;

/* JADX INFO: loaded from: classes2.dex */
public class TopScrollEditText extends AppCompatEditText {
    private String TopicTile;
    private boolean mBottomFlag;
    private int mOffsetHeight;

    private void init() {
    }

    public void setTopicTile(String str) {
        this.TopicTile = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.TopicTile = TipsEditText.TOPIC_SEPARATE + str + TipsEditText.TOPIC_SEPARATE;
    }

    public String getEditInputText() {
        if (TextUtils.isEmpty(this.TopicTile)) {
            return getText().toString();
        }
        return getText().toString().substring(this.TopicTile.length());
    }

    public TopScrollEditText(Context context) {
        super(context);
        this.mBottomFlag = false;
        this.TopicTile = "";
        init();
    }

    public TopScrollEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBottomFlag = false;
        this.TopicTile = "";
        init();
    }

    public TopScrollEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBottomFlag = false;
        this.TopicTile = "";
        init();
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        if (TextUtils.isEmpty(this.TopicTile)) {
            return;
        }
        int length = this.TopicTile.toString().length();
        int length2 = this.TopicTile.length() + 0;
        if (i < 0 || i > length2) {
            return;
        }
        int i3 = length2 + 1;
        if (i3 > length) {
            setSelection(length2);
        } else {
            setSelection(i3);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int height = getLayout().getHeight();
        int totalPaddingTop = getTotalPaddingTop();
        this.mOffsetHeight = ((height + totalPaddingTop) + getTotalPaddingBottom()) - getHeight();
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mBottomFlag = false;
        }
        if (this.mBottomFlag) {
            motionEvent.setAction(3);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if (!this.mBottomFlag) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return zOnTouchEvent;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (i2 == this.mOffsetHeight || i2 == 0) {
            getParent().requestDisallowInterceptTouchEvent(false);
            this.mBottomFlag = true;
        }
    }
}
