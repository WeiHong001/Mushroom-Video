package com.mogu.tv.model;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoTypes.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\b\tB\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/mogu/tv/model/VideoTypes;", "", "list", "", "Lcom/mogu/tv/model/VideoTypes$Types;", "(Ljava/util/List;)V", "getList", "()Ljava/util/List;", "Child", "Types", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoTypes {
    private final List<Types> list;

    public VideoTypes(List<Types> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    public final List<Types> getList() {
        return this.list;
    }

    /* JADX INFO: compiled from: VideoTypes.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/VideoTypes$Types;", "", "()V", "child", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoTypes$Child;", "Lkotlin/collections/ArrayList;", "getChild", "()Ljava/util/ArrayList;", "id", "", "getId", "()Ljava/lang/String;", "name", "getName", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Types {
        private final ArrayList<Child> child = new ArrayList<>();
        private final String id = "";
        private final String name = "";

        public final ArrayList<Child> getChild() {
            return this.child;
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }
    }

    /* JADX INFO: compiled from: VideoTypes.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/mogu/tv/model/VideoTypes$Child;", "", "()V", "id", "", "getId", "()Ljava/lang/String;", "name", "getName", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Child {
        private final String id = "";
        private final String name = "";

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }
    }
}
