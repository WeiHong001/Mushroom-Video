package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ShareCodeResultBean.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/mogu/tv/model/ShareCodeResultBean;", "", "code", "", "data", "", IjkMediaPlayer.OnNativeInvokeListener.ARG_IP, "(ILjava/lang/String;Ljava/lang/String;)V", "getCode", "()I", "getData", "()Ljava/lang/String;", "getIp", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShareCodeResultBean {
    private final int code;
    private final String data;
    private final String ip;

    public ShareCodeResultBean(int i, String data, String ip) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(ip, "ip");
        this.code = i;
        this.data = data;
        this.ip = ip;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getData() {
        return this.data;
    }

    public final String getIp() {
        return this.ip;
    }
}
