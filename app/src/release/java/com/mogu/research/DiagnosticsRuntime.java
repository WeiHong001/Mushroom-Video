package com.mogu.research;

import android.app.Activity;
import android.app.Application;
import android.view.ViewGroup;
import java.util.Collections;
import java.util.List;
import okhttp3.Interceptor;

/** No collector, preferences, callbacks, Compose host, or Chucker dependency in Release. */
public final class DiagnosticsRuntime {
    public DiagnosticsRuntime(Application application) { }
    public List<Interceptor> interceptors() { return Collections.emptyList(); }
    public void addSettingsEntry(Activity activity, ViewGroup parent) { }
}
