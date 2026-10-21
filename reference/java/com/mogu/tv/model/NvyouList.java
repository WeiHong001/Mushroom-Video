package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import me.yokeyword.indexablerv.IndexableEntity;

/* JADX INFO: compiled from: NvyouList.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0002\f\rB\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/mogu/tv/model/NvyouList;", "", "list", "", "Lcom/mogu/tv/model/NvyouList$Item;", "total", "", "(Ljava/util/List;I)V", "getList", "()Ljava/util/List;", "getTotal", "()I", "Item", "User", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NvyouList {
    private final List<Item> list;
    private final int total;

    public NvyouList(List<Item> list, int i) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.total = i;
    }

    public final List<Item> getList() {
        return this.list;
    }

    public final int getTotal() {
        return this.total;
    }

    /* JADX INFO: compiled from: NvyouList.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0013\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/mogu/tv/model/NvyouList$Item;", "Lme/yokeyword/indexablerv/IndexableEntity;", "()V", "Pinyin", "", "getPinyin", "()Ljava/lang/String;", "setPinyin", "(Ljava/lang/String;)V", "User", "Lcom/mogu/tv/model/NvyouList$User;", "getUser", "()Lcom/mogu/tv/model/NvyouList$User;", "setUser", "(Lcom/mogu/tv/model/NvyouList$User;)V", "getFieldIndexBy", "setFieldIndexBy", "", "indexField", "setFieldPinyinIndexBy", "pinyin", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Item implements IndexableEntity {
        private String Pinyin = "";
        private User User;

        @Override // me.yokeyword.indexablerv.IndexableEntity
        public void setFieldPinyinIndexBy(String pinyin) {
        }

        public final String getPinyin() {
            return this.Pinyin;
        }

        public final void setPinyin(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.Pinyin = str;
        }

        public final User getUser() {
            return this.User;
        }

        public final void setUser(User user) {
            this.User = user;
        }

        @Override // me.yokeyword.indexablerv.IndexableEntity
        /* JADX INFO: renamed from: getFieldIndexBy, reason: from getter */
        public String getPinyin() {
            return this.Pinyin;
        }

        @Override // me.yokeyword.indexablerv.IndexableEntity
        public void setFieldIndexBy(String indexField) {
            if (indexField == null) {
                indexField = "";
            }
            this.Pinyin = indexField;
        }
    }

    /* JADX INFO: compiled from: NvyouList.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/model/NvyouList$User;", "", "avatar", "", "gender", "", "id", "name", "type", "(Ljava/lang/String;IILjava/lang/String;I)V", "getAvatar", "()Ljava/lang/String;", "getGender", "()I", "getId", "getName", "getType", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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
