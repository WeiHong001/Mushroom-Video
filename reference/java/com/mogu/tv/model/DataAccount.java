package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DataAccount.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/DataAccount;", "", "vod_all", "", "vod_min", "vod_today", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getVod_all", "()Ljava/lang/String;", "getVod_min", "getVod_today", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DataAccount {
    private final String vod_all;
    private final String vod_min;
    private final String vod_today;

    public DataAccount(String vod_all, String vod_min, String vod_today) {
        Intrinsics.checkNotNullParameter(vod_all, "vod_all");
        Intrinsics.checkNotNullParameter(vod_min, "vod_min");
        Intrinsics.checkNotNullParameter(vod_today, "vod_today");
        this.vod_all = vod_all;
        this.vod_min = vod_min;
        this.vod_today = vod_today;
    }

    public final String getVod_all() {
        return this.vod_all;
    }

    public final String getVod_min() {
        return this.vod_min;
    }

    public final String getVod_today() {
        return this.vod_today;
    }
}
