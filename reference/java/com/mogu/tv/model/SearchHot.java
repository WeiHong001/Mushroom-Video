package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchHot.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/SearchHot;", "", "item", "", "rank", "", "(Ljava/lang/String;I)V", "getItem", "()Ljava/lang/String;", "setItem", "(Ljava/lang/String;)V", "getRank", "()I", "setRank", "(I)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchHot {
    private String item;
    private int rank;

    public SearchHot(String item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
        this.rank = i;
    }

    public final String getItem() {
        return this.item;
    }

    public final void setItem(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.item = str;
    }

    public final int getRank() {
        return this.rank;
    }

    public final void setRank(int i) {
        this.rank = i;
    }
}
