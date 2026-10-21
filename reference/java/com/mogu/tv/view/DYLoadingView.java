package com.mogu.tv.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.mogu.tv.R;

/* JADX INFO: loaded from: classes2.dex */
public class DYLoadingView extends View {
    private static final int DURATION = 350;
    private static final int LEFT_COLOR = -49088;
    private static final float LTR_SCALR = 1.3f;
    private static final int MIX_COLOR = -16777216;
    private static final int PAUSE_DUARTION = 80;
    private static final int RIGHT_COLOR = -16716050;
    private static final float RTL_SCALE = 0.7f;
    private static final float SCALE_END_FRACTION = 0.8f;
    private static final float SCALE_START_FRACTION = 0.2f;
    private final float GAP;
    private final float RADIUS;
    private ValueAnimator anim;
    private int color1;
    private int color2;
    private float distance;
    private int duration;
    private float fraction;
    private float gap;
    boolean isAnimCanceled;
    boolean isLtr;
    private Path ltrPath;
    private float ltrScale;
    private int mixColor;
    private Paint mixPaint;
    private Path mixPath;
    private Paint paint1;
    private Paint paint2;
    private int pauseDuration;
    private float radius1;
    private float radius2;
    private Path rtlPath;
    private float rtlScale;
    private float scaleEndFraction;
    private float scaleStartFraction;

    public DYLoadingView(Context context) {
        this(context, null);
    }

    public DYLoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DYLoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float fDp2px = dp2px(6.0f);
        this.RADIUS = fDp2px;
        float fDp2px2 = dp2px(SCALE_END_FRACTION);
        this.GAP = fDp2px2;
        this.isAnimCanceled = false;
        this.isLtr = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DYLoadingView);
        this.radius1 = typedArrayObtainStyledAttributes.getDimension(7, fDp2px);
        this.radius2 = typedArrayObtainStyledAttributes.getDimension(8, fDp2px);
        this.gap = typedArrayObtainStyledAttributes.getDimension(3, fDp2px2);
        this.rtlScale = typedArrayObtainStyledAttributes.getFloat(9, 0.7f);
        this.ltrScale = typedArrayObtainStyledAttributes.getFloat(4, LTR_SCALR);
        this.color1 = typedArrayObtainStyledAttributes.getColor(0, LEFT_COLOR);
        this.color2 = typedArrayObtainStyledAttributes.getColor(1, RIGHT_COLOR);
        this.mixColor = typedArrayObtainStyledAttributes.getColor(5, -16777216);
        this.duration = typedArrayObtainStyledAttributes.getInt(2, DURATION);
        this.pauseDuration = typedArrayObtainStyledAttributes.getInt(6, 80);
        this.scaleStartFraction = typedArrayObtainStyledAttributes.getFloat(11, 0.2f);
        this.scaleEndFraction = typedArrayObtainStyledAttributes.getFloat(10, SCALE_END_FRACTION);
        typedArrayObtainStyledAttributes.recycle();
        checkAttr();
        this.distance = this.gap + this.radius1 + this.radius2;
        initDraw();
        initAnim();
    }

    private void checkAttr() {
        float f = this.radius1;
        if (f <= 0.0f) {
            f = this.RADIUS;
        }
        this.radius1 = f;
        float f2 = this.radius2;
        if (f2 <= 0.0f) {
            f2 = this.RADIUS;
        }
        this.radius2 = f2;
        float f3 = this.gap;
        if (f3 < 0.0f) {
            f3 = this.GAP;
        }
        this.gap = f3;
        float f4 = this.rtlScale;
        if (f4 < 0.0f) {
            f4 = 0.7f;
        }
        this.rtlScale = f4;
        float f5 = this.ltrScale;
        if (f5 < 0.0f) {
            f5 = LTR_SCALR;
        }
        this.ltrScale = f5;
        int i = this.duration;
        if (i <= 0) {
            i = DURATION;
        }
        this.duration = i;
        int i2 = this.pauseDuration;
        if (i2 < 0) {
            i2 = 80;
        }
        this.pauseDuration = i2;
        float f6 = this.scaleStartFraction;
        if (f6 < 0.0f || f6 > 0.5f) {
            this.scaleStartFraction = 0.2f;
        }
        float f7 = this.scaleEndFraction;
        if (f7 < 0.5d || f7 > 1.0f) {
            this.scaleEndFraction = SCALE_END_FRACTION;
        }
    }

    private void initDraw() {
        this.paint1 = new Paint(1);
        this.paint2 = new Paint(1);
        this.mixPaint = new Paint(1);
        this.paint1.setColor(this.color1);
        this.paint2.setColor(this.color2);
        this.mixPaint.setColor(this.mixColor);
        this.ltrPath = new Path();
        this.rtlPath = new Path();
        this.mixPath = new Path();
    }

    private void initAnim() {
        this.fraction = 0.0f;
        stop();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.anim = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.duration);
        int i = this.pauseDuration;
        if (i > 0) {
            this.anim.setStartDelay(i);
            this.anim.setInterpolator(new AccelerateDecelerateInterpolator());
        } else {
            this.anim.setRepeatCount(-1);
            this.anim.setRepeatMode(1);
            this.anim.setInterpolator(new LinearInterpolator());
        }
        this.anim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mogu.tv.view.DYLoadingView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DYLoadingView.this.fraction = valueAnimator.getAnimatedFraction();
                DYLoadingView.this.invalidate();
            }
        });
        this.anim.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.view.DYLoadingView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DYLoadingView dYLoadingView = DYLoadingView.this;
                dYLoadingView.isLtr = !dYLoadingView.isLtr;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                DYLoadingView dYLoadingView = DYLoadingView.this;
                dYLoadingView.isLtr = !dYLoadingView.isLtr;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                DYLoadingView.this.isAnimCanceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                try {
                    if (DYLoadingView.this.isAnimCanceled || DYLoadingView.this.anim == null || DYLoadingView.this.getContext() == null) {
                        return;
                    }
                    DYLoadingView.this.anim.start();
                } catch (Exception unused) {
                }
            }
        });
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        float fMax = Math.max(Math.max(this.rtlScale, this.ltrScale), 1.0f);
        if (mode != 1073741824) {
            size = (int) (this.gap + (((this.radius1 * 2.0f) + (this.radius2 * 2.0f)) * fMax) + dp2px(1.0f));
        }
        if (mode2 != 1073741824) {
            size2 = (int) ((Math.max(this.radius1, this.radius2) * 2.0f * fMax) + dp2px(1.0f));
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        Paint paint;
        Paint paint2;
        float f3;
        float f4;
        float f5;
        super.onDraw(canvas);
        float measuredHeight = getMeasuredHeight() / 2.0f;
        if (this.isLtr) {
            f = this.radius1;
            f2 = this.radius2;
            paint = this.paint1;
            paint2 = this.paint2;
        } else {
            f = this.radius2;
            f2 = this.radius1;
            paint = this.paint2;
            paint2 = this.paint1;
        }
        float measuredWidth = getMeasuredWidth() / 2.0f;
        float f6 = this.distance;
        float f7 = (measuredWidth - (f6 / 2.0f)) + (f6 * this.fraction);
        float measuredWidth2 = getMeasuredWidth() / 2.0f;
        float f8 = this.distance;
        float f9 = this.fraction;
        float f10 = (measuredWidth2 + (f8 / 2.0f)) - (f8 * f9);
        float f11 = this.scaleStartFraction;
        if (f9 <= f11) {
            float f12 = (1.0f / f11) * f9;
            f3 = f * (((this.ltrScale - 1.0f) * f12) + 1.0f);
            f4 = ((this.rtlScale - 1.0f) * f12) + 1.0f;
        } else {
            float f13 = this.scaleEndFraction;
            if (f9 >= f13) {
                float f14 = (f9 - 1.0f) / (f13 - 1.0f);
                f3 = f * (((this.ltrScale - 1.0f) * f14) + 1.0f);
                f5 = f2 * (((this.rtlScale - 1.0f) * f14) + 1.0f);
            } else {
                f3 = f * this.ltrScale;
                f4 = this.rtlScale;
            }
            this.ltrPath.reset();
            this.ltrPath.addCircle(f7, measuredHeight, f3, Path.Direction.CW);
            this.rtlPath.reset();
            this.rtlPath.addCircle(f10, measuredHeight, f5, Path.Direction.CW);
            this.mixPath.op(this.ltrPath, this.rtlPath, Path.Op.INTERSECT);
            canvas.drawPath(this.ltrPath, paint);
            canvas.drawPath(this.rtlPath, paint2);
            canvas.drawPath(this.mixPath, this.mixPaint);
        }
        f5 = f2 * f4;
        this.ltrPath.reset();
        this.ltrPath.addCircle(f7, measuredHeight, f3, Path.Direction.CW);
        this.rtlPath.reset();
        this.rtlPath.addCircle(f10, measuredHeight, f5, Path.Direction.CW);
        this.mixPath.op(this.ltrPath, this.rtlPath, Path.Op.INTERSECT);
        canvas.drawPath(this.ltrPath, paint);
        canvas.drawPath(this.rtlPath, paint2);
        canvas.drawPath(this.mixPath, this.mixPaint);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        stop();
        super.onDetachedFromWindow();
    }

    private float dp2px(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    public void stop() {
        ValueAnimator valueAnimator = this.anim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.anim = null;
        }
    }

    public void start() {
        if (this.anim == null) {
            initAnim();
        }
        if (this.anim.isRunning()) {
            this.anim.cancel();
        }
        post(new Runnable() { // from class: com.mogu.tv.view.DYLoadingView.3
            @Override // java.lang.Runnable
            public void run() {
                DYLoadingView.this.isAnimCanceled = false;
                DYLoadingView.this.isLtr = false;
                try {
                    DYLoadingView.this.anim.start();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public void setRadius(float f, float f2, float f3) {
        stop();
        this.radius1 = f;
        this.radius2 = f2;
        this.gap = f3;
        checkAttr();
        this.distance = f3 + f + f2;
        requestLayout();
    }

    public void setColors(int i, int i2, int i3) {
        this.color1 = i;
        this.color2 = i2;
        this.mixColor = i2;
        checkAttr();
        this.paint1.setColor(i);
        this.paint2.setColor(i2);
        this.mixPaint.setColor(i3);
        invalidate();
    }

    public void setDuration(int i, int i2) {
        this.duration = i;
        this.pauseDuration = i2;
        checkAttr();
        initAnim();
    }

    public void setScales(float f, float f2) {
        stop();
        this.ltrScale = f;
        this.rtlScale = f2;
        checkAttr();
        requestLayout();
    }

    public void setStartEndFraction(float f, float f2) {
        this.scaleStartFraction = f;
        this.scaleEndFraction = f2;
        checkAttr();
        invalidate();
    }

    public float getRadius1() {
        return this.radius1;
    }

    public float getRadius2() {
        return this.radius2;
    }

    public float getGap() {
        return this.gap;
    }

    public float getRtlScale() {
        return this.rtlScale;
    }

    public float getLtrScale() {
        return this.ltrScale;
    }

    public int getColor1() {
        return this.color1;
    }

    public int getColor2() {
        return this.color2;
    }

    public int getMixColor() {
        return this.mixColor;
    }

    public int getDuration() {
        return this.duration;
    }

    public int getPauseDuration() {
        return this.pauseDuration;
    }

    public float getScaleStartFraction() {
        return this.scaleStartFraction;
    }

    public float getScaleEndFraction() {
        return this.scaleEndFraction;
    }
}
