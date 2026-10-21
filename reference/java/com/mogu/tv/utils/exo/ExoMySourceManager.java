package com.mogu.tv.utils.exo;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.database.DatabaseProvider;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.DefaultBandwidthMeter;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheKeyFactory;
import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import com.google.android.exoplayer2.upstream.cache.SimpleCache;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Ascii;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import tv.danmaku.ijk.media.exo2.ExoMediaSourceInterceptListener;

/* JADX INFO: loaded from: classes2.dex */
public class ExoMySourceManager {
    private static final long DEFAULT_MAX_SIZE = 536870912;
    private static final String TAG = "ExoSourceManager";
    public static final int TYPE_RTMP = 14;
    private static boolean isForceRtspTcp = true;
    private static Cache mCache = null;
    private static DatabaseProvider sDatabaseProvider = null;
    private static ExoMediaSourceInterceptListener sExoMediaSourceInterceptListener = null;
    private static int sHttpConnectTimeout = -1;
    private static int sHttpReadTimeout = -1;

    @Deprecated
    private static boolean sSkipSSLChain = false;
    private boolean isCached = false;
    private Context mAppContext;
    private String mDataSource;
    private Map<String, String> mMapHeadData;

    public static ExoMySourceManager newInstance(Context context, Map<String, String> map) {
        return new ExoMySourceManager(context, map);
    }

    private ExoMySourceManager(Context context, Map<String, String> map) {
        this.mAppContext = context.getApplicationContext();
        this.mMapHeadData = map;
    }

    public MediaSource getMediaSource(String str, boolean z, boolean z2, boolean z3, File file, String str2) {
        ExoMediaSourceInterceptListener exoMediaSourceInterceptListener = sExoMediaSourceInterceptListener;
        MediaSource mediaSource = exoMediaSourceInterceptListener != null ? exoMediaSourceInterceptListener.getMediaSource(str, z, z2, z3, file) : null;
        if (mediaSource != null) {
            return mediaSource;
        }
        this.mDataSource = str;
        return new HlsMyMediaSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file, null)).setAllowChunklessPreparation(true).createMediaSource(MediaItem.fromUri(Uri.parse(str)));
    }

    public static void setExoMediaSourceInterceptListener(ExoMediaSourceInterceptListener exoMediaSourceInterceptListener) {
        sExoMediaSourceInterceptListener = exoMediaSourceInterceptListener;
    }

    public static void resetExoMediaSourceInterceptListener() {
        sExoMediaSourceInterceptListener = null;
    }

    public static ExoMediaSourceInterceptListener getExoMediaSourceInterceptListener() {
        return sExoMediaSourceInterceptListener;
    }

    public static int inferContentType(String str, String str2) {
        String lowerCase = Ascii.toLowerCase(str);
        if (lowerCase.startsWith("rtmp:")) {
            return 14;
        }
        return inferContentType(Uri.parse(lowerCase), str2);
    }

    public static int inferContentType(Uri uri, String str) {
        return Util.inferContentType(uri, str);
    }

    public static synchronized Cache getCacheSingleInstance(Context context, File file) {
        String absolutePath = context.getCacheDir().getAbsolutePath();
        if (file != null) {
            absolutePath = file.getAbsolutePath();
        }
        if (mCache == null) {
            String str = absolutePath + File.separator + "exo";
            if (!SimpleCache.isCacheFolderLocked(new File(str))) {
                mCache = new SimpleCache(new File(str), new LeastRecentlyUsedCacheEvictor(536870912L), sDatabaseProvider);
            }
        }
        return mCache;
    }

    public void release() {
        this.isCached = false;
        Cache cache = mCache;
        if (cache != null) {
            try {
                cache.release();
                mCache = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void clearCache(Context context, File file, String str) {
        try {
            Cache cacheSingleInstance = getCacheSingleInstance(context, file);
            if (!TextUtils.isEmpty(str)) {
                if (cacheSingleInstance != null) {
                    removeCache(cacheSingleInstance, str);
                }
            } else if (cacheSingleInstance != null) {
                Iterator<String> it = cacheSingleInstance.getKeys().iterator();
                while (it.hasNext()) {
                    removeCache(cacheSingleInstance, it.next());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void removeCache(Cache cache, String str) {
        try {
            Iterator<CacheSpan> it = cache.getCachedSpans(buildCacheKey(str)).iterator();
            while (it.hasNext()) {
                try {
                    cache.removeSpan(it.next());
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static String buildCacheKey(String str) {
        return CacheKeyFactory.DEFAULT.buildCacheKey(new DataSpec(Uri.parse(str)));
    }

    public static boolean cachePreView(Context context, File file, String str) {
        return resolveCacheState(getCacheSingleInstance(context, file), str);
    }

    public boolean hadCached() {
        return this.isCached;
    }

    @Deprecated
    public static boolean isSkipSSLChain() {
        return sSkipSSLChain;
    }

    @Deprecated
    public static void setSkipSSLChain(boolean z) {
        sSkipSSLChain = z;
    }

    public static int getHttpReadTimeout() {
        return sHttpReadTimeout;
    }

    public static void setHttpReadTimeout(int i) {
        sHttpReadTimeout = i;
    }

    public static int getHttpConnectTimeout() {
        return sHttpConnectTimeout;
    }

    public static void setHttpConnectTimeout(int i) {
        sHttpConnectTimeout = i;
    }

    public static DatabaseProvider getDatabaseProvider() {
        return sDatabaseProvider;
    }

    public static void setDatabaseProvider(DatabaseProvider databaseProvider) {
        sDatabaseProvider = databaseProvider;
    }

    public static boolean isForceRtspTcp() {
        return isForceRtspTcp;
    }

    public static void setForceRtspTcp(boolean z) {
        isForceRtspTcp = z;
    }

    private DataSource.Factory getDataSourceFactoryCache(Context context, boolean z, boolean z2, File file, String str) {
        Cache cacheSingleInstance;
        if (z && (cacheSingleInstance = getCacheSingleInstance(context, file)) != null) {
            this.isCached = resolveCacheState(cacheSingleInstance, this.mDataSource);
            return new CacheDataSource.Factory().setCache(cacheSingleInstance).setCacheReadDataSourceFactory(getDataSourceFactory(context, z2, str)).setFlags(2).setUpstreamDataSourceFactory(getHttpDataSourceFactory(context, z2, str));
        }
        return getDataSourceFactory(context, z2, str);
    }

    private DataSource.Factory getDataSourceFactory(Context context, boolean z, String str) {
        DefaultDataSource.Factory factory = new DefaultDataSource.Factory(context, getHttpDataSourceFactory(context, z, str));
        if (z) {
            factory.setTransferListener(new DefaultBandwidthMeter.Builder(context).build());
        }
        return factory;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.exoplayer2.upstream.DataSource$Factory] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.exoplayer2.upstream.DefaultHttpDataSource$Factory] */
    private DataSource.Factory getHttpDataSourceFactory(Context context, boolean z, String str) {
        ?? transferListener;
        if (str == null) {
            str = Util.getUserAgent(context, TAG);
        }
        String str2 = str;
        int i = sHttpConnectTimeout;
        if (i <= 0) {
            i = 8000;
        }
        int i2 = sHttpReadTimeout;
        int i3 = i2 > 0 ? i2 : 8000;
        Map<String, String> map = this.mMapHeadData;
        boolean zEquals = (map == null || map.size() <= 0) ? false : "true".equals(this.mMapHeadData.get("allowCrossProtocolRedirects"));
        ExoMediaSourceInterceptListener exoMediaSourceInterceptListener = sExoMediaSourceInterceptListener;
        if (exoMediaSourceInterceptListener != null) {
            transferListener = exoMediaSourceInterceptListener.getHttpDataSourceFactory(str2, z ? null : new DefaultBandwidthMeter.Builder(this.mAppContext).build(), i, i3, this.mMapHeadData, zEquals);
        } else {
            transferListener = 0;
        }
        if (transferListener == 0) {
            transferListener = new DefaultHttpDataSource.Factory().setAllowCrossProtocolRedirects(zEquals).setConnectTimeoutMs(i).setReadTimeoutMs(i3).setTransferListener(z ? null : new DefaultBandwidthMeter.Builder(this.mAppContext).build());
            Map<String, String> map2 = this.mMapHeadData;
            if (map2 != null && map2.size() > 0) {
                transferListener.setDefaultRequestProperties(this.mMapHeadData);
            }
        }
        return transferListener;
    }

    private static boolean resolveCacheState(Cache cache, String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String strBuildCacheKey = buildCacheKey(str);
        if (!TextUtils.isEmpty(strBuildCacheKey)) {
            NavigableSet<CacheSpan> cachedSpans = cache.getCachedSpans(strBuildCacheKey);
            if (cachedSpans.size() != 0) {
                long j = cache.getContentMetadata(strBuildCacheKey).get(ContentMetadata.KEY_CONTENT_LENGTH, -1L);
                long cachedLength = 0;
                for (CacheSpan cacheSpan : cachedSpans) {
                    cachedLength += cache.getCachedLength(strBuildCacheKey, cacheSpan.position, cacheSpan.length);
                }
                if (cachedLength >= j) {
                    return true;
                }
            }
        }
        return false;
    }
}
