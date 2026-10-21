package com.mogu.tv.model;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchHistoryBean.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u0005¢\u0006\u0002\u0010\u0006R&\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\b\u0012\u0004\u0012\u00020\u0004`\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mogu/tv/model/SearchHistoryBean;", "", "result", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "(Ljava/util/ArrayList;)V", "getResult", "()Ljava/util/ArrayList;", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SearchHistoryBean {

    @SerializedName("result")
    private final ArrayList<String> result;

    public SearchHistoryBean(ArrayList<String> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.result = result;
    }

    public final ArrayList<String> getResult() {
        return this.result;
    }
}
