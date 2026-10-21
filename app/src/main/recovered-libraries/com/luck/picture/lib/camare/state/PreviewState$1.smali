.class Lcom/luck/picture/lib/camare/state/PreviewState$1;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/CameraInterface$TakePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/state/PreviewState;->capture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/state/PreviewState;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/state/PreviewState;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/luck/picture/lib/camare/state/PreviewState$1;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureResult(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/luck/picture/lib/camare/state/PreviewState$1;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getView()Lcom/luck/picture/lib/camare/view/CameraView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/luck/picture/lib/camare/view/CameraView;->showPicture(Landroid/graphics/Bitmap;Z)V

    .line 55
    iget-object p1, p0, Lcom/luck/picture/lib/camare/state/PreviewState$1;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/camare/state/PreviewState$1;->this$0:Lcom/luck/picture/lib/camare/state/PreviewState;

    invoke-static {p2}, Lcom/luck/picture/lib/camare/state/PreviewState;->access$000(Lcom/luck/picture/lib/camare/state/PreviewState;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->getBorrowPictureState()Lcom/luck/picture/lib/camare/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->setState(Lcom/luck/picture/lib/camare/state/State;)V

    const-string p1, "capture"

    .line 56
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
