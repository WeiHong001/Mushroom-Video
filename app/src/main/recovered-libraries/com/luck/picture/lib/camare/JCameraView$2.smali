.class Lcom/luck/picture/lib/camare/JCameraView$2;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 194
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$2;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$2;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$2;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$100(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView$2;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camare/JCameraView;->access$200(Lcom/luck/picture/lib/camare/JCameraView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/luck/picture/lib/camare/state/CameraMachine;->swtich(Landroid/view/SurfaceHolder;F)V

    return-void
.end method
