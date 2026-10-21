package com.mogu.tv.api;

import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.mogu.tv.utils.LogUtil;
import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public class LogInterceptor implements Interceptor {
    public static final String TAG = "LogInterceptor";
    private String tag;

    public LogInterceptor(String str) {
        this.tag = TextUtils.isEmpty(str) ? TAG : str;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Response responseProceed = chain.proceed(request);
        ResponseBody responseBodyPeekBody = responseProceed.peekBody(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        LogUtil.i(this.tag, String.format("接收响应 url : %s", request.url().toString()));
        String str = this.tag;
        Object[] objArr = new Object[3];
        objArr[0] = responseProceed.isSuccessful() ? "success" : "fail";
        objArr[1] = responseProceed.message();
        objArr[2] = Integer.valueOf(responseProceed.code());
        LogUtil.i(str, String.format("接收响应 %s ,message[%s],code[%d]", objArr));
        LogUtil.i(this.tag, String.format("接收响应 json string %s", responseBodyPeekBody.string()));
        return responseProceed;
    }

    private void logForRequest(Request request) {
        MediaType mediaTypeContentType;
        try {
            String string = request.url().toString();
            Headers headers = request.headers();
            LogUtil.i(this.tag, "========request'log=======");
            LogUtil.i(this.tag, "method : " + request.method() + "_url : " + string);
            if (headers != null && headers.size() > 0) {
                LogUtil.i(this.tag, "headers : " + headers.toString());
            }
            RequestBody requestBodyBody = request.body();
            if (requestBodyBody == null || (mediaTypeContentType = requestBodyBody.contentType()) == null) {
                return;
            }
            LogUtil.i(this.tag, "requestBody's contentType : " + mediaTypeContentType.toString());
            if (isText(mediaTypeContentType)) {
                LogUtil.i(this.tag, "requestBody's content : " + bodyToString(request));
                return;
            }
            LogUtil.i(this.tag, "requestBody's content :  maybe [file part] , too large too print , ignored!");
        } catch (Exception unused) {
        }
    }

    private boolean isText(MediaType mediaType) {
        if (mediaType.type() == null || !mediaType.type().equals("text")) {
            return mediaType.subtype() != null && (mediaType.subtype().equals("json") || mediaType.subtype().equals("xml") || mediaType.subtype().equals("html") || mediaType.subtype().equals("webviewhtml"));
        }
        return true;
    }

    private String bodyToString(Request request) {
        try {
            Request requestBuild = request.newBuilder().build();
            Buffer buffer = new Buffer();
            requestBuild.body().writeTo(buffer);
            return buffer.readUtf8();
        } catch (IOException unused) {
            return "something error when show requestBody.";
        }
    }
}
