.class Lcom/luck/picture/lib/camare/CaptureLayout$5;
.super Ljava/lang/Object;
.source "CaptureLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/CaptureLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CaptureLayout;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CaptureLayout;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$5;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$5;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$400(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/ReturnListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureLayout$5;->this$0:Lcom/luck/picture/lib/camare/CaptureLayout;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/CaptureLayout;->access$400(Lcom/luck/picture/lib/camare/CaptureLayout;)Lcom/luck/picture/lib/camare/listener/ReturnListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/luck/picture/lib/camare/listener/ReturnListener;->onReturn()V

    :cond_0
    return-void
.end method
