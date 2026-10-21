.class Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;
.super Ljava/lang/Object;
.source "IjkExoMyMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->prepareAsyncInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;


# direct methods
.method constructor <init>(Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v2, v2, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    new-instance v1, Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v2, v2, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-direct {v1, v2}, Ltv/danmaku/ijk/media/exo2/demo/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v1, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    .line 312
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v3, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v3, v3, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 314
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    iput-object v2, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    iget-object v3, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v3, v3, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v4, v4, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mRendererFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v3, v3, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mTrackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v3, v3, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mLoadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v2

    iput-object v2, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 322
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 323
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 324
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v2, v2, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mEventLogger:Ltv/danmaku/ijk/media/exo2/demo/EventLogger;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 325
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v2, v2, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSpeedPlaybackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-boolean v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->isLooping:Z

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v1, v1, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v1, v1, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 338
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 339
    iget-object v0, p0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer$1;->this$0:Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;

    iget-object v0, v0, Lcom/mogu/tv/utils/exo/IjkExoMyMediaPlayer;->mInternalPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method
