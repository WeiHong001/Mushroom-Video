package com.mogu.tv.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes2.dex */
public class PhotoViewPager extends ViewPager {
    public PhotoViewPager(Context context) {
        super(context);
    }

    public PhotoViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (ArrayIndexOutOfBoundsException unused) {
            Log.e("TAG", "hacky viewpager error2");
            return false;
        } catch (IllegalArgumentException unused2) {
            Log.e("TAG", "hacky viewpager error1");
            return false;
        }
    }
}
