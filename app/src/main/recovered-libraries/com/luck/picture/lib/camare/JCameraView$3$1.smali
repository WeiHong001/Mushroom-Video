.class Lcom/luck/picture/lib/camare/JCameraView$3$1;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/JCameraView$3;->recordShort(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/camare/JCameraView$3;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/JCameraView$3;J)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$3$1;->this$1:Lcom/luck/picture/lib/camare/JCameraView$3;

    iput-wide p2, p0, Lcom/luck/picture/lib/camare/JCameraView$3$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$3$1;->this$1:Lcom/luck/picture/lib/camare/JCameraView$3;

    iget-object v0, v0, Lcom/luck/picture/lib/camare/JCameraView$3;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$300(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/state/CameraMachine;

    move-result-object v0

    iget-wide v1, p0, Lcom/luck/picture/lib/camare/JCameraView$3$1;->val$time:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/luck/picture/lib/camare/state/CameraMachine;->stopRecord(ZJ)V

    return-void
.end method
