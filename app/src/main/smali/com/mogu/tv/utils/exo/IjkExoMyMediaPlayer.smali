.class public Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;
.super Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;
.source "IjkExoMyMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;


# static fields
.field public static ON_POSITION_DISCOUNTINUITY:I = 0xa8e

.field private static final TAG:Ljava/lang/String; = "IjkExo2MediaPlayer"


# instance fields
.field protected audioSessionId:I

.field protected isBuffering:Z

.field protected isCache:Z

.field protected isLastReportedPlayWhenReady:Z

.field protected isLooping:Z

.field protected isPreparing:Z

.field protected isPreview:Z

.field protected lastReportedPlaybackState:I

.field protected mAppContext:Landroid/content/Context;

.field protected mCacheDir:Ljava/io/File;

.field protected mDataSource:Ljava/lang/String;

.field protected mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

.field protected mExoHelper:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field protected mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

.field protected mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private mOverrideExtension:Ljava/lang/String;

.field protected mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

.field protected mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field protected mSurface:Landroid/view/Surface;

.field protected mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

.field protected mVideoHeight:I

.field protected mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ltv/danmaku/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mHeaders:Ljava/util/Map;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreparing:Z

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isBuffering:Z

    .line 70
    iput-boolean v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLooping:Z

    .line 71
    iput-boolean v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreview:Z

    .line 72
    iput-boolean v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isCache:Z

    .line 76
    iput v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->audioSessionId:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 80
    iput v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->lastReportedPlaybackState:I

    .line 81
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->newInstance(Landroid/content/Context;Ljava/util/Map;)Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mExoHelper:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    return-void
.end method

.method private getVideoRendererIndex()I
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioSessionId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->audioSessionId:I

    :goto_0
    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getExoHelper()Lcom/mogu/tv/utils/exo/ExoMySourceManager;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mExoHelper:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    return-object v0
.end method

.method public getLoadControl()Lcom/google/android/exoplayer2/LoadControl;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-object v0
.end method

.method public getMediaInfo()Ltv/danmaku/ijk/media/player/MediaInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSource()Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-object v0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mOverrideExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getRendererFactory()Lcom/google/android/exoplayer2/DefaultRenderersFactory;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0
.end method

.method public bridge synthetic getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/IjkTrackInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoRenderer()Lcom/google/android/exoplayer2/Renderer;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->getVideoRendererIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getRenderer(I)Lcom/google/android/exoplayer2/Renderer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVideoSarDen()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isCache()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isCache:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreview:Z

    return v0
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    const/4 p1, 0x0

    .line 530
    iput p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->audioSessionId:I

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public synthetic onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    return-void
.end method

.method private reportPlaybackState(ZI)V
    .locals 5

    .line 445
    iget-boolean v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLastReportedPlayWhenReady:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->lastReportedPlaybackState:I

    if-eq v0, p2, :cond_8

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 448
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 451
    :goto_0
    iget-boolean v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isBuffering:Z

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x2be

    .line 455
    invoke-virtual {p0, v2, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnInfo(II)Z

    .line 456
    iput-boolean v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isBuffering:Z

    .line 460
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreparing:Z

    if-eqz v2, :cond_5

    if-eq p2, v4, :cond_4

    goto :goto_2

    .line 463
    :cond_4
    invoke-virtual {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnPrepared()V

    .line 464
    iput-boolean v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreparing:Z

    :cond_5
    :goto_2
    const/4 v1, 0x2

    if-eq p2, v1, :cond_7

    if-eq p2, v3, :cond_6

    goto :goto_3

    .line 476
    :cond_6
    invoke-virtual {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnCompletion()V

    goto :goto_3

    :cond_7
    const/16 v1, 0x2bd

    .line 470
    invoke-virtual {p0, v1, v0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnInfo(II)Z

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isBuffering:Z

    .line 480
    :cond_8
    :goto_3
    iput-boolean p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLastReportedPlayWhenReady:Z

    .line 481
    iput p2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->lastReportedPlaybackState:I

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    if-eqz v0, :research_released
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I
    move-result p2
    invoke-direct {p0, p1, p2}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->reportPlaybackState(ZI)V
    :research_released
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 2
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    if-eqz v0, :research_released
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z
    move-result v1
    invoke-direct {p0, v1, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->reportPlaybackState(ZI)V
    :research_released
    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    const/4 p1, 0x1

    .line 491
    invoke-virtual {p0, p1, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnError(II)Z

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    .line 495
    sget p1, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->ON_POSITION_DISCOUNTINUITY:I

    invoke-virtual {p0, p1, p3}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnInfo(II)Z

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnSeekComplete()V

    :cond_0
    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2

    .line 540
    iget p1, p2, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    int-to-float p1, p1

    iget v0, p2, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mVideoWidth:I

    .line 541
    iget p1, p2, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    iput p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mVideoHeight:I

    .line 542
    iget p1, p2, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    int-to-float p1, p1

    iget v0, p2, Lcom/google/android/exoplayer2/video/VideoSize;->pixelWidthHeightRatio:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget v0, p2, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    .line 543
    iget p1, p2, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    if-lez p1, :cond_0

    const/16 p1, 0x2711

    .line 544
    iget p2, p2, Lcom/google/android/exoplayer2/video/VideoSize;->unappliedRotationDegrees:I

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->notifyOnInfo(II)Z

    :cond_0
    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 173
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->prepareAsyncInternal()V

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t prepare a prepared player"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareAsyncInternal()V
    .locals 2

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;-><init>(Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->reset()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 237
    iput-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mExoHelper:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->release()V

    .line 244
    :cond_1
    iput-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 245
    iput-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mDataSource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mVideoWidth:I

    .line 247
    iput v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mVideoHeight:I

    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    return-void
.end method

.method public setCache(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isCache:Z

    return-void
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7

    .line 139
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mExoHelper:Lcom/mogu/tv/utils/exo/ExoMySourceManager;

    iget-boolean v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreview:Z

    iget-boolean v3, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isCache:Z

    iget-boolean v4, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLooping:Z

    iget-object v5, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mCacheDir:Ljava/io/File;

    iget-object v6, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mOverrideExtension:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/mogu/tv/utils/exo/ExoMySourceManager;->getMediaSource(Ljava/lang/String;ZZZLjava/io/File;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 131
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 144
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 106
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    return-void
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLooping:Z

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mOverrideExtension:Ljava/lang/String;

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    .line 357
    iput-boolean p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isPreview:Z

    return-void
.end method

.method public setRendererFactory(Lcom/google/android/exoplayer2/DefaultRenderersFactory;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    return-void
.end method

.method public setSeekParameter(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    return-void
.end method

.method public setSpeed(FF)V
    .locals 1

    .line 397
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 398
    iput-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 399
    iget-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_0

    .line 400
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 115
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 266
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 161
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    return-void
.end method
