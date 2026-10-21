.class public Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;
.super Lcom/shuyu/gsyvideoplayer/player/BasePlayerManager;
.source "ExoMyPlayerManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dummySurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

.field private lastTimeStamp:J

.field private lastTotalRxBytes:J

.field private mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/player/BasePlayerManager;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTotalRxBytes:J

    .line 30
    iput-wide v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTimeStamp:J

    return-void
.end method

.method private getNetSpeed(Landroid/content/Context;)J
    .locals 10

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 219
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 220
    iget-wide v6, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTimeStamp:J

    sub-long v6, v4, v6

    cmp-long p1, v6, v0

    if-nez p1, :cond_2

    return-wide v6

    .line 224
    :cond_2
    iget-wide v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTotalRxBytes:J

    sub-long v0, v2, v0

    const-wide/16 v8, 0x3e8

    mul-long v0, v0, v8

    div-long/2addr v0, v6

    .line 225
    iput-wide v4, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTimeStamp:J

    .line 226
    iput-wide v2, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTotalRxBytes:J

    return-wide v0
.end method


# virtual methods
.method public getBufferedPercentage()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getBufferedPercentage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->getNetSpeed(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getVideoHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getVideoSarDen()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getVideoSarNum()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getVideoWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;",
            "Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->context:Landroid/content/Context;

    .line 41
    new-instance p3, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-direct {p3, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    const/4 v0, 0x3

    .line 42
    invoke-virtual {p3, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setAudioStreamType(I)V

    .line 43
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 44
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    move-result-object p3

    iput-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 47
    :cond_0
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    .line 50
    :try_start_0
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isLooping()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setLooping(Z)V

    .line 51
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p3, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setPreview(Z)V

    .line 52
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 53
    iget-object v2, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setCache(Z)V

    .line 56
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setCacheDir(Ljava/io/File;)V

    .line 57
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getOverrideExtension()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setOverrideExtension(Ljava/lang/String;)V

    .line 58
    iget-object p3, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 61
    :goto_0
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p4

    invoke-virtual {p1, p4, p3}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSpeed(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->initSuccess(Lcom/shuyu/gsyvideoplayer/model/GSYModel;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    move-object v2, v1

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 123
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->release()V

    .line 124
    iput-object v1, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->release()V

    .line 129
    iput-object v1, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    :cond_1
    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTotalRxBytes:J

    .line 133
    iput-wide v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->lastTimeStamp:J

    return-void
.end method

.method public releaseSurface()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->surface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1, p2}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setNeedMute(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 98
    invoke-virtual {v0, p1, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {v0, p1, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setVolume(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSeekParameter(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSeekParameter(Lcom/google/android/exoplayer2/SeekParameters;)V

    :cond_0
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 85
    iget-object p2, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    :try_start_0
    invoke-virtual {p2, p1, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSpeed(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->dummySurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    invoke-virtual {p1, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 77
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->surface:Landroid/view/Surface;

    .line 78
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/ExoMyPlayerManager;->mediaPlayer:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
