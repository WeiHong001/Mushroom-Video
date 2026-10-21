.class public Lcom/luck/picture/lib/camare/state/BorrowVideoState;
.super Ljava/lang/Object;
.source "BorrowVideoState.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/state/State;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private machine:Lcom/luck/picture/lib/camare/state/CameraMachine;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/camare/state/CameraMachine;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BorrowVideoState"

    .line 11
    iput-object v0, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->TAG:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    return-void
.end method


# virtual methods
.method public cancle(Landroid/view/SurfaceHolder;F)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getView()Lcom/luck/picture/lib/camare/view/CameraView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/luck/picture/lib/camare/view/CameraView;->resetState(I)V

    .line 63
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getPreviewState()Lcom/luck/picture/lib/camare/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->setState(Lcom/luck/picture/lib/camare/state/State;)V

    return-void
.end method

.method public capture()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getView()Lcom/luck/picture/lib/camare/view/CameraView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/camare/view/CameraView;->confirmState(I)V

    .line 69
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getPreviewState()Lcom/luck/picture/lib/camare/state/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->setState(Lcom/luck/picture/lib/camare/state/State;)V

    return-void
.end method

.method public flash(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public foucs(FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V
    .locals 0

    return-void
.end method

.method public record(Landroid/view/Surface;F)V
    .locals 0

    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/camare/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    .line 21
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/BorrowVideoState;->machine:Lcom/luck/picture/lib/camare/state/CameraMachine;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getPreviewState()Lcom/luck/picture/lib/camare/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->setState(Lcom/luck/picture/lib/camare/state/State;)V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopRecord(ZJ)V
    .locals 0

    return-void
.end method

.method public swtich(Landroid/view/SurfaceHolder;F)V
    .locals 0

    return-void
.end method

.method public zoom(FI)V
    .locals 0

    const-string p1, "BorrowVideoState"

    const-string/jumbo p2, "zoom"

    .line 74
    invoke-static {p1, p2}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
