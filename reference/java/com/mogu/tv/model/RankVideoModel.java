package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RankVideoModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/mogu/tv/model/RankVideoModel;", "", "code", "", "data", "", "Lcom/mogu/tv/model/VideoListModel$Video;", "(ILjava/util/List;)V", "getCode", "()I", "getData", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final /* data */ class RankVideoModel {
    private final int code;
    private final List<VideoListModel.Video> data;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RankVideoModel copy$default(RankVideoModel rankVideoModel, int i, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = rankVideoModel.code;
        }
        if ((i2 & 2) != 0) {
            list = rankVideoModel.data;
        }
        return rankVideoModel.copy(i, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    public final List<VideoListModel.Video> component2() {
        return this.data;
    }

    public final RankVideoModel copy(int code, List<VideoListModel.Video> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new RankVideoModel(code, data);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RankVideoModel)) {
            return false;
        }
        RankVideoModel rankVideoModel = (RankVideoModel) other;
        return this.code == rankVideoModel.code && Intrinsics.areEqual(this.data, rankVideoModel.data);
    }

    public int hashCode() {
        return (this.code * 31) + this.data.hashCode();
    }

    public String toString() {
        return "RankVideoModel(code=" + this.code + ", data=" + this.data + ')';
    }

    public RankVideoModel(int i, List<VideoListModel.Video> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.code = i;
        this.data = data;
    }

    public final int getCode() {
        return this.code;
    }

    public final List<VideoListModel.Video> getData() {
        return this.data;
    }
}
