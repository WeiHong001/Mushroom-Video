package com.mogu.tv.model;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import master.flame.danmaku.danmaku.parser.IDataSource;

/* JADX INFO: compiled from: AllAdsModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b!\u0018\u00002\u00020\u0001:\u0001$B×\u0001\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0013R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0015R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0015R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0015R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0015¨\u0006%"}, d2 = {"Lcom/mogu/tv/model/AllAdsModel;", "", "activity", "", "Lcom/mogu/tv/model/AllAdsModel$Item;", "appcenter", "banner", "chatu", "cover", "listcover", "search", "pianku", "detailssmall", "mine", "shequ", "shortvideoimg", TtmlNode.START, "homedialog", "listchatu", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getActivity", "()Ljava/util/List;", "getAppcenter", "getBanner", "getChatu", "getCover", "getDetailssmall", "getHomedialog", "getListchatu", "getListcover", "getMine", "getPianku", "getSearch", "getShequ", "getShortvideoimg", "getStart", "Item", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class AllAdsModel {
    private final List<Item> activity;
    private final List<Item> appcenter;
    private final List<Item> banner;
    private final List<Item> chatu;
    private final List<Item> cover;
    private final List<Item> detailssmall;
    private final List<Item> homedialog;
    private final List<Item> listchatu;
    private final List<Item> listcover;
    private final List<Item> mine;
    private final List<Item> pianku;
    private final List<Item> search;
    private final List<Item> shequ;
    private final List<Item> shortvideoimg;
    private final List<Item> start;

    public AllAdsModel(List<Item> activity, List<Item> appcenter, List<Item> banner, List<Item> chatu, List<Item> cover, List<Item> listcover, List<Item> search, List<Item> pianku, List<Item> detailssmall, List<Item> mine, List<Item> shequ, List<Item> shortvideoimg, List<Item> start, List<Item> homedialog, List<Item> listchatu) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(appcenter, "appcenter");
        Intrinsics.checkNotNullParameter(banner, "banner");
        Intrinsics.checkNotNullParameter(chatu, "chatu");
        Intrinsics.checkNotNullParameter(cover, "cover");
        Intrinsics.checkNotNullParameter(listcover, "listcover");
        Intrinsics.checkNotNullParameter(search, "search");
        Intrinsics.checkNotNullParameter(pianku, "pianku");
        Intrinsics.checkNotNullParameter(detailssmall, "detailssmall");
        Intrinsics.checkNotNullParameter(mine, "mine");
        Intrinsics.checkNotNullParameter(shequ, "shequ");
        Intrinsics.checkNotNullParameter(shortvideoimg, "shortvideoimg");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(homedialog, "homedialog");
        Intrinsics.checkNotNullParameter(listchatu, "listchatu");
        this.activity = activity;
        this.appcenter = appcenter;
        this.banner = banner;
        this.chatu = chatu;
        this.cover = cover;
        this.listcover = listcover;
        this.search = search;
        this.pianku = pianku;
        this.detailssmall = detailssmall;
        this.mine = mine;
        this.shequ = shequ;
        this.shortvideoimg = shortvideoimg;
        this.start = start;
        this.homedialog = homedialog;
        this.listchatu = listchatu;
    }

    public final List<Item> getActivity() {
        return this.activity;
    }

    public final List<Item> getAppcenter() {
        return this.appcenter;
    }

    public final List<Item> getBanner() {
        return this.banner;
    }

    public final List<Item> getChatu() {
        return this.chatu;
    }

    public final List<Item> getCover() {
        return this.cover;
    }

    public final List<Item> getListcover() {
        return this.listcover;
    }

    public final List<Item> getSearch() {
        return this.search;
    }

    public final List<Item> getPianku() {
        return this.pianku;
    }

    public final List<Item> getDetailssmall() {
        return this.detailssmall;
    }

    public final List<Item> getMine() {
        return this.mine;
    }

    public final List<Item> getShequ() {
        return this.shequ;
    }

    public final List<Item> getShortvideoimg() {
        return this.shortvideoimg;
    }

    public final List<Item> getStart() {
        return this.start;
    }

    public final List<Item> getHomedialog() {
        return this.homedialog;
    }

    public final List<Item> getListchatu() {
        return this.listchatu;
    }

    /* JADX INFO: compiled from: AllAdsModel.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0010\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/mogu/tv/model/AllAdsModel$Item;", "", "action", "", "comment", IDataSource.SCHEME_FILE_TAG, "id", "", "name", "weight", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V", "getAction", "()Ljava/lang/String;", "getComment", "getFile", "getId", "()I", "getName", "getWeight", "setWeight", "(I)V", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item {
        private final String action;
        private final String comment;
        private final String file;
        private final int id;
        private final String name;
        private int weight;

        public Item(String action, String comment, String file, int i, String name, int i2) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(comment, "comment");
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(name, "name");
            this.action = action;
            this.comment = comment;
            this.file = file;
            this.id = i;
            this.name = name;
            this.weight = i2;
        }

        public final String getAction() {
            return this.action;
        }

        public final String getComment() {
            return this.comment;
        }

        public final String getFile() {
            return this.file;
        }

        public final int getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final int getWeight() {
            return this.weight;
        }

        public final void setWeight(int i) {
            this.weight = i;
        }
    }
}
