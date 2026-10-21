.class Lcom/yanbo/lib_screen/manager/ControlManager$11;
.super Ljava/lang/Object;
.source "ControlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->initScreenCastCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$11;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$11;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$000(Lcom/yanbo/lib_screen/manager/ControlManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$11;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->getPositionInfo()V

    .line 363
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$11;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->getTransportInfo()V

    .line 364
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$11;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->getVolume()V

    .line 366
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$11;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$100(Lcom/yanbo/lib_screen/manager/ControlManager;)Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    move-result-object v0

    sget-object v1, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->PAUSED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x7d0

    .line 367
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
