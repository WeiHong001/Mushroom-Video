package com.mogu.tv.utils;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import master.flame.danmaku.danmaku.parser.IDataSource;

/* JADX INFO: compiled from: FileImageUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/mogu/tv/utils/OutputFileTaker;", "", IDataSource.SCHEME_FILE_TAG, "Ljava/io/File;", "(Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "setFile", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
final class OutputFileTaker {
    private File file;

    /* JADX WARN: Multi-variable type inference failed */
    public OutputFileTaker() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public OutputFileTaker(File file) {
        this.file = file;
    }

    public /* synthetic */ OutputFileTaker(File file, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : file);
    }

    public final File getFile() {
        return this.file;
    }

    public final void setFile(File file) {
        this.file = file;
    }
}
