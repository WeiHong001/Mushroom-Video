.class Lcom/luck/picture/lib/camare/JCameraView$7;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/JCameraView;->setFocusViewWidthAnimation(FF)V
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

    .line 375
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$7;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusSuccess()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$7;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$700(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/FoucsView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camare/FoucsView;->setVisibility(I)V

    return-void
.end method
