.class public Lcom/mogu/tv/utils/exo/ExoMySourceManager;
.super Ljava/lang/Object;
.source "ExoMySourceManager.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "ExoSourceManager"

.field public static final TYPE_RTMP:I = 0xe

.field private static isForceRtspTcp:Z = true

.field private static mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache; = null

.field private static sDatabaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider; = null

.field private static sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener; = null

.field private static sHttpConnectTimeout:I = -0x1

.field private static sHttpReadTimeout:I = -0x1

.field private static sSkipSSLChain:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private isCached:Z

.field private mAppContext:Landroid/content/Context;

.field private mDataSource:Ljava/lang/String;

.field private mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->isCached:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mAppContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mMapHeadData:Ljava/util/Map;

    return-void
.end method

.method public static buildCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 177
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 178
    sget-object p0, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cachePreView(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 183
    invoke-static {p0, p1}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 140
    :try_start_0
    invoke-static {p0, p1}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_1

    .line 143
    invoke-static {p0, p2}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->removeCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    .line 146
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getKeys()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 148
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 149
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 150
    invoke-static {p0, p2}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->removeCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static declared-synchronized getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 4

    const-class v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 114
    :cond_0
    sget-object p1, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez p1, :cond_1

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "exo"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->isCacheFolderLocked(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v2, 0x20000000

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    sget-object v2, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sDatabaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    invoke-direct {p1, v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    sput-object p1, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 122
    :cond_1
    sget-object p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDataSourceFactory(Landroid/content/Context;ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 1

    .line 252
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {p0, p1, p2, p3}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getHttpDataSourceFactory(Landroid/content/Context;ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    if-eqz p2, :cond_0

    .line 254
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    :cond_0
    return-object v0
.end method

.method private getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 0

    if-eqz p2, :cond_0

    .line 240
    invoke-static {p1, p4}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getCacheSingleInstance(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 242
    iget-object p4, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mDataSource:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->isCached:Z

    .line 243
    new-instance p4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    .line 244
    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    invoke-direct {p0, p1, p3, p5}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getDataSourceFactory(Landroid/content/Context;ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheReadDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    const/4 p4, 0x2

    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setFlags(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p2

    invoke-direct {p0, p1, p3, p5}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getHttpDataSourceFactory(Landroid/content/Context;ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    invoke-direct {p0, p1, p3, p5}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getDataSourceFactory(Landroid/content/Context;ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public static getDatabaseProvider()Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .locals 1

    .line 223
    sget-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sDatabaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    return-object v0
.end method

.method public static getExoMediaSourceInterceptListener()Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;
    .locals 1

    .line 95
    sget-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    return-object v0
.end method

.method public static getHttpConnectTimeout()I
    .locals 1

    .line 215
    sget v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sHttpConnectTimeout:I

    return v0
.end method

.method private getHttpDataSourceFactory(Landroid/content/Context;ZLjava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 9

    if-nez p3, :cond_0

    const-string p3, "ExoSourceManager"

    .line 262
    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    move-object v1, p3

    .line 267
    sget p1, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sHttpConnectTimeout:I

    const/16 p3, 0x1f40

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f40

    .line 271
    :goto_0
    sget v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sHttpReadTimeout:I

    if-lez v0, :cond_2

    move p3, v0

    :cond_2
    const/4 v0, 0x0

    .line 276
    iget-object v2, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 277
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mMapHeadData:Ljava/util/Map;

    const-string v2, "allowCrossProtocolRedirects"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 281
    :goto_1
    sget-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    move-object v2, v8

    goto :goto_2

    .line 282
    :cond_4
    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    iget-object v3, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v2

    :goto_2
    iget-object v5, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mMapHeadData:Ljava/util/Map;

    move v3, p1

    move v4, p3

    move v6, v7

    invoke-interface/range {v0 .. v6}, Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;->getHttpDataSourceFactory(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IILjava/util/Map;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v8

    :goto_3
    if-nez v0, :cond_7

    .line 286
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p2, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v8

    :goto_4
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 287
    iget-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 288
    move-object p1, v0

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    iget-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mMapHeadData:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_7
    return-object v0
.end method

.method public static getHttpReadTimeout()I
    .locals 1

    .line 207
    sget v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sHttpReadTimeout:I

    return v0
.end method

.method public static inferContentType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 0

    .line 105
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferContentType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 100
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "rtmp:"

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xe

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static isForceRtspTcp()Z
    .locals 1

    .line 231
    sget-boolean v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->isForceRtspTcp:Z

    return v0
.end method

.method public static isSkipSSLChain()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    sget-boolean v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sSkipSSLChain:Z

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/Map;)Lcom/mogu/tv/utils/exo/ExoMySourceManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mogu/tv/utils/exo/ExoMySourceManager;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    invoke-direct {v0, p0, p1}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0
.end method

.method public static removeCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .locals 1

    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->buildCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 163
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :try_start_1
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method public static resetExoMediaSourceInterceptListener()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    return-void
.end method

.method private static resolveCacheState(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)Z
    .locals 13

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 298
    invoke-static {p1}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->buildCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v3

    const-wide/16 v4, -0x1

    const-string v6, "exo_len"

    invoke-interface {v3, v6, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v3, 0x0

    .line 308
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v11, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 308
    iget-wide v5, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v3

    add-long/2addr v11, v3

    goto :goto_0

    :cond_1
    cmp-long p0, v11, v9

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    :cond_3
    :goto_2
    return v1
.end method

.method public static setDatabaseProvider(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .locals 0

    .line 227
    sput-object p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sDatabaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    return-void
.end method

.method public static setExoMediaSourceInterceptListener(Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;)V
    .locals 0

    .line 87
    sput-object p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    return-void
.end method

.method public static setForceRtspTcp(Z)V
    .locals 0

    .line 235
    sput-boolean p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->isForceRtspTcp:Z

    return-void
.end method

.method public static setHttpConnectTimeout(I)V
    .locals 0

    .line 219
    sput p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sHttpConnectTimeout:I

    return-void
.end method

.method public static setHttpReadTimeout(I)V
    .locals 0

    .line 211
    sput p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sHttpReadTimeout:I

    return-void
.end method

.method public static setSkipSSLChain(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    sput-boolean p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sSkipSSLChain:Z

    return-void
.end method


# virtual methods
.method public getMediaSource(Ljava/lang/String;ZZZLjava/io/File;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6

    .line 70
    sget-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->sExoMediaSourceInterceptListener:Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 71
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo2/ExoMediaSourceInterceptListener;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    return-object p4

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mDataSource:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 79
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    const/4 v5, 0x0

    .line 81
    new-instance p4, Lcom/mogu/tv/utils/exo/HlsMyMediaSource$Factory;

    iget-object v1, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mAppContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p3

    move v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getDataSourceFactoryCache(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/mogu/tv/utils/exo/HlsMyMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 p2, 0x1

    invoke-virtual {p4, p2}, Lcom/mogu/tv/utils/exo/HlsMyMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/mogu/tv/utils/exo/HlsMyMediaSource$Factory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mogu/tv/utils/exo/HlsMyMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/mogu/tv/utils/exo/HlsMyMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public hadCached()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->isCached:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->isCached:Z

    .line 127
    sget-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->release()V

    const/4 v0, 0x0

    .line 130
    sput-object v0, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
