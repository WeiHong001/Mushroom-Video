.class public Lcom/mogu/tv/view/DetailsVideoView;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "DetailsVideoView.java"


# instance fields
.field public iv_touping:Landroid/widget/ImageView;

.field speed:F

.field public tv_kuaijin:Landroid/widget/TextView;

.field public tv_kuaitui:Landroid/widget/TextView;

.field tv_speed:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    iput p1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    .line 30
    invoke-direct {p0}, Lcom/mogu/tv/view/DetailsVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    iput p1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    .line 72
    invoke-direct {p0}, Lcom/mogu/tv/view/DetailsVideoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    iput p1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    .line 25
    invoke-direct {p0}, Lcom/mogu/tv/view/DetailsVideoView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const v0, 0x7f0a039a

    .line 87
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/DetailsVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_speed:Landroid/widget/TextView;

    const v0, 0x7f0a01ad

    .line 88
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/DetailsVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->iv_touping:Landroid/widget/ImageView;

    const v0, 0x7f0a038b

    .line 89
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/DetailsVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_kuaijin:Landroid/widget/TextView;

    const v0, 0x7f0a038c

    .line 90
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/DetailsVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_kuaitui:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/mogu/tv/view/DetailsVideoView;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    .line 92
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_speed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_kuaijin:Landroid/widget/TextView;

    new-instance v1, Lcom/mogu/tv/view/DetailsVideoView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/view/DetailsVideoView$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/view/DetailsVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_kuaitui:Landroid/widget/TextView;

    new-instance v1, Lcom/mogu/tv/view/DetailsVideoView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/view/DetailsVideoView$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/view/DetailsVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_speed:Landroid/widget/TextView;

    new-instance v1, Lcom/mogu/tv/view/DetailsVideoView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/view/DetailsVideoView$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/view/DetailsVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private switchSpeed()V
    .locals 4

    .line 106
    iget v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    const/high16 v1, 0x3fa00000    # 1.25f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    .line 107
    iput v1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 109
    iput v3, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 111
    iput v1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    .line 113
    iput v3, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v3, v0, v3

    if-nez v3, :cond_4

    .line 115
    iput v1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    goto :goto_0

    :cond_4
    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 117
    iput v2, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected changeUiToNormal()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToNormal()V

    .line 54
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->iv_touping:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPauseClear()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseClear()V

    .line 66
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->iv_touping:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    .line 60
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->iv_touping:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    .line 48
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->iv_touping:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0123

    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/view/DetailsVideoView;->iv_touping:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->setViewShowState(Landroid/view/View;I)V

    return-void
.end method

.method synthetic lambda$init$0$com-mogu-tv-view-DetailsVideoView(Landroid/view/View;)V
    .locals 4

    .line 94
    invoke-virtual {p0}, Lcom/mogu/tv/view/DetailsVideoView;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->seekTo(J)V

    return-void
.end method

.method synthetic lambda$init$1$com-mogu-tv-view-DetailsVideoView(Landroid/view/View;)V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/mogu/tv/view/DetailsVideoView;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/mogu/tv/view/DetailsVideoView;->seekTo(J)V

    return-void
.end method

.method synthetic lambda$init$2$com-mogu-tv-view-DetailsVideoView(Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/mogu/tv/view/DetailsVideoView;->switchSpeed()V

    .line 101
    iget p1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/DetailsVideoView;->setSpeed(F)V

    .line 102
    iget-object p1, p0, Lcom/mogu/tv/view/DetailsVideoView;->tv_speed:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mogu/tv/view/DetailsVideoView;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
