package com.mogu.research;

import com.amogu6.tv.BuildConfig;
import java.io.IOException;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class ResearchInterceptor implements Interceptor {
    @Override public Response intercept(Chain chain) throws IOException {
        long startedAt=System.currentTimeMillis();
        Request request=chain.request();
        String path=request.url().encodedPath();
        RecoveryRuntime.record((BuildConfig.OFFLINE?"OFFLINE ":"LIVE ")+request.method()+" "+path);
        if (BuildConfig.OFFLINE) {
            return json(request,RecoveryRuntime.repository().respond(request),startedAt);
        }
        return chain.proceed(request).newBuilder().header("X-Mushroom-Data-Source","live-network").build();
    }

    static Response json(Request request,String json) {
        return json(request,json,System.currentTimeMillis());
    }

    private static Response json(Request request,String json,long startedAt) {
        return new Response.Builder().request(request).protocol(Protocol.HTTP_1_1).code(200).message("Research transport")
                // These are local response timestamps, not an HTTP download measurement.
                .sentRequestAtMillis(startedAt).receivedResponseAtMillis(System.currentTimeMillis())
                .header("X-Mushroom-Data-Source",BuildConfig.OFFLINE?"synthetic-local":"blocked-local")
                .body(ResponseBody.create(MediaType.parse("application/json; charset=utf-8"),json)).build();
    }
}
