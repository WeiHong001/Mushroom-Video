.class Lcom/luck/picture/lib/camare/JCameraView$6;
.super Ljava/lang/Thread;
.source "JCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/JCameraView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
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

    .line 309
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$6;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 312
    invoke-static {}, Lcom/luck/picture/lib/camare/CameraInterface;->getInstance()Lcom/luck/picture/lib/camare/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView$6;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->doOpenCamera(Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;)V

    return-void
.end method
