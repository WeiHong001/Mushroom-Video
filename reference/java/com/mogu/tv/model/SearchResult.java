package com.mogu.tv.model;

import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchResult.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001:\u0001\u0016B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/mogu/tv/model/SearchResult;", "", "code", "", "limit", "list", "", "Lcom/mogu/tv/model/SearchResult$Item;", NotificationCompat.CATEGORY_MESSAGE, "", "pagecount", "total", "(IILjava/util/List;Ljava/lang/String;II)V", "getCode", "()I", "getLimit", "getList", "()Ljava/util/List;", "getMsg", "()Ljava/lang/String;", "getPagecount", "getTotal", "Item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchResult {
    private final int code;
    private final int limit;
    private final List<Item> list;
    private final String msg;
    private final int pagecount;
    private final int total;

    public SearchResult(int i, int i2, List<Item> list, String msg, int i3, int i4) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.code = i;
        this.limit = i2;
        this.list = list;
        this.msg = msg;
        this.pagecount = i3;
        this.total = i4;
    }

    public final int getCode() {
        return this.code;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final List<Item> getList() {
        return this.list;
    }

    public final String getMsg() {
        return this.msg;
    }

    public final int getPagecount() {
        return this.pagecount;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX INFO: compiled from: SearchResult.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/SearchResult$Item;", "", "id", "", "name", "pic", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getPic", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item {
        private final String id;
        private final String name;
        private final String pic;

        public Item(String id, String name, String pic) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(pic, "pic");
            this.id = id;
            this.name = name;
            this.pic = pic;
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final String getPic() {
            return this.pic;
        }
    }
}
