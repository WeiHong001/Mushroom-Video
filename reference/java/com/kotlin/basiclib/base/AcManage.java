package com.kotlin.basiclib.base;

import android.app.Activity;
import android.content.Context;
import android.os.Process;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class AcManage {
    private static Stack<Activity> activityStack;
    private static AcManage instance;
    public boolean isExit;
    public Activity mMainActivity;

    private AcManage() {
    }

    public static AcManage getAppManager() {
        if (instance == null) {
            instance = new AcManage();
        }
        return instance;
    }

    public void addActivity(Activity activity) {
        this.isExit = false;
        if (activityStack == null) {
            activityStack = new Stack<>();
        }
        activityStack.add(activity);
        if (activity.getClass().getName().equals("com.mogu.tv.MainActivity")) {
            this.mMainActivity = activity;
        }
    }

    public void showView(View view) {
        if (currentActivity() == null || currentActivity().isFinishing()) {
            return;
        }
        ((ViewGroup) currentActivity().getWindow().getDecorView()).addView(view);
    }

    public void hideView(View view) {
        if (currentActivity() == null || currentActivity().isFinishing()) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) currentActivity().getWindow().getDecorView();
        if (viewGroup.indexOfChild(view) != -1) {
            viewGroup.removeView(view);
        }
    }

    public Activity currentActivity() {
        return activityStack.lastElement();
    }

    public int SameActivitySize(Class<?> cls) {
        Iterator<Activity> it = activityStack.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                i++;
            }
        }
        return i;
    }

    public void finishActivity(Activity activity) {
        if (activity != null) {
            activityStack.remove(activity);
            activity.finish();
        }
    }

    public void finishSingleActivityByClass(Class<?> cls) {
        Activity activity = null;
        for (Activity activity2 : activityStack) {
            if (activity2.getClass().equals(cls)) {
                activity = activity2;
            }
        }
        finishActivity(activity);
    }

    public int getActivitySize() {
        Stack<Activity> stack = activityStack;
        if (stack != null) {
            return stack.size();
        }
        return 0;
    }

    public void finishAllActivity() {
        int size = activityStack.size();
        for (int i = 0; i < size; i++) {
            if (activityStack.get(i) != null) {
                activityStack.get(i).finish();
            }
        }
        activityStack.clear();
    }

    public boolean isActivityExist(Class<?> cls) {
        Iterator<Activity> it = activityStack.iterator();
        while (it.hasNext()) {
            if (it.next().getClass().equals(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean isActivityExist(Activity activity) {
        Iterator<Activity> it = activityStack.iterator();
        while (it.hasNext()) {
            if (it.next() == activity) {
                return true;
            }
        }
        return false;
    }

    public void AppExit(Context context) {
        try {
            this.isExit = true;
            finishAllActivity();
            Process.killProcess(Process.myPid());
            System.exit(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Activity getActivity(Class<?> cls) {
        Activity activity = null;
        for (Activity activity2 : activityStack) {
            if (activity2.getClass().equals(cls)) {
                activity = activity2;
            }
        }
        return activity;
    }
}
