package com.mogu.tv.model;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.seamless.xhtml.XHTML;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: BannerImg.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0011B5\u0012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR*\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/mogu/tv/model/BannerImg;", "", "result", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/BannerImg$ResultItem;", "Lkotlin/collections/ArrayList;", "message", "", NotificationCompat.CATEGORY_STATUS, "", "(Ljava/util/ArrayList;Ljava/lang/String;I)V", "getMessage", "()Ljava/lang/String;", "getResult", "()Ljava/util/ArrayList;", "getStatus", "()I", "ResultItem", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class BannerImg {

    @SerializedName("message")
    private final String message;

    @SerializedName("result")
    private final ArrayList<ResultItem> result;

    @SerializedName(NotificationCompat.CATEGORY_STATUS)
    private final int status;

    public BannerImg(ArrayList<ResultItem> arrayList, String message, int i) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.result = arrayList;
        this.message = message;
        this.status = i;
    }

    public /* synthetic */ BannerImg(ArrayList arrayList, String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(arrayList, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? 0 : i);
    }

    public final ArrayList<ResultItem> getResult() {
        return this.result;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getStatus() {
        return this.status;
    }

    /* JADX INFO: compiled from: BannerImg.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\u0018\u00002\u00020\u0001Bq\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0003¢\u0006\u0002\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/mogu/tv/model/BannerImg$ResultItem;", "", "seat", "", "img", "", "id", "title", "type", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "android_url", "video", "vclass", NotificationCompat.CATEGORY_STATUS, "(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getAndroid_url", "()Ljava/lang/String;", "getId", "()I", "getImg", "getSeat", "getStatus", "getTitle", "getType", "getUrl", "getVclass", "getVideo", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ResultItem {

        @SerializedName("android_url")
        private final String android_url;

        @SerializedName("id")
        private final int id;

        @SerializedName("img")
        private final String img;

        @SerializedName("seat")
        private final int seat;

        @SerializedName(NotificationCompat.CATEGORY_STATUS)
        private final int status;

        @SerializedName("title")
        private final String title;

        @SerializedName("type")
        private final int type;

        @SerializedName(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL)
        private final String url;

        @SerializedName(XHTML.ATTR.CLASS)
        private final String vclass;

        @SerializedName("video")
        private final String video;

        public ResultItem() {
            this(0, null, 0, null, 0, null, null, null, null, 0, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
        }

        public ResultItem(int i, String img, int i2, String title, int i3, String str, String str2, String str3, String str4, int i4) {
            Intrinsics.checkNotNullParameter(img, "img");
            Intrinsics.checkNotNullParameter(title, "title");
            this.seat = i;
            this.img = img;
            this.id = i2;
            this.title = title;
            this.type = i3;
            this.url = str;
            this.android_url = str2;
            this.video = str3;
            this.vclass = str4;
            this.status = i4;
        }

        public /* synthetic */ ResultItem(int i, String str, int i2, String str2, int i3, String str3, String str4, String str5, String str6, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i, (i5 & 2) != 0 ? "" : str, (i5 & 4) != 0 ? 0 : i2, (i5 & 8) == 0 ? str2 : "", (i5 & 16) != 0 ? 0 : i3, (i5 & 32) != 0 ? null : str3, (i5 & 64) != 0 ? null : str4, (i5 & 128) != 0 ? null : str5, (i5 & 256) == 0 ? str6 : null, (i5 & 512) == 0 ? i4 : 0);
        }

        public final int getSeat() {
            return this.seat;
        }

        public final String getImg() {
            return this.img;
        }

        public final int getId() {
            return this.id;
        }

        public final String getTitle() {
            return this.title;
        }

        public final int getType() {
            return this.type;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getAndroid_url() {
            return this.android_url;
        }

        public final String getVideo() {
            return this.video;
        }

        public final String getVclass() {
            return this.vclass;
        }

        public final int getStatus() {
            return this.status;
        }
    }
}
