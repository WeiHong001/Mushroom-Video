package com.mogu.research;

import android.app.*;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.Button;
import com.mogu.inspector.InspectorHost;
import com.mogu.tv.api.ApiClient;
import java.util.*;
import okhttp3.Interceptor;

/** Application-owned Debug assembly; the Release class has the same Java API and no dependencies. */
public final class DiagnosticsRuntime implements Application.ActivityLifecycleCallbacks {
    private final InspectorHost host;
    public DiagnosticsRuntime(Application application) {
        host=new InspectorHost(application, (method,url)->DiagnosticsCapturePolicy.allows(method,url,ApiClient.INSTANCE.getBaseHost()));
        application.registerActivityLifecycleCallbacks(this);
    }
    public List<Interceptor> interceptors() {
        return Collections.singletonList(chain -> {
            if (!DiagnosticsCapturePolicy.safeBody(chain.request())) return chain.proceed(chain.request());
            return host.getInspector().getInterceptor().intercept(chain);
        });
    }
    public void addSettingsEntry(Activity activity, ViewGroup parent) {
        Button button=new Button(activity);
        button.setText(com.mogu.inspector.R.string.inspector_settings_entry);
        button.setOnClickListener(v->host.openSettings(activity));
        parent.addView(button);
    }
    @Override public void onActivityResumed(Activity activity) {
        if (!activity.getClass().getName().startsWith("com.mogu.tv.")) return;
        ViewGroup settings=activity.getClass().getName().equals("com.mogu.tv.ui.activity.SettingActivity")
                ? activity.findViewById(com.mogu.tv.R.id.ll_Head) : null;
        host.attach(activity,settings);
    }
    @Override public void onActivityCreated(Activity a,Bundle state) { }
    @Override public void onActivityStarted(Activity a) { }
    @Override public void onActivityPaused(Activity a) { }
    @Override public void onActivityStopped(Activity a) { }
    @Override public void onActivitySaveInstanceState(Activity a,Bundle state) { }
    @Override public void onActivityDestroyed(Activity a) { }
}
