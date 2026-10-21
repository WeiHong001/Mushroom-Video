package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VideoPlayDetails.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001:\u0002\u001d\u001eBa\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\b\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/mogu/tv/model/VideoPlayDetails;", "", "comments", "", "created_at", "favorites", "id", "labels", "", "Lcom/mogu/tv/model/VideoPlayDetails$Label;", "play_url", "title", "users", "Lcom/mogu/tv/model/VideoPlayDetails$User;", "views", "nubmer", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "getComments", "()Ljava/lang/String;", "getCreated_at", "getFavorites", "getId", "getLabels", "()Ljava/util/List;", "getNubmer", "getPlay_url", "getTitle", "getUsers", "getViews", "Label", "User", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoPlayDetails {
    private final String comments;
    private final String created_at;
    private final String favorites;
    private final String id;
    private final List<Label> labels;
    private final String nubmer;
    private final String play_url;
    private final String title;
    private final List<User> users;
    private final String views;

    public VideoPlayDetails(String comments, String created_at, String favorites, String id, List<Label> labels, String play_url, String title, List<User> users, String views, String nubmer) {
        Intrinsics.checkNotNullParameter(comments, "comments");
        Intrinsics.checkNotNullParameter(created_at, "created_at");
        Intrinsics.checkNotNullParameter(favorites, "favorites");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(labels, "labels");
        Intrinsics.checkNotNullParameter(play_url, "play_url");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(users, "users");
        Intrinsics.checkNotNullParameter(views, "views");
        Intrinsics.checkNotNullParameter(nubmer, "nubmer");
        this.comments = comments;
        this.created_at = created_at;
        this.favorites = favorites;
        this.id = id;
        this.labels = labels;
        this.play_url = play_url;
        this.title = title;
        this.users = users;
        this.views = views;
        this.nubmer = nubmer;
    }

    public final String getComments() {
        return this.comments;
    }

    public final String getCreated_at() {
        return this.created_at;
    }

    public final String getFavorites() {
        return this.favorites;
    }

    public final String getId() {
        return this.id;
    }

    public final List<Label> getLabels() {
        return this.labels;
    }

    public final String getPlay_url() {
        return this.play_url;
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<User> getUsers() {
        return this.users;
    }

    public final String getViews() {
        return this.views;
    }

    public final String getNubmer() {
        return this.nubmer;
    }

    /* JADX INFO: compiled from: VideoPlayDetails.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/mogu/tv/model/VideoPlayDetails$Label;", "", "id", "", "name", "(Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Label {
        private final String id;
        private final String name;

        public Label(String id, String name) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, "name");
            this.id = id;
            this.name = name;
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }
    }

    /* JADX INFO: compiled from: VideoPlayDetails.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/VideoPlayDetails$User;", "", "avatar", "", "gender", "id", "name", "type", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getGender", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
