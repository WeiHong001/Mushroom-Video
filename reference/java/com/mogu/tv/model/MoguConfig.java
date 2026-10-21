package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AllNetConfig.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/MoguConfig;", "", "Comment", "", "Name", "Value", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getComment", "()Ljava/lang/String;", "getName", "getValue", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MoguConfig {
    private final String Comment;
    private final String Name;
    private final String Value;

    public MoguConfig(String Comment, String Name, String Value) {
        Intrinsics.checkNotNullParameter(Comment, "Comment");
        Intrinsics.checkNotNullParameter(Name, "Name");
        Intrinsics.checkNotNullParameter(Value, "Value");
        this.Comment = Comment;
        this.Name = Name;
        this.Value = Value;
    }

    public final String getComment() {
        return this.Comment;
    }

    public final String getName() {
        return this.Name;
    }

    public final String getValue() {
        return this.Value;
    }
}
