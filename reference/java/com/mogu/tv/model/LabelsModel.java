package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LabelsModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/mogu/tv/model/LabelsModel;", "", "list", "", "Lcom/mogu/tv/model/LabelsModel$Item;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "Item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class LabelsModel {
    private final List<Item> list;

    public LabelsModel(List<Item> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    public final List<Item> getList() {
        return this.list;
    }

    /* JADX INFO: compiled from: LabelsModel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/LabelsModel$Item;", "", "id", "", "name", "", "(ILjava/lang/String;)V", "getId", "()I", "getName", "()Ljava/lang/String;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item {
        private final int id;
        private final String name;

        public Item(int i, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.id = i;
            this.name = name;
        }

        public final int getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }
    }
}
