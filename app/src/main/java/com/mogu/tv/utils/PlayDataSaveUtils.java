package com.mogu.tv.utils;

import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.model.SavePlayVod;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/** Preserves the original JSON storage, nullable model behavior and cache lifecycle. */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/mogu/tv/utils/PlayDataSaveUtils;", "", "()V", "staticPlayData", "Lcom/mogu/tv/model/SavePlayVod;", "getPlayData", "Lcom/mogu/tv/model/SavePlayVod$VodData;", "id", "", "savePlayData", "", NotificationCompat.CATEGORY_PROGRESS, "", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)

public final class PlayDataSaveUtils {
    public static final PlayDataSaveUtils INSTANCE = new PlayDataSaveUtils();
    private static SavePlayVod staticPlayData;

    private PlayDataSaveUtils() { }

    public final void savePlayData(String id, long progress) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (progress == 0) {
            return;
        }
        String stored = SpUtil.INSTANCE.getString(CacheKey.INSTANCE.getSAVE_PLAYDATA(), "");
        Gson gson = new Gson();
        SavePlayVod data = gson.fromJson(stored, SavePlayVod.class);
        if (data == null) {
            data = new SavePlayVod();
        }
        ArrayList<SavePlayVod.VodData> initial = data.getDatas();
        if (initial == null || initial.isEmpty()) {
            data.setDatas(new ArrayList<>());
        }
        SavePlayVod.VodData item = new SavePlayVod.VodData();
        item.setId(id);
        item.setProgress(Long.valueOf(progress));
        // Keep the original separate reads of the mutable list and first-match update.
        ArrayList<SavePlayVod.VodData> destination = data.getDatas();
        if (destination != null) {
            ArrayList<SavePlayVod.VodData> searched = data.getDatas();
            if (searched != null && searched.contains(item)) {
                ArrayList<SavePlayVod.VodData> indexed = data.getDatas();
                Integer index = indexed == null ? null : Integer.valueOf(indexed.indexOf(item));
                SavePlayVod.VodData existing = destination.get(index == null ? 0 : index.intValue());
                Intrinsics.checkNotNullExpressionValue(existing, "get(indexOf ?: 0)");
                existing.setProgress(Long.valueOf(progress));
            } else {
                destination.add(item);
            }
        }
        String json = gson.toJson(data);
        SpUtil preferences = SpUtil.INSTANCE;
        String key = CacheKey.INSTANCE.getSAVE_PLAYDATA();
        Intrinsics.checkNotNullExpressionValue(json, "toJson");
        preferences.saveValue(key, json);
        staticPlayData = data;
    }

    public final SavePlayVod.VodData getPlayData(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (staticPlayData == null) {
            staticPlayData = new Gson().fromJson(
                    SpUtil.INSTANCE.getString(CacheKey.INSTANCE.getSAVE_PLAYDATA(), ""), SavePlayVod.class);
        }
        SavePlayVod data = staticPlayData;
        if (data != null) {
            ArrayList<SavePlayVod.VodData> entries = data.getDatas();
            if (entries != null) {
                for (SavePlayVod.VodData entry : entries) {
                    Object itemId = entry.getId();
                    if (itemId == null) {
                        itemId = 0;
                    }
                    if (Intrinsics.areEqual(itemId, id)) {
                        return entry;
                    }
                }
            }
        }
        return null;
    }
}
