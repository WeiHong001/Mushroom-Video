package com.kotlin.basiclib.utils;

import com.kotlin.basiclib.base.BaseApplicaitonKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileCacheManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/kotlin/basiclib/utils/FileCacheManager;", "", "()V", "readStrFromCache", "", "cacheName", "writeStrToCache", "", "str", "key", "saveTime", "", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class FileCacheManager {
    public static final FileCacheManager INSTANCE = new FileCacheManager();

    private FileCacheManager() {
    }

    public final void writeStrToCache(String str, String key, int saveTime) throws Throwable {
        Intrinsics.checkNotNullParameter(str, "str");
        Intrinsics.checkNotNullParameter(key, "key");
        if (saveTime == -1) {
            ACache.get(BaseApplicaitonKt.getApplication()).put(key, str);
        } else {
            ACache.get(BaseApplicaitonKt.getApplication()).put(key, str, saveTime);
        }
    }

    public final String readStrFromCache(String cacheName) throws Throwable {
        Intrinsics.checkNotNullParameter(cacheName, "cacheName");
        String asString = ACache.get(BaseApplicaitonKt.getApplication()).getAsString(cacheName);
        return asString == null ? "" : asString;
    }
}
