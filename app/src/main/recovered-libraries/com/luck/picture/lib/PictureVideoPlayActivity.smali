.class public Lcom/luck/picture/lib/PictureVideoPlayActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PictureVideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private iv_play:Landroid/widget/ImageView;

.field private mMediaController:Landroid/widget/MediaController;

.field private mPositionWhenPaused:I

.field private mVideoView:Landroid/widget/VideoView;

.field private picture_left_back:Landroid/widget/ImageView;

.field private video_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->video_path:Ljava/lang/String;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mPositionWhenPaused:I

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureVideoPlayActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/luck/picture/lib/PictureVideoPlayActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureVideoPlayActivity$1;-><init>(Lcom/luck/picture/lib/PictureVideoPlayActivity;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 93
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->iv_play:I

    if-ne p1, v0, :cond_1

    .line 96
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 97
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->iv_play:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->iv_play:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 25
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_activity_video_play:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "video_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->video_path:Ljava/lang/String;

    .line 28
    sget p1, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->picture_left_back:Landroid/widget/ImageView;

    .line 29
    sget p1, Lcom/luck/picture/lib/R$id;->video_view:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    const/high16 v0, -0x1000000

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 31
    sget p1, Lcom/luck/picture/lib/R$id;->iv_play:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->iv_play:Landroid/widget/ImageView;

    .line 32
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    .line 33
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 34
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 35
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 36
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->picture_left_back:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->iv_play:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mMediaController:Landroid/widget/MediaController;

    .line 61
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    .line 62
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->iv_play:Landroid/widget/ImageView;

    .line 63
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mPositionWhenPaused:I

    .line 53
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 55
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onPause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/luck/picture/lib/PictureVideoPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureVideoPlayActivity$2;-><init>(Lcom/luck/picture/lib/PictureVideoPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 69
    iget v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mPositionWhenPaused:I

    if-ltz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mPositionWhenPaused:I

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->video_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 46
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onStart()V

    return-void
.end method
