package com.mogu.tv.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import com.amogu6.tv.R;
import java.util.Random;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LikeLayout.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class LikeLayout extends FrameLayout {
    public static final Companion Companion = new Companion();
    private Drawable icon;
    private int mClickCount;
    private final Companion.LikeLayoutHandler mHandler;
    private Function0<Unit> onLikeListener;
    private Function0<Unit> onPauseListener;

    public final Function0<Unit> getOnLikeListener() {
        return this.onLikeListener;
    }

    public final void setOnLikeListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onLikeListener = function0;
    }

    public final Function0<Unit> getOnPauseListener() {
        return this.onPauseListener;
    }

    public final void setOnPauseListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onPauseListener = function0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LikeLayout(Context context) {
        super(context);
        Intrinsics.checkNotNull(context);
        this.onLikeListener = () -> Unit.INSTANCE;
        this.onPauseListener = () -> Unit.INSTANCE;
        Drawable drawable = getResources().getDrawable(R.mipmap.ic_heart);
        Intrinsics.checkNotNullExpressionValue(drawable, "resources.getDrawable(R.mipmap.ic_heart)");
        this.icon = drawable;
        this.mHandler = new Companion.LikeLayoutHandler(this);
        setClipChildren(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LikeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNull(context);
        this.onLikeListener = () -> Unit.INSTANCE;
        this.onPauseListener = () -> Unit.INSTANCE;
        Drawable drawable = getResources().getDrawable(R.mipmap.ic_heart);
        Intrinsics.checkNotNullExpressionValue(drawable, "resources.getDrawable(R.mipmap.ic_heart)");
        this.icon = drawable;
        this.mHandler = new Companion.LikeLayoutHandler(this);
        setClipChildren(false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LikeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNull(context);
        this.onLikeListener = () -> Unit.INSTANCE;
        this.onPauseListener = () -> Unit.INSTANCE;
        Drawable drawable = getResources().getDrawable(R.mipmap.ic_heart);
        Intrinsics.checkNotNullExpressionValue(drawable, "resources.getDrawable(R.mipmap.ic_heart)");
        this.icon = drawable;
        this.mHandler = new Companion.LikeLayoutHandler(this);
        setClipChildren(false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event != null && event.getAction() == 0) {
            float x = event.getX();
            float y = event.getY();
            this.mClickCount++;
            this.mHandler.removeCallbacksAndMessages(null);
            if (this.mClickCount >= 2) {
                addHeartView(x, y);
                this.onLikeListener.invoke();
                this.mHandler.sendEmptyMessageDelayed(1, 500L);
            } else {
                this.mHandler.sendEmptyMessageDelayed(0, 500L);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void pauseClick() {
        if (this.mClickCount == 1) {
            this.onPauseListener.invoke();
        }
        this.mClickCount = 0;
    }

    public final void onPause() {
        this.mClickCount = 0;
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private final void addHeartView(float x, float y) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.icon.getIntrinsicWidth(), this.icon.getIntrinsicHeight());
        layoutParams.leftMargin = (int) (x - (this.icon.getIntrinsicWidth() / 2));
        layoutParams.topMargin = (int) (y - this.icon.getIntrinsicHeight());
        final ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        Matrix matrix = new Matrix();
        matrix.postRotate(getRandomRotate());
        imageView.setImageMatrix(matrix);
        imageView.setImageDrawable(this.icon);
        imageView.setLayoutParams(layoutParams);
        addView(imageView);
        AnimatorSet showAnimSet = getShowAnimSet(imageView);
        final AnimatorSet hideAnimSet = getHideAnimSet(imageView);
        showAnimSet.start();
        showAnimSet.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.view.LikeLayout.addHeartView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                hideAnimSet.start();
            }
        });
        hideAnimSet.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.view.LikeLayout.addHeartView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                LikeLayout.this.removeView(imageView);
            }
        });
    }

    private final AnimatorSet getShowAnimSet(ImageView view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.2f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 1.2f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.setDuration(100L);
        return animatorSet;
    }

    private final AnimatorSet getHideAnimSet(ImageView view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.1f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 2.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 2.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view, "translationY", 0.0f, -150.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        animatorSet.setDuration(500L);
        return animatorSet;
    }

    private final float getRandomRotate() {
        return new Random().nextInt(20) - 10;
    }
    @Override protected void onDetachedFromWindow() {
        onPause();
        super.onDetachedFromWindow();
    }

    public static final class Companion {
        private Companion() { }
        private static final class LikeLayoutHandler extends android.os.Handler {
            private final java.lang.ref.WeakReference<LikeLayout> view;
            LikeLayoutHandler(LikeLayout target) {
                super(android.os.Looper.getMainLooper());
                view=new java.lang.ref.WeakReference<>(target);
            }
            @Override public void handleMessage(android.os.Message message) {
                LikeLayout target=view.get();
                if(target==null)return;
                if(message.what==0)target.pauseClick();
                else if(message.what==1)target.onPause();
            }
        }
    }
}