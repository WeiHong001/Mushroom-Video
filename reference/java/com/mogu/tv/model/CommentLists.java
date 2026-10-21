package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommentLists.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002\f\rB\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/model/CommentLists;", "", "list", "", "Lcom/mogu/tv/model/CommentLists$CommentItem;", "total", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getTotal", "()I", "CommentItem", "User", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CommentLists {
    private final List<CommentItem> list;
    private final int total;

    public CommentLists(List<CommentItem> list, int i) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.total = i;
    }

    public final List<CommentItem> getList() {
        return this.list;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX INFO: compiled from: CommentLists.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/mogu/tv/model/CommentLists$CommentItem;", "", "comment", "", "created_at", "id", "", "user", "Lcom/mogu/tv/model/CommentLists$User;", "vod_id", "(Ljava/lang/String;Ljava/lang/String;ILcom/mogu/tv/model/CommentLists$User;I)V", "getComment", "()Ljava/lang/String;", "getCreated_at", "getId", "()I", "getUser", "()Lcom/mogu/tv/model/CommentLists$User;", "getVod_id", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class CommentItem {
        private final String comment;
        private final String created_at;
        private final int id;
        private final User user;
        private final int vod_id;

        public CommentItem(String comment, String created_at, int i, User user, int i2) {
            Intrinsics.checkNotNullParameter(comment, "comment");
            Intrinsics.checkNotNullParameter(created_at, "created_at");
            this.comment = comment;
            this.created_at = created_at;
            this.id = i;
            this.user = user;
            this.vod_id = i2;
        }

        public final String getComment() {
            return this.comment;
        }

        public final String getCreated_at() {
            return this.created_at;
        }

        public final int getId() {
            return this.id;
        }

        public final User getUser() {
            return this.user;
        }

        public final int getVod_id() {
            return this.vod_id;
        }
    }

    /* JADX INFO: compiled from: CommentLists.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/model/CommentLists$User;", "", "avatar", "", "gender", "", "id", "name", "type", "(Ljava/lang/String;IILjava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getGender", "()I", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
