package com.mogu.tv.model;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserOtherInfo.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0015R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0015¨\u0006 "}, d2 = {"Lcom/mogu/tv/model/UserOtherInfo;", "", "avatar", "", "birthday", "follower", "", "gender", "height", "id", "introduction", "is_floowed", "", "name", "type", "weight", "(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ZLjava/lang/String;II)V", "getAvatar", "()Ljava/lang/String;", "getBirthday", "getFollower", "()I", "getGender", "getHeight", "getId", "getIntroduction", "()Z", "set_floowed", "(Z)V", "getName", "getType", "getWeight", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UserOtherInfo {
    private final String avatar;
    private final String birthday;
    private final int follower;
    private final int gender;
    private final int height;
    private final int id;
    private final String introduction;
    private boolean is_floowed;
    private final String name;
    private final int type;
    private final int weight;

    public UserOtherInfo(String avatar, String birthday, int i, int i2, int i3, int i4, String introduction, boolean z, String name, int i5, int i6) {
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(birthday, "birthday");
        Intrinsics.checkNotNullParameter(introduction, "introduction");
        Intrinsics.checkNotNullParameter(name, "name");
        this.avatar = avatar;
        this.birthday = birthday;
        this.follower = i;
        this.gender = i2;
        this.height = i3;
        this.id = i4;
        this.introduction = introduction;
        this.is_floowed = z;
        this.name = name;
        this.type = i5;
        this.weight = i6;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final String getBirthday() {
        return this.birthday;
    }

    public final int getFollower() {
        return this.follower;
    }

    public final int getGender() {
        return this.gender;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getId() {
        return this.id;
    }

    public final String getIntroduction() {
        return this.introduction;
    }

    /* JADX INFO: renamed from: is_floowed, reason: from getter */
    public final boolean getIs_floowed() {
        return this.is_floowed;
    }

    public final void set_floowed(boolean z) {
        this.is_floowed = z;
    }

    public final String getName() {
        return this.name;
    }

    public final int getType() {
        return this.type;
    }

    public final int getWeight() {
        return this.weight;
    }
}
