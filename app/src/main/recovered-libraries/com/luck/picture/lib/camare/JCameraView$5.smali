.class Lcom/luck/picture/lib/camare/JCameraView$5;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/ClickListener;


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

    .line 262
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$5;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$5;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$600(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$5;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$600(Lcom/luck/picture/lib/camare/JCameraView;)Lcom/luck/picture/lib/camare/listener/ClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/ClickListener;->onClick()V

    :cond_0
    return-void
.end method
