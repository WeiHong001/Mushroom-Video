package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitClassModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/mogu/tv/model/InitClassModel;", "", "search_hot", "", "site_email", "site_qq", "vod_extend_area", "vod_extend_class", "vod_extend_lang", "vod_extend_year", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSearch_hot", "()Ljava/lang/String;", "getSite_email", "getSite_qq", "getVod_extend_area", "getVod_extend_class", "getVod_extend_lang", "getVod_extend_year", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InitClassModel {
    private final String search_hot;
    private final String site_email;
    private final String site_qq;
    private final String vod_extend_area;
    private final String vod_extend_class;
    private final String vod_extend_lang;
    private final String vod_extend_year;

    public InitClassModel(String search_hot, String site_email, String site_qq, String vod_extend_area, String vod_extend_class, String vod_extend_lang, String vod_extend_year) {
        Intrinsics.checkNotNullParameter(search_hot, "search_hot");
        Intrinsics.checkNotNullParameter(site_email, "site_email");
        Intrinsics.checkNotNullParameter(site_qq, "site_qq");
        Intrinsics.checkNotNullParameter(vod_extend_area, "vod_extend_area");
        Intrinsics.checkNotNullParameter(vod_extend_class, "vod_extend_class");
        Intrinsics.checkNotNullParameter(vod_extend_lang, "vod_extend_lang");
        Intrinsics.checkNotNullParameter(vod_extend_year, "vod_extend_year");
        this.search_hot = search_hot;
        this.site_email = site_email;
        this.site_qq = site_qq;
        this.vod_extend_area = vod_extend_area;
        this.vod_extend_class = vod_extend_class;
        this.vod_extend_lang = vod_extend_lang;
        this.vod_extend_year = vod_extend_year;
    }

    public final String getSearch_hot() {
        return this.search_hot;
    }

    public final String getSite_email() {
        return this.site_email;
    }

    public final String getSite_qq() {
        return this.site_qq;
    }

    public final String getVod_extend_area() {
        return this.vod_extend_area;
    }

    public final String getVod_extend_class() {
        return this.vod_extend_class;
    }

    public final String getVod_extend_lang() {
        return this.vod_extend_lang;
    }

    public final String getVod_extend_year() {
        return this.vod_extend_year;
    }
}
