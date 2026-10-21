package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShortVideoList.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002\f\rB\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/model/ShortVideoList;", "", "list", "", "Lcom/mogu/tv/model/ShortVideoList$Data;", "total", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getTotal", "()I", "Data", "User", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortVideoList {
    private final List<Data> list;
    private final int total;

    public ShortVideoList(List<Data> list, int i) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.total = i;
    }

    public final List<Data> getList() {
        return this.list;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX INFO: compiled from: ShortVideoList.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/mogu/tv/model/ShortVideoList$Data;", "", "comments", "", "favorites", "id", "play_url", "title", "cover", "user", "Lcom/mogu/tv/model/ShortVideoList$User;", "views", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mogu/tv/model/ShortVideoList$User;Ljava/lang/String;)V", "getComments", "()Ljava/lang/String;", "getCover", "getFavorites", "getId", "getPlay_url", "getTitle", "getUser", "()Lcom/mogu/tv/model/ShortVideoList$User;", "getViews", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Data {
        private final String comments;
        private final String cover;
        private final String favorites;
        private final String id;
        private final String play_url;
        private final String title;
        private final User user;
        private final String views;

        public Data(String comments, String favorites, String id, String play_url, String title, String cover, User user, String views) {
            Intrinsics.checkNotNullParameter(comments, "comments");
            Intrinsics.checkNotNullParameter(favorites, "favorites");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(play_url, "play_url");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(cover, "cover");
            Intrinsics.checkNotNullParameter(views, "views");
            this.comments = comments;
            this.favorites = favorites;
            this.id = id;
            this.play_url = play_url;
            this.title = title;
            this.cover = cover;
            this.user = user;
            this.views = views;
        }

        public final String getComments() {
            return this.comments;
        }

        public final String getFavorites() {
            return this.favorites;
        }

        public final String getId() {
            return this.id;
        }

        public final String getPlay_url() {
            return this.play_url;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getCover() {
            return this.cover;
        }

        public final User getUser() {
            return this.user;
        }

        public final String getViews() {
            return this.views;
        }
    }

    /* JADX INFO: compiled from: ShortVideoList.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/ShortVideoList$User;", "", "avatar", "", "gender", "id", "name", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getGender", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class User {
        private final String avatar;
        private final String gender;
        private final String id;
        private final String name;
        private final String type;

        public User(String avatar, String gender, String id, String name, String type) {
            Intrinsics.checkNotNullParameter(avatar, "avatar");
            Intrinsics.checkNotNullParameter(gender, "gender");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(type, "type");
            this.avatar = avatar;
            this.gender = gender;
            this.id = id;
            this.name = name;
            this.type = type;
        }

        public final String getAvatar() {
            return this.avatar;
        }

        public final String getGender() {
            return this.gender;
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final String getType() {
            return this.type;
        }
    }
}
