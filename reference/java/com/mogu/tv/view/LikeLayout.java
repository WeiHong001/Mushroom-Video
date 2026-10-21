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
import com.umeng.analytics.pro.d;
import java.util.Random;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LikeLayout.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 *2\u00020\u0001:\u0001*B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\b\u0010\"\u001a\u00020\u001cH\u0002J\u0010\u0010#\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0006\u0010$\u001a\u00020\u0012J\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u0010)\u001a\u00020\u0012H\u0002R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R \u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016¨\u0006+"}, d2 = {"Lcom/mogu/tv/view/LikeLayout;", "Landroid/widget/FrameLayout;", d.R, "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "icon", "Landroid/graphics/drawable/Drawable;", "mClickCount", "mHandler", "Lcom/mogu/tv/view/LikeLayout$Companion$LikeLayoutHandler;", "onLikeListener", "Lkotlin/Function0;", "", "getOnLikeListener", "()Lkotlin/jvm/functions/Function0;", "setOnLikeListener", "(Lkotlin/jvm/functions/Function0;)V", "onPauseListener", "getOnPauseListener", "setOnPauseListener", "addHeartView", "x", "", "y", "getHideAnimSet", "Landroid/animation/AnimatorSet;", "view", "Landroid/widget/ImageView;", "getRandomRotate", "getShowAnimSet", "onPause", "onTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "pauseClick", "Companion", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LikeLayout extends FrameLayout {
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
        this.onLikeListener = LikeLayout$onLikeListener$1.INSTANCE;
        this.onPauseListener = LikeLayout$onPauseListener$1.INSTANCE;
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
        this.onLikeListener = LikeLayout$onLikeListener$1.INSTANCE;
        this.onPauseListener = LikeLayout$onPauseListener$1.INSTANCE;
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
        this.onLikeListener = LikeLayout$onLikeListener$1.INSTANCE;
        this.onPauseListener = LikeLayout$onPauseListener$1.INSTANCE;
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
}
