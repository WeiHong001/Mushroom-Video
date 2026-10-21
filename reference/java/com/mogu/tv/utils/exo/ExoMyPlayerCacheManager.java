package com.mogu.tv.utils.exo;

import android.content.Context;
import android.net.Uri;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import java.io.File;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public class ExoMyPlayerCacheManager implements ICacheManager {
    protected ExoMySourceManager mExoSourceManager;

    @Override // com.shuyu.gsyvideoplayer.cache.ICacheManager
    public void setCacheAvailableListener(ICacheManager.ICacheAvailableListener iCacheAvailableListener) {
    }

    @Override // com.shuyu.gsyvideoplayer.cache.ICacheManager
    public void doCacheLogic(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file) {
        if (!(iMediaPlayer instanceof IjkExoMyMediaPlayer)) {
            throw new UnsupportedOperationException("ExoPlayerCacheManager only support IjkExoMyMediaPlayer");
        }
        IjkExoMyMediaPlayer ijkExoMyMediaPlayer = (IjkExoMyMediaPlayer) iMediaPlayer;
        this.mExoSourceManager = ijkExoMyMediaPlayer.getExoHelper();
        ijkExoMyMediaPlayer.setCache(true);
        ijkExoMyMediaPlayer.setCacheDir(file);
        ijkExoMyMediaPlayer.setDataSource(context, Uri.parse(str), map);
    }

    @Override // com.shuyu.gsyvideoplayer.cache.ICacheManager
    public void clearCache(Context context, File file, String str) {
        ExoMySourceManager.clearCache(context, file, str);
    }

    @Override // com.shuyu.gsyvideoplayer.cache.ICacheManager
    public void release() {
        this.mExoSourceManager = null;
    }

    @Override // com.shuyu.gsyvideoplayer.cache.ICacheManager
    public boolean hadCached() {
        ExoMySourceManager exoMySourceManager = this.mExoSourceManager;
        return exoMySourceManager != null && exoMySourceManager.hadCached();
    }

    @Override // com.shuyu.gsyvideoplayer.cache.ICacheManager
    public boolean cachePreview(Context context, File file, String str) {
        return ExoMySourceManager.cachePreView(context, file, str);
    }
}
