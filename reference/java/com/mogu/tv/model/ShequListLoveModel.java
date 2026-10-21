package com.mogu.tv.model;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShequListLoveModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/mogu/tv/model/ShequListLoveModel;", "", "()V", "list", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShequListLoveModel$Item;", "Lkotlin/collections/ArrayList;", "getList", "()Ljava/util/ArrayList;", "Item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequListLoveModel {
    private final ArrayList<Item> list = new ArrayList<>();

    /* JADX INFO: compiled from: ShequListLoveModel.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/ShequListLoveModel$Item;", "", "id", "", "updated_at", "", "blog", "Lcom/mogu/tv/model/ShequListModel$Data;", "(ILjava/lang/String;Lcom/mogu/tv/model/ShequListModel$Data;)V", "getBlog", "()Lcom/mogu/tv/model/ShequListModel$Data;", "getId", "()I", "getUpdated_at", "()Ljava/lang/String;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item {
        private final ShequListModel.Data blog;
        private final int id;
        private final String updated_at;

        public Item(int i, String updated_at, ShequListModel.Data blog) {
            Intrinsics.checkNotNullParameter(updated_at, "updated_at");
            Intrinsics.checkNotNullParameter(blog, "blog");
            this.id = i;
            this.updated_at = updated_at;
            this.blog = blog;
        }

        public final int getId() {
            return this.id;
        }

        public final String getUpdated_at() {
            return this.updated_at;
        }

        public final ShequListModel.Data getBlog() {
            return this.blog;
        }
    }

    public final ArrayList<Item> getList() {
        return this.list;
    }
}
