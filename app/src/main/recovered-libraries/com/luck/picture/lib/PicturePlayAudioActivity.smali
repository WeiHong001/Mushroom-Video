.class public Lcom/luck/picture/lib/PicturePlayAudioActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PicturePlayAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private audio_path:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private isPlayAudio:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private musicSeekBar:Landroid/widget/SeekBar;

.field public runnable:Ljava/lang/Runnable;

.field private tv_PlayPause:Landroid/widget/TextView;

.field private tv_Quit:Landroid/widget/TextView;

.field private tv_Stop:Landroid/widget/TextView;

.field private tv_musicStatus:Landroid/widget/TextView;

.field private tv_musicTime:Landroid/widget/TextView;

.field private tv_musicTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->isPlayAudio:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->handler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/luck/picture/lib/PicturePlayAudioActivity$3;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity$3;-><init>(Lcom/luck/picture/lib/PicturePlayAudioActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->audio_path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PicturePlayAudioActivity;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/TextView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->musicSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/TextView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicTotal:Landroid/widget/TextView;

    return-object p0
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 1

    .line 88
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 90
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 92
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 93
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->playAudio()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private playAudio()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->musicSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->musicSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_PlayPause:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_PlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->playOrPause()V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_PlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->playOrPause()V

    .line 147
    :goto_0
    iget-boolean v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->isPlayAudio:Z

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->isPlayAudio:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 191
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onBackPressed()V

    .line 192
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->closeActivity()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 102
    sget v0, Lcom/luck/picture/lib/R$id;->tv_PlayPause:I

    if-ne p1, v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->playAudio()V

    .line 106
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->tv_Stop:I

    if-ne p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_stop_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_PlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->audio_path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->stop(Ljava/lang/String;)V

    .line 112
    :cond_1
    sget v0, Lcom/luck/picture/lib/R$id;->tv_Quit:I

    if-ne p1, v0, :cond_2

    .line 113
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/luck/picture/lib/PicturePlayAudioActivity$4;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity$4;-><init>(Lcom/luck/picture/lib/PicturePlayAudioActivity;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->closeActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 26
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Lcom/luck/picture/lib/R$layout;->activity_picture_play_audio:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "audio_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->audio_path:Ljava/lang/String;

    .line 29
    sget p1, Lcom/luck/picture/lib/R$id;->tv_musicStatus:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicStatus:Landroid/widget/TextView;

    .line 30
    sget p1, Lcom/luck/picture/lib/R$id;->tv_musicTime:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicTime:Landroid/widget/TextView;

    .line 31
    sget p1, Lcom/luck/picture/lib/R$id;->musicSeekBar:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->musicSeekBar:Landroid/widget/SeekBar;

    .line 32
    sget p1, Lcom/luck/picture/lib/R$id;->tv_musicTotal:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_musicTotal:Landroid/widget/TextView;

    .line 33
    sget p1, Lcom/luck/picture/lib/R$id;->tv_PlayPause:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_PlayPause:Landroid/widget/TextView;

    .line 34
    sget p1, Lcom/luck/picture/lib/R$id;->tv_Stop:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_Stop:Landroid/widget/TextView;

    .line 35
    sget p1, Lcom/luck/picture/lib/R$id;->tv_Quit:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_Quit:Landroid/widget/TextView;

    .line 36
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/luck/picture/lib/PicturePlayAudioActivity$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity$1;-><init>(Lcom/luck/picture/lib/PicturePlayAudioActivity;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_PlayPause:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_Stop:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->tv_Quit:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->musicSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/luck/picture/lib/PicturePlayAudioActivity$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePlayAudioActivity$2;-><init>(Lcom/luck/picture/lib/PicturePlayAudioActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 197
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public playOrPause()V
    .locals 1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 162
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 163
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 165
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
