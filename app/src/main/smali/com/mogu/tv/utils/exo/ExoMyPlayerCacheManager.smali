.class public Lcom/mogu/tv/utils/exo/ExoMyPlayerCacheManager;
.super Ljava/lang/Object;
.source "ExoMyPlayerCacheManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;


# instance fields
.field protected mExoSourceManager:Lcom/mogu/tv/utils/exo/ExoMySourceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-static {p1, p2, p3}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->cachePreView(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-static {p1, p2, p3}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ltv/danmaku/ijk/media/player/IMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 24
    instance-of v0, p2, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 27
    check-cast p2, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    .line 28
    invoke-virtual {p2}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getExoHelper()Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerCacheManager;->mExoSourceManager:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p2, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setCache(Z)V

    .line 30
    invoke-virtual {p2, p5}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setCacheDir(Ljava/io/File;)V

    .line 31
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p1, p3, p4}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "ExoPlayerCacheManager only support IjkExoMyMediaPlayer"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hadCached()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerCacheManager;->mExoSourceManager:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->hadCached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerCacheManager;->mExoSourceManager:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    return-void
.end method

.method public setCacheAvailableListener(Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;)V
    .locals 0

    return-void
.end method
