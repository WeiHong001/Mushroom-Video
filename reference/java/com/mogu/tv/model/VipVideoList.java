package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VipVideoList.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/mogu/tv/model/VipVideoList;", "", "list", "", "Lcom/mogu/tv/model/VipVideoList$Data;", "total", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getTotal", "()I", "Data", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VipVideoList {
    private final List<Data> list;
    private final int total;

    public VipVideoList(List<Data> list, int i) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.total = i;
    }

    public final List<Data> getList() {
        return this.list;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX INFO: compiled from: VipVideoList.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u0003¢\u0006\u0002\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0011¨\u0006!"}, d2 = {"Lcom/mogu/tv/model/VipVideoList$Data;", "", "ID", "", "cover", "", "dz_index", "introduce", "jq_index", "play_url", "title", "tj_index", "unlock", "", "yz_index", "(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZI)V", "getID", "()I", "getCover", "()Ljava/lang/String;", "getDz_index", "getIntroduce", "getJq_index", "getPlay_url", "setPlay_url", "(Ljava/lang/String;)V", "getTitle", "getTj_index", "getUnlock", "()Z", "setUnlock", "(Z)V", "getYz_index", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Data {
        private final int ID;
        private final String cover;
        private final int dz_index;
        private final String introduce;
        private final int jq_index;
        private String play_url;
        private final String title;
        private final int tj_index;
        private boolean unlock;
        private final int yz_index;

        public Data(int i, String cover, int i2, String introduce, int i3, String play_url, String title, int i4, boolean z, int i5) {
            Intrinsics.checkNotNullParameter(cover, "cover");
            Intrinsics.checkNotNullParameter(introduce, "introduce");
            Intrinsics.checkNotNullParameter(play_url, "play_url");
            Intrinsics.checkNotNullParameter(title, "title");
            this.ID = i;
            this.cover = cover;
            this.dz_index = i2;
            this.introduce = introduce;
            this.jq_index = i3;
            this.play_url = play_url;
            this.title = title;
            this.tj_index = i4;
            this.unlock = z;
            this.yz_index = i5;
        }

        public final int getID() {
            return this.ID;
        }

        public final String getCover() {
            return this.cover;
        }

        public final int getDz_index() {
            return this.dz_index;
        }

        public final String getIntroduce() {
            return this.introduce;
        }

        public final int getJq_index() {
            return this.jq_index;
        }

        public final String getPlay_url() {
            return this.play_url;
        }

        public final void setPlay_url(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.play_url = str;
        }

        public final String getTitle() {
            return this.title;
        }

        public final int getTj_index() {
            return this.tj_index;
        }

        public final boolean getUnlock() {
            return this.unlock;
        }

        public final void setUnlock(boolean z) {
            this.unlock = z;
        }

        public final int getYz_index() {
            return this.yz_index;
        }
    }
}
