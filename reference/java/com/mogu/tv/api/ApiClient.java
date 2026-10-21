package com.mogu.tv.api;

import androidx.core.app.NotificationCompat;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.utils.SSLOkhttp;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ApiClient.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u001e"}, d2 = {"Lcom/mogu/tv/api/ApiClient;", "", "()V", "baseHost", "", "getBaseHost", "()Ljava/lang/String;", "setBaseHost", "(Ljava/lang/String;)V", "defaltApi", "getDefaltApi", "setDefaltApi", NotificationCompat.CATEGORY_SERVICE, "Lcom/mogu/tv/api/ApiService;", "getService", "()Lcom/mogu/tv/api/ApiService;", "setService", "(Lcom/mogu/tv/api/ApiService;)V", "txtFromHost", "getTxtFromHost", "setTxtFromHost", "addHeaderInterceptor", "Lokhttp3/Interceptor;", "getRetrofit", "Lretrofit2/Retrofit;", "initOkttp", "Lokhttp3/OkHttpClient;", "setRetrofit", "", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ApiClient {
    public static ApiService service;
    public static final ApiClient INSTANCE = new ApiClient();
    private static String txtFromHost = "apihost.mgsp.me";
    private static String baseHost = "https://api.mgsp.ltd";
    private static String defaltApi = "https://api.mgsp.ltd";

    private final Interceptor addHeaderInterceptor() {
        return new Interceptor() { // from class: com.mogu.tv.api.ApiClient$$ExternalSyntheticLambda0
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                return ApiClient.m157addHeaderInterceptor$lambda0(chain);
            }
        };
    }

    private ApiClient() {
    }

    public final String getTxtFromHost() {
        return txtFromHost;
    }

    public final void setTxtFromHost(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        txtFromHost = str;
    }

    public final String getBaseHost() {
        return baseHost;
    }

    public final void setBaseHost(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        baseHost = str;
    }

    public final String getDefaltApi() {
        return defaltApi;
    }

    public final void setDefaltApi(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        defaltApi = str;
    }

    public final ApiService getService() {
        ApiService apiService = service;
        if (apiService != null) {
            return apiService;
        }
        Intrinsics.throwUninitializedPropertyAccessException(NotificationCompat.CATEGORY_SERVICE);
        return null;
    }

    public final void setService(ApiService apiService) {
        Intrinsics.checkNotNullParameter(apiService, "<set-?>");
        service = apiService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addHeaderInterceptor$lambda-0, reason: not valid java name */
    public static final Response m157addHeaderInterceptor$lambda0(Interceptor.Chain chain) {
        Request request = chain.request();
        Request.Builder builderMethod = request.newBuilder().header("Accept", "application/json").method(request.method(), request.body());
        if (UserManager.INSTANCE.isLogin()) {
            builderMethod.header("x-token", UserManager.INSTANCE.getUserToken());
        }
        return chain.proceed(builderMethod.build());
    }

    public final void setRetrofit(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        baseHost = StringsKt.trim((CharSequence) url).toString();
        Object objCreate = getRetrofit().create(ApiService.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "getRetrofit().create(ApiService::class.java)");
        setService((ApiService) objCreate);
    }

    private final Retrofit getRetrofit() {
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(baseHost).client(initOkttp()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.checkNotNullExpressionValue(retrofitBuild, "Builder()\n            .b…e())\n            .build()");
        return retrofitBuild;
    }

    private final OkHttpClient initOkttp() {
        OkHttpClient okHttpClientBuild = SSLOkhttp.getUnsafeOkHttpClient().addNetworkInterceptor(new LogInterceptor("api")).addInterceptor(addHeaderInterceptor()).addInterceptor(new UuidParamInterceptor()).connectTimeout(30L, TimeUnit.SECONDS).writeTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).build();
        Intrinsics.checkNotNullExpressionValue(okHttpClientBuild, "getUnsafeOkHttpClient().…NDS)\n            .build()");
        return okHttpClientBuild;
    }
}
