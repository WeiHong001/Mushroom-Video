.class public Lcom/mogu/tv/view/ShortVideoView;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "ShortVideoView.java"


# instance fields
.field loading:Lcom/mogu/tv/view/DYLoadingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/mogu/tv/view/ShortVideoView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/mogu/tv/view/ShortVideoView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/mogu/tv/view/ShortVideoView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    const p1, 0x7f0a0207

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/ShortVideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/view/DYLoadingView;

    iput-object p1, p0, Lcom/mogu/tv/view/ShortVideoView;->loading:Lcom/mogu/tv/view/DYLoadingView;

    .line 33
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->enable()V

    return-void
.end method


# virtual methods
.method protected changeUiToPauseShow()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mogu/tv/view/ShortVideoView;->loading:Lcom/mogu/tv/view/DYLoadingView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DYLoadingView;->start()V

    .line 58
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingShow()V

    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mogu/tv/view/ShortVideoView;->loading:Lcom/mogu/tv/view/DYLoadingView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DYLoadingView;->stop()V

    .line 52
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/view/ShortVideoView;->loading:Lcom/mogu/tv/view/DYLoadingView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DYLoadingView;->start()V

    .line 43
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPreparingShow()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0125

    return v0
.end method
