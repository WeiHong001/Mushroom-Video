.class Lcom/luck/picture/lib/camare/JCameraView$3;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/JCameraView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/JCameraView;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/JCameraView;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEnd(J)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->stopRecord(ZJ)V

    return-void
.end method

.method public recordError()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$500(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$500(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/ErrorListener;->AudioPermissionError()V

    :cond_0
    return-void
.end method

.method public recordShort(J)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$400(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/CaptureLayout;

    move-result-object v0

    const-string/jumbo v1, "\u5f55\u5236\u65f6\u95f4\u8fc7\u77ed,\u6700\u5c0f5\u79d2"

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CaptureLayout;->setTextWithAnimation(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    new-instance v1, Lcom/luck/picture/lib/camare/JCameraView$3$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/luck/picture/lib/camare/JCameraView$3$1;-><init>(Lcom/luck/picture/lib/camare/JCameraView$3;J)V

    const-wide/16 v2, 0x5dc

    sub-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/luck/picture/lib/camare/JCameraView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public recordStart()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camare/JCameraView;->access$100(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v2}, Lcom/luck/picture/lib/camare/JCameraView;->access$200(Lcom/luck/picture/lib/camare/JCameraView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->record(Landroid/view/Surface;F)V

    return-void
.end method

.method public recordZoom(F)V
    .locals 2

    const-string v0, "recordZoom"

    .line 230
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->zoom(FI)V

    return-void
.end method

.method public takePictures()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->capture()V

    return-void
.end method
