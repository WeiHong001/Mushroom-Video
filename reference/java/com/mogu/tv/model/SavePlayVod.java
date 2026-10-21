package com.mogu.tv.model;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SavePlayVod.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002R.\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/mogu/tv/model/SavePlayVod;", "", "()V", "datas", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/SavePlayVod$VodData;", "Lkotlin/collections/ArrayList;", "getDatas", "()Ljava/util/ArrayList;", "setDatas", "(Ljava/util/ArrayList;)V", "VodData", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SavePlayVod {
    private ArrayList<VodData> datas = new ArrayList<>();

    public final ArrayList<VodData> getDatas() {
        return this.datas;
    }

    public final void setDatas(ArrayList<VodData> arrayList) {
        this.datas = arrayList;
    }

    /* JADX INFO: compiled from: SavePlayVod.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001e\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/mogu/tv/model/SavePlayVod$VodData;", "", "()V", "id", "", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "name", "getName", "setName", NotificationCompat.CATEGORY_PROGRESS, "", "getProgress", "()Ljava/lang/Long;", "setProgress", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "equals", "", "other", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class VodData {
        private String id = "";
        private String name = "";
        private Long progress = 0L;

        public final String getId() {
            return this.id;
        }

        public final void setId(String str) {
            this.id = str;
        }

        public final String getName() {
            return this.name;
        }

        public final void setName(String str) {
            this.name = str;
        }

        public final Long getProgress() {
            return this.progress;
        }

        public final void setProgress(Long l) {
            this.progress = l;
        }

        public boolean equals(Object other) {
            if (other instanceof VodData) {
                return StringsKt.equals$default(this.id, ((VodData) other).id, false, 2, null);
            }
            return false;
        }
    }
}
