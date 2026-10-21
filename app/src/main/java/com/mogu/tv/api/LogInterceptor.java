package com.mogu.tv.api;

import android.util.Log;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;

/** Retains the original interceptor API without logging tokens, bodies or accounts. */
public final class LogInterceptor implements Interceptor {
    private final String tag;
    public LogInterceptor(String tag) { this.tag=tag; }
    @Override public Response intercept(Chain chain) throws IOException {
        long start=System.nanoTime();
        Response response=chain.proceed(chain.request());
        Log.d(tag,chain.request().method()+" "+chain.request().url().encodedPath()+" -> "+response.code()+" ("+(System.nanoTime()-start)/1_000_000+"ms)");
        return response;
    }
}
