.class public Lcom/uuzuche/lib_zxing/activity/CaptureFragment;
.super Landroidx/fragment/app/Fragment;
.source "CaptureFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;
    }
.end annotation


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field callBack:Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;

.field private camera:Landroid/hardware/Camera;

.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private vibrate:Z

.field private viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 242
    new-instance v0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$1;

    invoke-direct {v0, p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$1;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .line 204
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 209
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 210
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 211
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/uuzuche/lib_zxing/R$raw;->beep:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 217
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 216
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 218
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 219
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 220
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 147
    :try_start_0
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 148
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->callBack:Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-interface {p1, v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;->callBack(Ljava/lang/Exception;)V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    if-nez p1, :cond_1

    .line 159
    new-instance p1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->decodeFormats:Ljava/util/Vector;

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->characterSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/uuzuche/lib_zxing/view/ViewfinderView;)V

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 150
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->callBack:Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;

    if-eqz v0, :cond_2

    .line 151
    invoke-interface {v0, p1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;->callBack(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 230
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->vibrate:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getAnalyzeCallback()Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;->onActivity()V

    .line 132
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeepSoundAndVibrate()V

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    if-eqz p1, :cond_2

    .line 136
    invoke-interface {p1}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeFailed()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    .line 59
    new-instance p1, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string v0, "layout_id"

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    if-nez p2, :cond_1

    .line 76
    sget p2, Lcom/uuzuche/lib_zxing/R$layout;->fragment_capture:I

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_1
    sget p1, Lcom/uuzuche/lib_zxing/R$id;->viewfinder_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->viewfinderView:Lcom/uuzuche/lib_zxing/view/ViewfinderView;

    .line 80
    sget p1, Lcom/uuzuche/lib_zxing/R$id;->preview_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceView:Landroid/view/SurfaceView;

    .line 81
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->inactivityTimer:Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/InactivityTimer;->shutdown()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 110
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handler:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;

    .line 114
    :cond_0
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->closeDriver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 89
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->decodeFormats:Ljava/util/Vector;

    .line 96
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->characterSet:Ljava/lang/String;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    .line 99
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 100
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->playBeep:Z

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->initBeepSound()V

    .line 104
    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->vibrate:Z

    return-void
.end method

.method public setAnalyzeCallback(Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->analyzeCallback:Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;

    return-void
.end method

.method public setCameraInitCallBack(Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->callBack:Lcom/uuzuche/lib_zxing/activity/CaptureFragment$CameraInitCallBack;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    .line 173
    invoke-direct {p0, p1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->hasSurface:Z

    .line 181
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->isUseOneShotPreviewCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 187
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getPreviewCallback()Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 188
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getAutoFocusCallback()Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 189
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->setPreviewing(Z)V

    :cond_1
    return-void
.end method
