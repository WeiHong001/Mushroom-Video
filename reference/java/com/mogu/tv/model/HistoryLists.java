package com.mogu.tv.model;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HistoryLists.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0012\u0013B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J#\u0010\n\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/mogu/tv/model/HistoryLists;", "", "list", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/HistoryLists$Item;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getList", "()Ljava/util/ArrayList;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Item", "Vod", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final /* data */ class HistoryLists {
    private final ArrayList<Item> list;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HistoryLists copy$default(HistoryLists historyLists, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = historyLists.list;
        }
        return historyLists.copy(arrayList);
    }

    public final ArrayList<Item> component1() {
        return this.list;
    }

    public final HistoryLists copy(ArrayList<Item> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new HistoryLists(list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HistoryLists) && Intrinsics.areEqual(this.list, ((HistoryLists) other).list);
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public String toString() {
        return "HistoryLists(list=" + this.list + ')';
    }

    public HistoryLists(ArrayList<Item> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    public final ArrayList<Item> getList() {
        return this.list;
    }

    /* JADX INFO: compiled from: HistoryLists.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/HistoryLists$Item;", "", "id", "", "updated_at", "", "vod", "Lcom/mogu/tv/model/HistoryLists$Vod;", "(ILjava/lang/String;Lcom/mogu/tv/model/HistoryLists$Vod;)V", "getId", "()I", "getUpdated_at", "()Ljava/lang/String;", "getVod", "()Lcom/mogu/tv/model/HistoryLists$Vod;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item {
        private final int id;
        private final String updated_at;
        private final Vod vod;

        public Item(int i, String updated_at, Vod vod) {
            Intrinsics.checkNotNullParameter(updated_at, "updated_at");
            Intrinsics.checkNotNullParameter(vod, "vod");
            this.id = i;
            this.updated_at = updated_at;
            this.vod = vod;
        }

        public final int getId() {
            return this.id;
        }

        public final String getUpdated_at() {
            return this.updated_at;
        }

        public final Vod getVod() {
            return this.vod;
        }
    }

    /* JADX INFO: compiled from: HistoryLists.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\f\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/mogu/tv/model/HistoryLists$Vod;", "", "cover", "", "duration", "id", "", "title", "users", "", "views", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;I)V", "getCover", "()Ljava/lang/String;", "getDuration", "getId", "()I", "getTitle", "getUsers", "()Ljava/util/List;", "getViews", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Vod {
        private final String cover;
        private final String duration;
        private final int id;
        private final String title;
        private final List<Object> users;
        private final int views;

        public Vod(String cover, String duration, int i, String title, List<? extends Object> users, int i2) {
            Intrinsics.checkNotNullParameter(cover, "cover");
            Intrinsics.checkNotNullParameter(duration, "duration");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(users, "users");
            this.cover = cover;
            this.duration = duration;
            this.id = i;
            this.title = title;
            this.users = users;
            this.views = i2;
        }

        public final String getCover() {
            return this.cover;
        }

        public final String getDuration() {
            return this.duration;
        }

        public final int getId() {
            return this.id;
        }

        public final String getTitle() {
            return this.title;
        }

        public final List<Object> getUsers() {
            return this.users;
        }

        public final int getViews() {
            return this.views;
        }
    }
}
