package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QuestionResultItem.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/mogu/tv/model/QuestionResultItem;", "", "title", "", "isselect", "", "(Ljava/lang/String;Z)V", "getIsselect", "()Z", "setIsselect", "(Z)V", "getTitle", "()Ljava/lang/String;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class QuestionResultItem {
    private boolean isselect;
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public QuestionResultItem() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public QuestionResultItem(String title, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.isselect = z;
    }

    public /* synthetic */ QuestionResultItem(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? false : z);
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean getIsselect() {
        return this.isselect;
    }

    public final void setIsselect(boolean z) {
        this.isselect = z;
    }
}
