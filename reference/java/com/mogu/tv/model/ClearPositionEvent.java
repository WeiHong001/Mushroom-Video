package com.mogu.tv.model;

import kotlin.Metadata;

/* JADX INFO: compiled from: EventBean.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0005\"\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/mogu/tv/model/ClearPositionEvent;", "", "isClear", "", "(Z)V", "()Z", "setClear", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ClearPositionEvent {
    private boolean isClear;

    public ClearPositionEvent(boolean z) {
        this.isClear = z;
    }

    /* JADX INFO: renamed from: isClear, reason: from getter */
    public final boolean getIsClear() {
        return this.isClear;
    }

    public final void setClear(boolean z) {
        this.isClear = z;
    }
}
