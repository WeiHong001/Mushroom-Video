package com.mogu.tv.utils;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: PlayIdSaveUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u0005J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005R.\u0010\u0003\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/mogu/tv/utils/PlayIdSaveUtils;", "", "()V", "playIdMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getPlayId", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "savePlayData", "", "id", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PlayIdSaveUtils {
    public static final PlayIdSaveUtils INSTANCE = new PlayIdSaveUtils();
    private static HashMap<String, String> playIdMap = new HashMap<>();

    private PlayIdSaveUtils() {
    }

    public final void savePlayData(String id, String url) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(url, "url");
        HashMap<String, String> map = playIdMap;
        if (map != null) {
            map.put(url, id);
        }
    }

    public final String getPlayId(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HashMap<String, String> map = playIdMap;
        if (map != null) {
            return map.get(url);
        }
        return null;
    }
}
