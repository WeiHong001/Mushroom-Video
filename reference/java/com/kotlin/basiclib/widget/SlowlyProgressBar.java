package com.kotlin.basiclib.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SlowlyProgressBar {
    private static final int StartAnimation = 18;
    private Handler handler;
    private int height;
    private int i;
    private boolean isStart;
    private int phoneWidth;
    private int progress;
    private ProgressBar progressBar;
    private List<Integer> progressQuery;
    private int record;
    private List<Integer> speedQuery;
    private int thisSpeed;
    private int thisWidth;
    private View view;
    private int width;

    static /* synthetic */ int access$308(SlowlyProgressBar slowlyProgressBar) {
        int i = slowlyProgressBar.i;
        slowlyProgressBar.i = i + 1;
        return i;
    }

    public SlowlyProgressBar(View view, int i) {
        this.thisWidth = 0;
        this.thisSpeed = 0;
        this.progress = 0;
        this.record = 0;
        this.width = 10;
        this.height = 3;
        this.isStart = false;
        this.phoneWidth = 0;
        this.i = 0;
        this.progressQuery = new ArrayList();
        this.speedQuery = new ArrayList();
        initHandler();
        this.phoneWidth = i;
        this.view = view;
    }

    public SlowlyProgressBar(ProgressBar progressBar) {
        this.thisWidth = 0;
        this.thisSpeed = 0;
        this.progress = 0;
        this.record = 0;
        this.width = 10;
        this.height = 3;
        this.isStart = false;
        this.phoneWidth = 0;
        this.i = 0;
        this.progressQuery = new ArrayList();
        this.speedQuery = new ArrayList();
        this.progressBar = progressBar;
    }

    public void destroy() {
        List<Integer> list = this.progressQuery;
        if (list != null) {
            list.clear();
            this.progressQuery = null;
        }
        List<Integer> list2 = this.speedQuery;
        if (list2 != null) {
            list2.clear();
            this.speedQuery = null;
        }
        this.view = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
    }

    public void onProgressStart() {
        this.progressBar.setVisibility(0);
        this.progressBar.setAlpha(1.0f);
        this.isStart = false;
    }

    public void onProgressChange(int i) {
        int progress = this.progressBar.getProgress();
        if (i >= 100 && !this.isStart) {
            this.isStart = true;
            this.progressBar.setProgress(i);
            startDismissAnimation(this.progressBar.getProgress());
            return;
        }
        startProgressAnimation(i, progress);
    }

    public void setProgress(int i) {
        if (i > 100 || i <= 0) {
            return;
        }
        this.width = (i * this.phoneWidth) / 100;
        int size = this.progressQuery.size();
        if (size != 0) {
            size = this.progressQuery.get(size - 1).intValue();
        }
        Log.d("zzzzz", "width - size = " + (this.width - size));
        int i2 = this.width;
        int i3 = i2 - size;
        int i4 = 2;
        if (i3 > 100) {
            double d = i3 * 2;
            Double.isNaN(d);
            i4 = (int) (d / 100.0d);
        }
        this.progressQuery.add(Integer.valueOf(i2));
        this.speedQuery.add(Integer.valueOf(i4));
        if (this.isStart) {
            return;
        }
        this.isStart = true;
        this.handler.sendEmptyMessage(18);
    }

    public SlowlyProgressBar setViewHeight(int i) {
        this.height = i;
        return this;
    }

    private void initHandler() {
        this.handler = new Handler() { // from class: com.kotlin.basiclib.widget.SlowlyProgressBar.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what != 18) {
                    return;
                }
                if (SlowlyProgressBar.this.progress >= SlowlyProgressBar.this.thisWidth) {
                    if (SlowlyProgressBar.this.progressQuery.size() == SlowlyProgressBar.this.i) {
                        Log.d("zzzzz", "break");
                        if (SlowlyProgressBar.this.progress >= 100) {
                            SlowlyProgressBar.this.view.setVisibility(4);
                        }
                        SlowlyProgressBar.this.isStart = false;
                        return;
                    }
                    Log.d("zzzzz", "size is " + SlowlyProgressBar.this.progressQuery.size());
                    SlowlyProgressBar slowlyProgressBar = SlowlyProgressBar.this;
                    slowlyProgressBar.thisWidth = ((Integer) slowlyProgressBar.progressQuery.get(SlowlyProgressBar.this.i)).intValue();
                    SlowlyProgressBar slowlyProgressBar2 = SlowlyProgressBar.this;
                    slowlyProgressBar2.thisSpeed = ((Integer) slowlyProgressBar2.speedQuery.get(SlowlyProgressBar.this.i)).intValue();
                    SlowlyProgressBar.access$308(SlowlyProgressBar.this);
                }
                SlowlyProgressBar slowlyProgressBar3 = SlowlyProgressBar.this;
                slowlyProgressBar3.move(slowlyProgressBar3.thisSpeed, SlowlyProgressBar.this.view.getLayoutParams().width);
                Log.d("zzzzz", "send 100 " + SlowlyProgressBar.this.thisSpeed);
                SlowlyProgressBar.this.handler.sendEmptyMessageDelayed(18, 1L);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void move(int i, int i2) {
        if (i > 9) {
            i = 9;
        }
        int i3 = this.record * i;
        this.progress = i3;
        if (i3 >= i2) {
            this.view.setLayoutParams(new RelativeLayout.LayoutParams(this.progress, this.height * 3));
        } else {
            Log.d("zzzzz", "hit " + this.progress + "---" + i2);
        }
        this.record++;
    }

    private void startProgressAnimation(int i, int i2) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this.progressBar, NotificationCompat.CATEGORY_PROGRESS, i2, i);
        objectAnimatorOfInt.setDuration(200L);
        objectAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfInt.start();
    }

    private void startDismissAnimation(final int i) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.progressBar, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(1500L);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kotlin.basiclib.widget.SlowlyProgressBar.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SlowlyProgressBar.this.progressBar.setProgress((int) (i + ((100 - i) * valueAnimator.getAnimatedFraction())));
            }
        });
        objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kotlin.basiclib.widget.SlowlyProgressBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SlowlyProgressBar.this.progressBar.setProgress(0);
                SlowlyProgressBar.this.progressBar.setVisibility(8);
                SlowlyProgressBar.this.isStart = false;
            }
        });
        objectAnimatorOfFloat.start();
    }
}
