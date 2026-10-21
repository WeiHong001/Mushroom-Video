package com.mogu.tv.model;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CookieSave.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/mogu/tv/model/CookieSave;", "", "()V", "data", "", "Lcom/mogu/tv/model/CookieSave$KeyVolue;", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "KeyVolue", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class CookieSave {
    private List<KeyVolue> data = new ArrayList();

    public final List<KeyVolue> getData() {
        return this.data;
    }

    public final void setData(List<KeyVolue> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.data = list;
    }

    /* JADX INFO: compiled from: CookieSave.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/mogu/tv/model/CookieSave$KeyVolue;", "", "()V", "cookie", "", "getCookie", "()Ljava/lang/String;", "setCookie", "(Ljava/lang/String;)V", "key", "getKey", "setKey", "equals", "", "other", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class KeyVolue {
        private String key = "";
        private String cookie = "";

        public final String getKey() {
            return this.key;
        }

        public final void setKey(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.key = str;
        }

        public final String getCookie() {
            return this.cookie;
        }

        public final void setCookie(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.cookie = str;
        }

        public boolean equals(Object other) {
            if (other instanceof KeyVolue) {
                return this.key.equals(((KeyVolue) other).key);
            }
            return false;
        }
    }
}
