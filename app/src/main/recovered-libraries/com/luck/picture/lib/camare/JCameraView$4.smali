.class Lcom/luck/picture/lib/camare/JCameraView$4;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/TypeListener;


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

    .line 242
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$4;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$4;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView$4;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camare/JCameraView;->access$100(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camare/JCameraView$4;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v2}, Lcom/luck/picture/lib/camare/JCameraView;->access$200(Lcom/luck/picture/lib/camare/JCameraView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->cancle(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$4;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/state/CameraMachine;->confirm()V

    return-void
.end method
