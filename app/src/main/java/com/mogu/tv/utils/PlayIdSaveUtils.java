package com.mogu.tv.utils;

import java.util.concurrent.ConcurrentHashMap;

/** Original URL-to-content-ID contract; called by routing, details and short video. */
public final class PlayIdSaveUtils {
    public static final PlayIdSaveUtils INSTANCE = new PlayIdSaveUtils();
    private final ConcurrentHashMap<String, String> playIdMap = new ConcurrentHashMap<>();

    private PlayIdSaveUtils() { }

    public void savePlayData(String id, String url) {
        if (id == null || url == null) throw new IllegalArgumentException("id and url are required");
        playIdMap.put(url, id);
    }

    public String getPlayId(String url) {
        if (url == null) throw new IllegalArgumentException("url is required");
        return playIdMap.get(url);
    }
}
