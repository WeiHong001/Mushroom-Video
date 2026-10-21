package com.mogu.tv.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import com.amogu6.tv.R;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import com.kotlin.basiclib.utils.ScreenUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AnimUtil {

    public interface ValueAnimatorCallback {
        void onPlaying(float f);
    }

    public static void showUpAnimTranslate(View view, AnimatorListenerAdapter animatorListenerAdapter, Long l) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", view.getHeight(), 0.0f);
        objectAnimatorOfFloat.setDuration(l.longValue());
        objectAnimatorOfFloat.addListener(animatorListenerAdapter);
        objectAnimatorOfFloat.start();
    }

    public static void showFABAnimation(View view) {
        ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat("alpha", 1.0f), PropertyValuesHolder.ofFloat("scaleX", 1.0f), PropertyValuesHolder.ofFloat("scaleY", 1.0f)).setDuration(400L).start();
    }

    public static void hideFABAnimation(View view) {
        ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat("alpha", 0.0f), PropertyValuesHolder.ofFloat("scaleX", 0.0f), PropertyValuesHolder.ofFloat("scaleY", 0.0f)).setDuration(400L).start();
    }

    public static void hidndownAnimTranslate(View view, long j, int i) {
        ObjectAnimator.ofFloat(view, "translationY", -ScreenUtils.INSTANCE.dip2px(i), 0.0f).setDuration(j).start();
    }

    public static void hidnUpAnimTranslate(View view, long j, int i) {
        ObjectAnimator.ofFloat(view, "translationY", 0.0f, -ScreenUtils.INSTANCE.dip2px(i)).setDuration(j).start();
    }

    public static void tranlateToRight(View view, long j) {
        ObjectAnimator.ofFloat(view, "translationX", -ScreenUtils.INSTANCE.getScreenWidth(), 0.0f).setDuration(j).start();
    }

    public static Animation getInAnimation(Context context) {
        return (TranslateAnimation) AnimationUtils.loadAnimation(context, R.anim.gift_in);
    }

    public static AnimationSet getOutAnimation(Context context) {
        return (AnimationSet) AnimationUtils.loadAnimation(context, R.anim.gift_out);
    }

    public static void animError(final View view) {
        view.setVisibility(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(700L);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationX", 0.0f, 25.0f, -25.0f, 25.0f, -25.0f, 15.0f, -15.0f, 6.0f, -6.0f, 0.0f));
        animatorSet.start();
        view.postDelayed(new Runnable() { // from class: com.mogu.tv.utils.AnimUtil$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(4);
            }
        }, 5000L);
    }

    public static void animScale(View view) {
        if (view != null) {
            view.setVisibility(0);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, "ScaleX", 0.5f, 1.0f, 0.8f, 0.7f, 1.0f), ObjectAnimator.ofFloat(view, "ScaleY", 0.5f, 1.0f, 0.8f, 0.7f, 1.0f), ObjectAnimator.ofFloat(view, "translationY", view.getHeight(), 0.0f, -view.getHeight(), 0.0f));
            animatorSet.start();
        }
    }

    public static void animRolateAndScale(View view) {
        if (view != null) {
            view.setVisibility(0);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, "ScaleX", 0.9f, 1.0f, 0.9f, 1.0f), ObjectAnimator.ofFloat(view, "ScaleY", 0.9f, 1.0f, 0.9f, 1.0f), ObjectAnimator.ofFloat(view, "rotation", 0.0f, 2520.0f));
            animatorSet.start();
        }
    }

    public static ValueAnimator setValueAnimator(final ValueAnimatorCallback valueAnimatorCallback, float f, float f2, int i) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        valueAnimatorOfFloat.setDuration(i);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mogu.tv.utils.AnimUtil$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                valueAnimatorCallback.onPlaying(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.start();
        return valueAnimatorOfFloat;
    }

    public static void showToBottom(final View view, long j) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", -view.getHeight(), 0.0f);
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.utils.AnimUtil.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                view.setVisibility(0);
            }
        });
        objectAnimatorOfFloat.start();
    }

    public static void HideToUp(final View view, long j) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, -view.getHeight());
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.utils.AnimUtil.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                view.setVisibility(8);
            }
        });
        objectAnimatorOfFloat.start();
    }

    public static void adAnimUpAndDown(View view, long j) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, -60.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.setRepeatCount(20);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.utils.AnimUtil.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        objectAnimatorOfFloat.start();
    }

    public static void adAnimDownAndUp(View view, long j) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, 60.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(j);
        objectAnimatorOfFloat.setRepeatCount(30);
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.mogu.tv.utils.AnimUtil.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
            }
        });
        objectAnimatorOfFloat.start();
    }

    public static TranslateAnimation getBottomInAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 2, 0.0f, 1, 1.0f, 2, 0.0f);
        translateAnimation.setDuration(250L);
        return translateAnimation;
    }

    public static TranslateAnimation getBottomOutAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 2, 0.0f, 1, 0.0f, 2, 1.0f);
        translateAnimation.setDuration(250L);
        return translateAnimation;
    }
}
