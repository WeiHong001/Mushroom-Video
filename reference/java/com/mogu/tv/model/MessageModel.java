package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessageModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/MessageModel;", "", "content", "", "create_at", "title", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getCreate_at", "getTitle", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MessageModel {
    private final String content;
    private final String create_at;
    private final String title;

    public MessageModel(String content, String create_at, String title) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(create_at, "create_at");
        Intrinsics.checkNotNullParameter(title, "title");
        this.content = content;
        this.create_at = create_at;
        this.title = title;
    }

    public final String getContent() {
        return this.content;
    }

    public final String getCreate_at() {
        return this.create_at;
    }

    public final String getTitle() {
        return this.title;
    }
}
