package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EventBean.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/mogu/tv/model/EventPostPlayUrl;", "", "playUrl", "", "palyName", "(Ljava/lang/String;Ljava/lang/String;)V", "getPalyName", "()Ljava/lang/String;", "setPalyName", "(Ljava/lang/String;)V", "getPlayUrl", "setPlayUrl", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class EventPostPlayUrl {
    private String palyName;
    private String playUrl;

    public EventPostPlayUrl(String playUrl, String palyName) {
        Intrinsics.checkNotNullParameter(playUrl, "playUrl");
        Intrinsics.checkNotNullParameter(palyName, "palyName");
        this.playUrl = playUrl;
        this.palyName = palyName;
    }

    public final String getPalyName() {
        return this.palyName;
    }

    public final String getPlayUrl() {
        return this.playUrl;
    }

    public final void setPalyName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.palyName = str;
    }

    public final void setPlayUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.playUrl = str;
    }
}
