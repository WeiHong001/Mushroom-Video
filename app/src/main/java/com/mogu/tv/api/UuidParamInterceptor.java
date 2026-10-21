package com.mogu.tv.api;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: UuidParamInterceptor.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class UuidParamInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Response responseProceed = chain.proceed(request.newBuilder().url(request.url().newBuilder().build()).build());
        Intrinsics.checkNotNullExpressionValue(responseProceed, "chain.proceed(request)");
        return responseProceed;
    }
}
