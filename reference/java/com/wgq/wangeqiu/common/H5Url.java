package com.wgq.wangeqiu.common;

import com.mogu.tv.api.ApiClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: H5Url.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\n\u0010\u000b\u001a\u00020\u0004*\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/wgq/wangeqiu/common/H5Url;", "", "()V", "HomePage", "", "getHomePage", "()Ljava/lang/String;", "setHomePage", "(Ljava/lang/String;)V", "getAgreement", "getPrivacy", "getLoadPhoto", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class H5Url {
    public static final H5Url INSTANCE = new H5Url();
    private static String HomePage = "";

    private H5Url() {
    }

    public final String getHomePage() {
        return HomePage;
    }

    public final void setHomePage(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        HomePage = str;
    }

    public final String getLoadPhoto(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (StringsKt.startsWith$default(str, "http", false, 2, (Object) null)) {
            return str;
        }
        return ApiClient.INSTANCE.getBaseHost() + str;
    }

    public final String getAgreement() {
        return ApiClient.INSTANCE.getBaseHost() + "/system/agreement";
    }

    public final String getPrivacy() {
        return ApiClient.INSTANCE.getBaseHost() + "/system/privacy";
    }
}
