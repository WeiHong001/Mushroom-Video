.class Lcom/luck/picture/lib/camare/state/PreviewState$2;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/CameraInterface$StopRecordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/state/PreviewState;->stopRecord(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

.field final synthetic val$isShort:Z


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/state/PreviewState;Z)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    iput-boolean p2, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->val$isShort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordResult(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->val$isShort:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getView()Lcom/luck/picture/lib/camare/view/CameraView;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/luck/picture/lib/camare/view/CameraView;->resetState(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getView()Lcom/luck/picture/lib/camare/view/CameraView;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/luck/picture/lib/camare/view/CameraView;->playVideo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/camare/state/PreviewState$2;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {p2}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getBorrowVideoState()Lcom/luck/picture/lib/camare/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->setState(Lcom/luck/picture/lib/camare/state/State;)V

    :goto_0
    return-void
.end method
