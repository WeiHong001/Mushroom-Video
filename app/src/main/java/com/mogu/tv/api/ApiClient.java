package com.mogu.tv.api;

import com.mogu.research.ResearchInterceptor;
import com.mogu.tv.main.UserManager;
import com.mogu.tv.utils.SSLOkhttp;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/** Java restoration of the original Kotlin object, preserving its binary API. */
public final class ApiClient {
    public static final ApiClient INSTANCE=new ApiClient();
    public static ApiService service;
    private static String txtFromHost="apihost.mgsp.me";
    private static String baseHost="https://api.mgsp.ltd";
    private static String defaltApi=baseHost;
    private static java.util.List<okhttp3.Interceptor> diagnosticInterceptors=java.util.Collections.emptyList();

    /** Application assembly supplies generic application interceptors, never a debug UI type. */
    public static void setDiagnosticInterceptors(java.util.List<okhttp3.Interceptor> interceptors) {
        diagnosticInterceptors=java.util.Collections.unmodifiableList(new java.util.ArrayList<>(interceptors));
    }

    private ApiClient() { }
    public String getTxtFromHost(){return txtFromHost;}
    public void setTxtFromHost(String host){txtFromHost=java.util.Objects.requireNonNull(host);}
    public String getBaseHost(){return baseHost;}
    public void setBaseHost(String host){baseHost=java.util.Objects.requireNonNull(host);}
    public String getDefaltApi(){return defaltApi;}
    public void setDefaltApi(String host){defaltApi=java.util.Objects.requireNonNull(host);}
    public ApiService getService(){if(service==null)throw new IllegalStateException("service not initialized");return service;}
    public void setService(ApiService value){service=java.util.Objects.requireNonNull(value);}

    public void setRetrofit(String url) {
        baseHost=java.util.Objects.requireNonNull(url).trim();
        OkHttpClient.Builder builder=SSLOkhttp.getUnsafeOkHttpClient()
                .addNetworkInterceptor(new LogInterceptor("api"))
                .addInterceptor(new com.mogu.research.ResearchAccessInterceptor())
                .addInterceptor(chain->{
                    Request.Builder request=chain.request().newBuilder().header("Accept","application/json");
                    if(UserManager.INSTANCE.isLogin())request.header("x-token",UserManager.INSTANCE.getUserToken());
                    return chain.proceed(request.build());
                })
                .addInterceptor(new UuidParamInterceptor());
        for(okhttp3.Interceptor interceptor:diagnosticInterceptors) builder.addInterceptor(interceptor);
        OkHttpClient client=builder.addInterceptor(new ResearchInterceptor())
                .connectTimeout(30,TimeUnit.SECONDS).writeTimeout(30,TimeUnit.SECONDS).readTimeout(30,TimeUnit.SECONDS).build();
        service=new Retrofit.Builder().baseUrl(baseHost).client(client)
                .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
                .addConverterFactory(GsonConverterFactory.create()).build().create(ApiService.class);
    }
}
