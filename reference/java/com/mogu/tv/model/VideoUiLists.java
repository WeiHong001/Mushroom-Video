package com.mogu.tv.model;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoUiLists.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR*\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0006\"\u0004\b\u001f\u0010\b¨\u0006 "}, d2 = {"Lcom/mogu/tv/model/VideoUiLists;", "", "()V", "labelsId", "", "getLabelsId", "()Ljava/lang/String;", "setLabelsId", "(Ljava/lang/String;)V", "labelsName", "getLabelsName", "setLabelsName", "list", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoListModel$Video;", "Lkotlin/collections/ArrayList;", "getList", "()Ljava/util/ArrayList;", "setList", "(Ljava/util/ArrayList;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "typeId", "getTypeId", "setTypeId", "typeName", "getTypeName", "setTypeName", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoUiLists {
    private String typeId = "";
    private String labelsId = "";
    private String labelsName = "";
    private String typeName = "";
    private int page = 1;
    private ArrayList<VideoListModel.Video> list = new ArrayList<>();

    public final String getTypeId() {
        return this.typeId;
    }

    public final void setTypeId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.typeId = str;
    }

    public final String getLabelsId() {
        return this.labelsId;
    }

    public final void setLabelsId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.labelsId = str;
    }

    public final String getLabelsName() {
        return this.labelsName;
    }

    public final void setLabelsName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.labelsName = str;
    }

    public final String getTypeName() {
        return this.typeName;
    }

    public final void setTypeName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.typeName = str;
    }

    public final int getPage() {
        return this.page;
    }

    public final void setPage(int i) {
        this.page = i;
    }

    public final ArrayList<VideoListModel.Video> getList() {
        return this.list;
    }

    public final void setList(ArrayList<VideoListModel.Video> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.list = arrayList;
    }
}
