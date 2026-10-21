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
        Request request=chain.request();
        String path=request.url().encodedPath();
        RecoveryRuntime.record((BuildConfig.OFFLINE?"OFFLINE ":"LIVE ")+request.method()+" "+path);
        if (BuildConfig.OFFLINE) {
            return json(request,RecoveryRuntime.repository().respond(request));
        }
        HttpUrl configured=HttpUrl.parse(com.mogu.tv.api.ApiClient.INSTANCE.getBaseHost());
        boolean readable=request.method().equals("GET") && !path.equals("/api/adclick") && !path.contains("/unlock");
        boolean discovery=request.url().host().equals("dns.alidns.com") && path.equals("/resolve");
        if (!readable || configured==null || !(configured.host().equals(request.url().host()) || discovery)) {
            return json(request,"{\"code\":403,\"message\":\"研究模式：此操作需要受控后台，未向线上发送\",\"data\":null}");
        }
        return chain.proceed(request).newBuilder().header("X-Mushroom-Data-Source","live-network").build();
    }

    private static Response json(Request request,String json) {
        return new Response.Builder().request(request).protocol(Protocol.HTTP_1_1).code(200).message("Research transport")
                .header("X-Mushroom-Data-Source",BuildConfig.OFFLINE?"synthetic-local":"blocked-local")
                .body(ResponseBody.create(MediaType.parse("application/json; charset=utf-8"),json)).build();
    }
}
