.class Lcom/luck/picture/lib/camare/CameraInterface$3;
.super Ljava/lang/Object;
.source "CameraInterface.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/CameraInterface;->handleFocus(Landroid/content/Context;FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CameraInterface;

.field final synthetic val$callback:Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentFocusMode:Ljava/lang/String;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CameraInterface;Ljava/lang/String;Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;Landroid/content/Context;FF)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    iput-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$currentFocusMode:Ljava/lang/String;

    iput-object p3, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$callback:Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;

    iput-object p4, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$x:F

    iput p6, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    if-nez p1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    iget p1, p1, Lcom/luck/picture/lib/camare/CameraInterface;->handlerTime:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    iget p2, p1, Lcom/luck/picture/lib/camare/CameraInterface;->handlerTime:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/luck/picture/lib/camare/CameraInterface;->handlerTime:I

    .line 624
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$context:Landroid/content/Context;

    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$x:F

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$y:F

    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$callback:Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/luck/picture/lib/camare/CameraInterface;->handleFocus(Landroid/content/Context;FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V

    goto :goto_1

    .line 617
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 618
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$currentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 620
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->this$0:Lcom/luck/picture/lib/camare/CameraInterface;

    const/4 p2, 0x0

    iput p2, p1, Lcom/luck/picture/lib/camare/CameraInterface;->handlerTime:I

    .line 621
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface$3;->val$callback:Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;

    invoke-interface {p1}, Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;->focusSuccess()V

    :goto_1
    return-void
.end method
