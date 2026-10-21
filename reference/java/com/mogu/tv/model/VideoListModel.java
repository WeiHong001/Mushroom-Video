package com.mogu.tv.model;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoListModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\t\nB\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/VideoListModel;", "", "list", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/VideoListModel$Video;", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getList", "()Ljava/util/ArrayList;", "User", "Video", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoListModel {
    private final ArrayList<Video> list;

    public VideoListModel(ArrayList<Video> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
    }

    public final ArrayList<Video> getList() {
        return this.list;
    }

    /* JADX INFO: compiled from: VideoListModel.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/mogu/tv/model/VideoListModel$Video;", "", "cover", "", "duration", "", "id", "title", "users", "", "Lcom/mogu/tv/model/VideoListModel$User;", "views", "", "showAd", "", "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;IZ)V", "getCover", "()Ljava/lang/String;", "getDuration", "()J", "getId", "getShowAd", "()Z", "setShowAd", "(Z)V", "getTitle", "getUsers", "()Ljava/util/List;", "getViews", "()I", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Video {
        private final String cover;
        private final long duration;
        private final String id;
        private boolean showAd;
        private final String title;
        private final List<User> users;
        private final int views;

        public Video(String cover, long j, String id, String title, List<User> users, int i, boolean z) {
            Intrinsics.checkNotNullParameter(cover, "cover");
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(users, "users");
            this.cover = cover;
            this.duration = j;
            this.id = id;
            this.title = title;
            this.users = users;
            this.views = i;
            this.showAd = z;
        }

        public /* synthetic */ Video(String str, long j, String str2, String str3, List list, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, j, str2, str3, list, i, (i2 & 64) != 0 ? false : z);
        }

        public final String getCover() {
            return this.cover;
        }

        public final long getDuration() {
            return this.duration;
        }

        public final String getId() {
            return this.id;
        }

        public final String getTitle() {
            return this.title;
        }

        public final List<User> getUsers() {
            return this.users;
        }

        public final int getViews() {
            return this.views;
        }

        public final boolean getShowAd() {
            return this.showAd;
        }

        public final void setShowAd(boolean z) {
            this.showAd = z;
        }
    }

    /* JADX INFO: compiled from: VideoListModel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/model/VideoListModel$User;", "", "avatar", "", "gender", "", "id", "name", "type", "(Ljava/lang/String;IILjava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getGender", "()I", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class User {
        private final String avatar;
        private final int gender;
        private final int id;
        private final String name;
        private final int type;

        public User(String avatar, int i, int i2, String name, int i3) {
            Intrinsics.checkNotNullParameter(avatar, "avatar");
            Intrinsics.checkNotNullParameter(name, "name");
            this.avatar = avatar;
            this.gender = i;
            this.id = i2;
            this.name = name;
            this.type = i3;
        }

        public final String getAvatar() {
            return this.avatar;
        }

        public final int getGender() {
            return this.gender;
        }

        public final int getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final int getType() {
            return this.type;
        }
    }
}
