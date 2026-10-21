package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QQInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/mogu/tv/model/QQInfo;", "", "qqqun", "", "qq", "(Ljava/lang/String;Ljava/lang/String;)V", "getQq", "()Ljava/lang/String;", "getQqqun", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class QQInfo {
    private final String qq;
    private final String qqqun;

    public QQInfo(String qqqun, String qq) {
        Intrinsics.checkNotNullParameter(qqqun, "qqqun");
        Intrinsics.checkNotNullParameter(qq, "qq");
        this.qqqun = qqqun;
        this.qq = qq;
    }

    public final String getQqqun() {
        return this.qqqun;
    }

    public final String getQq() {
        return this.qq;
    }
}
