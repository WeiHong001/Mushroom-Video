package com.mogu.tv.model;

import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShequListModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/mogu/tv/model/ShequListModel;", "", "()V", "list", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShequListModel$Data;", "Lkotlin/collections/ArrayList;", "getList", "()Ljava/util/ArrayList;", "Data", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequListModel {
    private final ArrayList<Data> list = new ArrayList<>();

    public final ArrayList<Data> getList() {
        return this.list;
    }

    /* JADX INFO: compiled from: ShequListModel.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002&'B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010%\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0006\"\u0004\b\u000f\u0010\bR\u0014\u0010\u0010\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u0014\u0010\u0015\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\fR!\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\b\u0012\u0004\u0012\u00020\u0019`\u001a¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u0013\u0010\u001f\u001a\u0004\u0018\u00010 ¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\nX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\f¨\u0006("}, d2 = {"Lcom/mogu/tv/model/ShequListModel$Data;", "Lcom/chad/library/adapter/base/entity/MultiItemEntity;", "()V", "comments", "", "getComments", "()I", "setComments", "(I)V", "created_at", "", "getCreated_at", "()Ljava/lang/String;", "dataType", "getDataType", "setDataType", "detail", "getDetail", "favorites", "getFavorites", "setFavorites", "id", "getId", "images", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShequListModel$Data$Image;", "Lkotlin/collections/ArrayList;", "getImages", "()Ljava/util/ArrayList;", "isZan", "setZan", "user", "Lcom/mogu/tv/model/ShequListModel$Data$User;", "getUser", "()Lcom/mogu/tv/model/ShequListModel$Data$User;", "video", "getVideo", "getItemType", "Image", "User", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Data implements MultiItemEntity {
        private int comments;
        private int favorites;
        private int isZan;
        private final User user;
        private final String created_at = "";
        private final String detail = "";
        private final String video = "";
        private final String id = "";
        private final ArrayList<Image> images = new ArrayList<>();
        private int dataType = 1;

        @Override // com.chad.library.adapter.base.entity.MultiItemEntity
        public int getItemType() {
            return this.dataType == 1 ? 1 : 2;
        }

        public final String getCreated_at() {
            return this.created_at;
        }

        public final String getDetail() {
            return this.detail;
        }

        public final String getVideo() {
            return this.video;
        }

        /* JADX INFO: renamed from: isZan, reason: from getter */
        public final int getIsZan() {
            return this.isZan;
        }

        public final void setZan(int i) {
            this.isZan = i;
        }

        public final String getId() {
            return this.id;
        }

        public final ArrayList<Image> getImages() {
            return this.images;
        }

        public final User getUser() {
            return this.user;
        }

        public final int getDataType() {
            return this.dataType;
        }

        public final void setDataType(int i) {
            this.dataType = i;
        }

        public final int getComments() {
            return this.comments;
        }

        public final void setComments(int i) {
            this.comments = i;
        }

        public final int getFavorites() {
            return this.favorites;
        }

        public final void setFavorites(int i) {
            this.favorites = i;
        }

        /* JADX INFO: compiled from: ShequListModel.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/ShequListModel$Data$Image;", "", "id", "", "path", "", "(ILjava/lang/String;)V", "getId", "()I", "getPath", "()Ljava/lang/String;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        public static final class Image {
            private final int id;
            private final String path;

            public Image(int i, String path) {
                Intrinsics.checkNotNullParameter(path, "path");
                this.id = i;
                this.path = path;
            }

            public final int getId() {
                return this.id;
            }

            public final String getPath() {
                return this.path;
            }
        }

        /* JADX INFO: compiled from: ShequListModel.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/model/ShequListModel$Data$User;", "", "avatar", "", "gender", "", "id", "name", "type", "(Ljava/lang/String;IILjava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getGender", "()I", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
}
