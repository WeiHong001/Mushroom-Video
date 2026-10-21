.class public Lcom/luck/picture/lib/camare/state/CameraMachine;
.super Ljava/lang/Object;
.source "CameraMachine.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/state/State;


# instance fields
.field private borrowPictureState:Lcom/luck/picture/lib/camare/state/State;

.field private borrowVideoState:Lcom/luck/picture/lib/camare/state/State;

.field private context:Landroid/content/Context;

.field private previewState:Lcom/luck/picture/lib/camare/state/State;

.field private state:Lcom/luck/picture/lib/camare/state/State;

.field private view:Lcom/luck/picture/lib/camare/view/CameraView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/camare/view/CameraView;Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->context:Landroid/content/Context;

    .line 25
    new-instance p1, Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camare/state/PreviewState;-><init>(Lcom/luck/picture/lib/camare/state/CameraMachine;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->previewState:Lcom/luck/picture/lib/camare/state/State;

    .line 26
    new-instance p1, Lcom/luck/picture/lib/camare/state/BorrowPictureState;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camare/state/BorrowPictureState;-><init>(Lcom/luck/picture/lib/camare/state/CameraMachine;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->borrowPictureState:Lcom/luck/picture/lib/camare/state/State;

    .line 27
    new-instance p1, Lcom/luck/picture/lib/camare/state/BorrowVideoState;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camare/state/BorrowVideoState;-><init>(Lcom/luck/picture/lib/camare/state/CameraMachine;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->borrowVideoState:Lcom/luck/picture/lib/camare/state/State;

    .line 29
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->previewState:Lcom/luck/picture/lib/camare/state/State;

    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    .line 31
    iput-object p2, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->view:Lcom/luck/picture/lib/camare/view/CameraView;

    return-void
.end method


# virtual methods
.method public cancle(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/state/State;->cancle(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public capture()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/state/State;->capture()V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/state/State;->confirm()V

    return-void
.end method

.method public flash(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/camare/state/State;->flash(Ljava/lang/String;)V

    return-void
.end method

.method public foucs(FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2, p3}, Lcom/luck/picture/lib/camare/state/State;->foucs(FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V

    return-void
.end method

.method getBorrowPictureState()Lcom/luck/picture/lib/camare/state/State;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->borrowPictureState:Lcom/luck/picture/lib/camare/state/State;

    return-object v0
.end method

.method getBorrowVideoState()Lcom/luck/picture/lib/camare/state/State;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->borrowVideoState:Lcom/luck/picture/lib/camare/state/State;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->context:Landroid/content/Context;

    return-object v0
.end method

.method getPreviewState()Lcom/luck/picture/lib/camare/state/State;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->previewState:Lcom/luck/picture/lib/camare/state/State;

    return-object v0
.end method

.method public getState()Lcom/luck/picture/lib/camare/state/State;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    return-object v0
.end method

.method public getView()Lcom/luck/picture/lib/camare/view/CameraView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->view:Lcom/luck/picture/lib/camare/view/CameraView;

    return-object v0
.end method

.method public record(Landroid/view/Surface;F)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/state/State;->record(Landroid/view/Surface;F)V

    return-void
.end method

.method public restart()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/state/State;->restart()V

    return-void
.end method

.method public setState(Lcom/luck/picture/lib/camare/state/State;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/state/State;->start(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/state/State;->stop()V

    return-void
.end method

.method public stopRecord(ZJ)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2, p3}, Lcom/luck/picture/lib/camare/state/State;->stopRecord(ZJ)V

    return-void
.end method

.method public swtich(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/state/State;->swtich(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public zoom(FI)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/CameraMachine;->state:Lcom/luck/picture/lib/camare/state/State;

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/state/State;->zoom(FI)V

    return-void
.end method
