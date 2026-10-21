package com.mogu.tv.model;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UploadImage.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\b\"\u0004\b\u000b\u0010\u0005R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\b\"\u0004\b\u0014\u0010\u0005¨\u0006\u0015"}, d2 = {"Lcom/mogu/tv/model/UploadImage;", "", "()V", "path", "", "(Ljava/lang/String;)V", "imageKey", "getImageKey", "()Ljava/lang/String;", "setImageKey", "getPath", "setPath", NotificationCompat.CATEGORY_PROGRESS, "", "getProgress", "()I", "setProgress", "(I)V", "sourcePath", "getSourcePath", "setSourcePath", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UploadImage {
    private String imageKey;
    private String path;
    private int progress;
    private String sourcePath;

    public final String getPath() {
        return this.path;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final void setProgress(int i) {
        this.progress = i;
    }

    public final String getSourcePath() {
        return this.sourcePath;
    }

    public final void setSourcePath(String str) {
        this.sourcePath = str;
    }

    public final String getImageKey() {
        return this.imageKey;
    }

    public final void setImageKey(String str) {
        this.imageKey = str;
    }

    public UploadImage() {
    }

    public UploadImage(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
    }
}
