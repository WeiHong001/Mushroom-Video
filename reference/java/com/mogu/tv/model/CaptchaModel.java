package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CaptchaModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/mogu/tv/model/CaptchaModel;", "", "CaptchaId", "", "CaptchaUrl", "(Ljava/lang/String;Ljava/lang/String;)V", "getCaptchaId", "()Ljava/lang/String;", "getCaptchaUrl", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final /* data */ class CaptchaModel {
    private final String CaptchaId;
    private final String CaptchaUrl;

    public static /* synthetic */ CaptchaModel copy$default(CaptchaModel captchaModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = captchaModel.CaptchaId;
        }
        if ((i & 2) != 0) {
            str2 = captchaModel.CaptchaUrl;
        }
        return captchaModel.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCaptchaId() {
        return this.CaptchaId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCaptchaUrl() {
        return this.CaptchaUrl;
    }

    public final CaptchaModel copy(String CaptchaId, String CaptchaUrl) {
        Intrinsics.checkNotNullParameter(CaptchaId, "CaptchaId");
        Intrinsics.checkNotNullParameter(CaptchaUrl, "CaptchaUrl");
        return new CaptchaModel(CaptchaId, CaptchaUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CaptchaModel)) {
            return false;
        }
        CaptchaModel captchaModel = (CaptchaModel) other;
        return Intrinsics.areEqual(this.CaptchaId, captchaModel.CaptchaId) && Intrinsics.areEqual(this.CaptchaUrl, captchaModel.CaptchaUrl);
    }

    public int hashCode() {
        return (this.CaptchaId.hashCode() * 31) + this.CaptchaUrl.hashCode();
    }

    public String toString() {
        return "CaptchaModel(CaptchaId=" + this.CaptchaId + ", CaptchaUrl=" + this.CaptchaUrl + ')';
    }

    public CaptchaModel(String CaptchaId, String CaptchaUrl) {
        Intrinsics.checkNotNullParameter(CaptchaId, "CaptchaId");
        Intrinsics.checkNotNullParameter(CaptchaUrl, "CaptchaUrl");
        this.CaptchaId = CaptchaId;
        this.CaptchaUrl = CaptchaUrl;
    }

    public final String getCaptchaId() {
        return this.CaptchaId;
    }

    public final String getCaptchaUrl() {
        return this.CaptchaUrl;
    }
}
