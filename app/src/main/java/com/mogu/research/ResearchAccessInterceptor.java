package com.mogu.research;

import com.amogu6.tv.BuildConfig;
import java.io.IOException;
import okhttp3.*;

/** Existing read-only guard, placed outside diagnostics so rejected calls never get captured. */
public final class ResearchAccessInterceptor implements Interceptor {
    @Override public Response intercept(Chain chain) throws IOException {
        Request request=chain.request();
        if (!BuildConfig.OFFLINE) {
            String path=request.url().encodedPath();
            HttpUrl configured=HttpUrl.parse(com.mogu.tv.api.ApiClient.INSTANCE.getBaseHost());
            boolean readable=request.method().equals("GET") && !path.equals("/api/adclick") && !path.contains("/unlock");
            boolean discovery=request.url().host().equals("dns.alidns.com") && path.equals("/resolve");
            if (!readable || configured==null || !(configured.host().equals(request.url().host()) || discovery)) {
                RecoveryRuntime.record("LIVE "+request.method()+" "+path);
                return ResearchInterceptor.json(request,"{\"code\":403,\"message\":\"研究模式：此操作需要受控后台，未向线上发送\",\"data\":null}");
            }
        }
        return chain.proceed(request);
    }
}
