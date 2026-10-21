package com.mogu.research;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.amogu6.tv.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class RecoveryRuntime implements Application.ActivityLifecycleCallbacks {
    private static final List<String> audit = new ArrayList<>();
    private static Application application;
    private static OfflineRepository repository;
    private static AssetServer server;

    private RecoveryRuntime() { }

    public static void install(Application app) {
        application = app;
        try {
            if(BuildConfig.OFFLINE) {
                server = new AssetServer(app);
                repository = new OfflineRepository(app, server.baseUrl());
            }
        } catch (IOException error) {
            throw new IllegalStateException("Cannot start local research media", error);
        }
        app.registerActivityLifecycleCallbacks(new RecoveryRuntime());
        record(BuildConfig.OFFLINE ? "OFFLINE: synthetic data, local mutations" : "LIVE: real requests, read only");
        com.mogu.tv.api.ApiClient.INSTANCE.setBaseHost(BuildConfig.API_BASE);
        com.mogu.tv.api.ApiClient.INSTANCE.setDefaltApi(BuildConfig.API_BASE);
    }

    static OfflineRepository repository() {
        if (repository == null) throw new IllegalStateException("RecoveryRuntime not initialized");
        return repository;
    }

    static String mediaBase() { return server.baseUrl(); }

    public static synchronized void record(String line) {
        if (audit.size() >= 200) audit.remove(0);
        audit.add(line);
        android.util.Log.i("MushroomResearch", line);
    }

    public static synchronized String auditText() {
        StringBuilder text = new StringBuilder();
        for (String line : audit) text.append(line).append('\n');
        return text.toString();
    }

    @Override public void onActivityCreated(Activity activity, Bundle state) {
        if (activity instanceof ResearchConsoleActivity) return;
        activity.getWindow().getDecorView().post(() -> {
            ViewGroup content = activity.findViewById(android.R.id.content);
            if (!(content instanceof FrameLayout)) return;
            TextView badge = new TextView(activity);
            badge.setText(BuildConfig.OFFLINE ? "离线研究 · 合成样本   ▸ 研究入口" : "真实接口 · 只读研究   ▸ 请求记录");
            badge.setTextSize(10);
            badge.setIncludeFontPadding(false);
            badge.setTextColor(Color.WHITE);
            badge.setBackgroundColor(0xED7C3A08);
            badge.setGravity(Gravity.CENTER);
            int height = Math.round(20 * activity.getResources().getDisplayMetrics().density);
            if (content.getChildCount() > 0) {
                android.view.View original = content.getChildAt(0);
                original.setPadding(original.getPaddingLeft(), original.getPaddingTop()+height,
                        original.getPaddingRight(), original.getPaddingBottom());
            }
            FrameLayout.LayoutParams position=new FrameLayout.LayoutParams(-1,height,Gravity.TOP);
            android.view.View decor=activity.getWindow().getDecorView();
            if(android.os.Build.VERSION.SDK_INT>=23 && decor.getRootWindowInsets()!=null &&
                    (activity.getWindow().getAttributes().flags & android.view.WindowManager.LayoutParams.FLAG_FULLSCREEN)==0) {
                position.topMargin=decor.getRootWindowInsets().getStableInsetTop();
            }
            ((FrameLayout)decor).addView(badge,position);
            badge.setOnClickListener(v -> activity.startActivity(new Intent(activity, ResearchConsoleActivity.class)));
        });
        record("PAGE " + activity.getClass().getName());
    }

    @Override public void onActivityStarted(Activity a) { }
    @Override public void onActivityResumed(Activity a) { }
    @Override public void onActivityPaused(Activity a) { }
    @Override public void onActivityStopped(Activity a) { }
    @Override public void onActivitySaveInstanceState(Activity a, Bundle b) { }
    @Override public void onActivityDestroyed(Activity a) { }
}
