package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: GridUiModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0013\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0002\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012¨\u0006\u001b"}, d2 = {"Lcom/mogu/tv/model/GridUiModel;", "", "name", "", "image", "", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "showNumber", "", "number", "(Ljava/lang/String;ILjava/lang/String;ZI)V", "getImage", "()I", "setImage", "(I)V", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getNumber", "setNumber", "getShowNumber", "()Z", "setShowNumber", "(Z)V", "getUrl", "setUrl", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class GridUiModel {
    private int image;
    private String name;
    private int number;
    private boolean showNumber;
    private String url;

    public GridUiModel(String name, int i, String url, boolean z, int i2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        this.name = name;
        this.image = i;
        this.url = url;
        this.showNumber = z;
        this.number = i2;
    }

    public /* synthetic */ GridUiModel(String str, int i, String str2, boolean z, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? 0 : i2);
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final int getImage() {
        return this.image;
    }

    public final void setImage(int i) {
        this.image = i;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }

    public final boolean getShowNumber() {
        return this.showNumber;
    }

    public final void setShowNumber(boolean z) {
        this.showNumber = z;
    }

    public final int getNumber() {
        return this.number;
    }

    public final void setNumber(int i) {
        this.number = i;
    }
}
