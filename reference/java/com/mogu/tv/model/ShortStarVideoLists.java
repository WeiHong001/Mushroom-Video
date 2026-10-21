package com.mogu.tv.model;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShortStarVideoLists.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0012B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0003J#\u0010\n\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/mogu/tv/model/ShortStarVideoLists;", "", "list", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShortStarVideoLists$Item;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getList", "()Ljava/util/ArrayList;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final /* data */ class ShortStarVideoLists {
    private final ArrayList<Item> list;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShortStarVideoLists copy$default(ShortStarVideoLists shortStarVideoLists, ArrayList arrayList, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = shortStarVideoLists.list;
        }
        return shortStarVideoLists.copy(arrayList);
    }

    public final ArrayList<Item> component1() {
        return this.list;
    }

    public final ShortStarVideoLists copy(ArrayList<Item> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new ShortStarVideoLists(list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ShortStarVideoLists) && Intrinsics.areEqual(this.list, ((ShortStarVideoLists) other).list);
    }

    public int hashCode() {
        return this.list.hashCode();
    }

    public String toString() {
        return "ShortStarVideoLists(list=" + this.list + ')';
    }

    public ShortStarVideoLists(ArrayList<Item> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    public final ArrayList<Item> getList() {
        return this.list;
    }

    /* JADX INFO: compiled from: ShortStarVideoLists.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/mogu/tv/model/ShortStarVideoLists$Item;", "", "vlog", "Lcom/mogu/tv/model/ShortVideoList$Data;", "(Lcom/mogu/tv/model/ShortVideoList$Data;)V", "getVlog", "()Lcom/mogu/tv/model/ShortVideoList$Data;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item {
        private final ShortVideoList.Data vlog;

        public Item(ShortVideoList.Data vlog) {
            Intrinsics.checkNotNullParameter(vlog, "vlog");
            this.vlog = vlog;
        }

        public final ShortVideoList.Data getVlog() {
            return this.vlog;
        }
    }
}
