package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserShareList.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/mogu/tv/model/UserShareList;", "", "list", "", "Lcom/mogu/tv/model/UserShareList$ShareItem;", "total", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getTotal", "()I", "ShareItem", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UserShareList {
    private final List<ShareItem> list;
    private final int total;

    public UserShareList(List<ShareItem> list, int i) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.total = i;
    }

    public final List<ShareItem> getList() {
        return this.list;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX INFO: compiled from: UserShareList.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/mogu/tv/model/UserShareList$ShareItem;", "", "device_id", "", "time", "(Ljava/lang/String;Ljava/lang/String;)V", "getDevice_id", "()Ljava/lang/String;", "getTime", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ShareItem {
        private final String device_id;
        private final String time;

        public ShareItem(String device_id, String time) {
            Intrinsics.checkNotNullParameter(device_id, "device_id");
            Intrinsics.checkNotNullParameter(time, "time");
            this.device_id = device_id;
            this.time = time;
        }

        public final String getDevice_id() {
            return this.device_id;
        }

        public final String getTime() {
            return this.time;
        }
    }
}
