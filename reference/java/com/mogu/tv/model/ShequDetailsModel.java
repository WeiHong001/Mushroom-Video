package com.mogu.tv.model;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShequDetailsModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001:\u0001 Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0018\b\u0002\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R!\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0013\"\u0004\b\u001b\u0010\u001cR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015¨\u0006!"}, d2 = {"Lcom/mogu/tv/model/ShequDetailsModel;", "", "comments", "", "created_at", "", "detail", "video", "favorites", "isZan", "id", "images", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/ShequListModel$Data$Image;", "Lkotlin/collections/ArrayList;", "user", "Lcom/mogu/tv/model/ShequDetailsModel$User;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/ArrayList;Lcom/mogu/tv/model/ShequDetailsModel$User;)V", "getComments", "()I", "getCreated_at", "()Ljava/lang/String;", "getDetail", "getFavorites", "getId", "getImages", "()Ljava/util/ArrayList;", "setZan", "(I)V", "getUser", "()Lcom/mogu/tv/model/ShequDetailsModel$User;", "getVideo", "User", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShequDetailsModel {
    private final int comments;
    private final String created_at;
    private final String detail;
    private final int favorites;
    private final int id;
    private final ArrayList<ShequListModel.Data.Image> images;
    private int isZan;
    private final User user;
    private final String video;

    public ShequDetailsModel(int i, String created_at, String detail, String video, int i2, int i3, int i4, ArrayList<ShequListModel.Data.Image> images, User user) {
        Intrinsics.checkNotNullParameter(created_at, "created_at");
        Intrinsics.checkNotNullParameter(detail, "detail");
        Intrinsics.checkNotNullParameter(video, "video");
        Intrinsics.checkNotNullParameter(images, "images");
        Intrinsics.checkNotNullParameter(user, "user");
        this.comments = i;
        this.created_at = created_at;
        this.detail = detail;
        this.video = video;
        this.favorites = i2;
        this.isZan = i3;
        this.id = i4;
        this.images = images;
        this.user = user;
    }

    public final int getComments() {
        return this.comments;
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

    public final int getFavorites() {
        return this.favorites;
    }

    /* JADX INFO: renamed from: isZan, reason: from getter */
    public final int getIsZan() {
        return this.isZan;
    }

    public final void setZan(int i) {
        this.isZan = i;
    }

    public final int getId() {
        return this.id;
    }

    public /* synthetic */ ShequDetailsModel(int i, String str, String str2, String str3, int i2, int i3, int i4, ArrayList arrayList, User user, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, str2, str3, i2, (i5 & 32) != 0 ? 0 : i3, i4, (i5 & 128) != 0 ? new ArrayList() : arrayList, user);
    }

    public final ArrayList<ShequListModel.Data.Image> getImages() {
        return this.images;
    }

    public final User getUser() {
        return this.user;
    }

    /* JADX INFO: compiled from: ShequDetailsModel.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/model/ShequDetailsModel$User;", "", "avatar", "", "gender", "", "id", "name", "type", "(Ljava/lang/String;IILjava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getGender", "()I", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
