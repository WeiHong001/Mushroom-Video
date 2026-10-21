package com.mogu.tv.utils;

import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.model.SavePlayVod;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PlayDataSaveUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/mogu/tv/utils/PlayDataSaveUtils;", "", "()V", "staticPlayData", "Lcom/mogu/tv/model/SavePlayVod;", "getPlayData", "Lcom/mogu/tv/model/SavePlayVod$VodData;", "id", "", "savePlayData", "", NotificationCompat.CATEGORY_PROGRESS, "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PlayDataSaveUtils {
    public static final PlayDataSaveUtils INSTANCE = new PlayDataSaveUtils();
    private static SavePlayVod staticPlayData;

    private PlayDataSaveUtils() {
    }

    public final void savePlayData(String id, long progress) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (progress == 0) {
            return;
        }
        String string = SpUtil.INSTANCE.getString(CacheKey.INSTANCE.getSAVE_PLAYDATA(), "");
        Gson gson = new Gson();
        Object objFromJson = gson.fromJson(string, (Class<Object>) SavePlayVod.class);
        if (objFromJson == null) {
            objFromJson = new SavePlayVod();
        }
        SavePlayVod savePlayVod = (SavePlayVod) objFromJson;
        ArrayList<SavePlayVod.VodData> datas = savePlayVod.getDatas();
        if (datas == null || datas.isEmpty()) {
            savePlayVod.setDatas(new ArrayList<>());
        }
        SavePlayVod.VodData vodData = new SavePlayVod.VodData();
        vodData.setId(id);
        vodData.setProgress(Long.valueOf(progress));
        ArrayList<SavePlayVod.VodData> datas2 = savePlayVod.getDatas();
        if (datas2 != null) {
            ArrayList<SavePlayVod.VodData> datas3 = savePlayVod.getDatas();
            if (datas3 != null && datas3.contains(vodData)) {
                ArrayList<SavePlayVod.VodData> datas4 = savePlayVod.getDatas();
                Integer numValueOf = datas4 != null ? Integer.valueOf(datas4.indexOf(vodData)) : null;
                SavePlayVod.VodData vodData2 = datas2.get(numValueOf != null ? numValueOf.intValue() : 0);
                Intrinsics.checkNotNullExpressionValue(vodData2, "get(indexOf ?: 0)");
                vodData2.setProgress(Long.valueOf(progress));
            } else {
                datas2.add(vodData);
            }
        }
        String toJson = gson.toJson(objFromJson);
        SpUtil spUtil = SpUtil.INSTANCE;
        String save_playdata = CacheKey.INSTANCE.getSAVE_PLAYDATA();
        Intrinsics.checkNotNullExpressionValue(toJson, "toJson");
        spUtil.saveValue(save_playdata, toJson);
        staticPlayData = savePlayVod;
    }

    public final SavePlayVod.VodData getPlayData(String id) {
        ArrayList<SavePlayVod.VodData> datas;
        Intrinsics.checkNotNullParameter(id, "id");
        if (staticPlayData == null) {
            staticPlayData = (SavePlayVod) new Gson().fromJson(SpUtil.INSTANCE.getString(CacheKey.INSTANCE.getSAVE_PLAYDATA(), ""), SavePlayVod.class);
        }
        SavePlayVod savePlayVod = staticPlayData;
        if (savePlayVod != null && (datas = savePlayVod.getDatas()) != null) {
            for (SavePlayVod.VodData vodData : datas) {
                Object id2 = vodData.getId();
                if (id2 == null) {
                    id2 = 0;
                }
                if (Intrinsics.areEqual(id2, id)) {
                    return vodData;
                }
            }
        }
        return null;
    }
}
