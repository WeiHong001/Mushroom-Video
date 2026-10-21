.class Lcom/luck/picture/lib/camare/state/PreviewState;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/state/State;


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewState"


# instance fields
.field private machine:Lcom/luck/picture/lib/camare/state/CameraMachine;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/state/CameraMachine;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/PreviewState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/luck/picture/lib/camare/state/PreviewState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    return-object p0
.end method


# virtual methods
.method public cancle(Landroid/view/SurfaceHolder;F)V
    .locals 0

    const-string/jumbo p1, "\u6d4f\u89c8\u72b6\u6001\u4e0b,\u6ca1\u6709 cancle \u4e8b\u4ef6"

    .line 83
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public capture()V
    .locals 2

    .line 51
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/camare/state/PreviewState$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/state/PreviewState$1;-><init>(Lcom/luck/picture/lib/camare/state/PreviewState;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->takePicture(Lcom/luck/picture/lib/camare/CameraInterface$TakePictureCallback;)V

    return-void
.end method

.method public confirm()V
    .locals 1

    const-string/jumbo v0, "\u6d4f\u89c8\u72b6\u6001\u4e0b,\u6ca1\u6709 confirm \u4e8b\u4ef6"

    .line 88
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public flash(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camare/CameraInterface;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public foucs(FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V
    .locals 2

    const-string v0, "preview state foucs"

    .line 33
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/PreviewState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getView()Lcom/luck/picture/lib/camare/view/CameraView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/view/CameraView;->handlerFoucs(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/state/PreviewState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/luck/picture/lib/camare/CameraInterface;->handleFocus(Landroid/content/Context;FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V

    :cond_0
    return-void
.end method

.method public record(Landroid/view/Surface;F)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->startRecord(Landroid/view/Surface;FLcom/luck/picture/lib/camare/CameraInterface$ErrorCallback;)V

    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/camare/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/CameraInterface;->doStopPreview()V

    return-void
.end method

.method public stopRecord(ZJ)V
    .locals 0

    .line 68
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object p2

    new-instance p3, Lcom/luck/picture/lib/camare/state/PreviewState$2;

    invoke-direct {p3, p0, p1}, Lcom/luck/picture/lib/camare/state/PreviewState$2;-><init>(Lcom/luck/picture/lib/camare/state/PreviewState;Z)V

    invoke-virtual {p2, p1, p3}, Lcom/luck/picture/lib/camare/CameraInterface;->stopRecord(ZLcom/luck/picture/lib/camare/CameraInterface$StopRecordCallback;)V

    return-void
.end method

.method public swtich(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/camare/CameraInterface;->switchCamera(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public zoom(FI)V
    .locals 2

    const-string v0, "PreviewState"

    const-string/jumbo v1, "zoom"

    .line 93
    invoke-static {v0, v1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/camare/CameraInterface;->setZoom(FI)V

    return-void
.end method
