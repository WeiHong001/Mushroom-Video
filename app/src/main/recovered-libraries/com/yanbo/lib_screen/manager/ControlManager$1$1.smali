.class Lcom/yanbo/lib_screen/manager/ControlManager$1$1;
.super Ljava/lang/Object;
.source "ControlManager.java"

# interfaces
.implements Lcom/yanbo/lib_screen/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yanbo/lib_screen/manager/ControlManager$1;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1$1;->this$1:Lcom/yanbo/lib_screen/manager/ControlManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1$1;->this$1:Lcom/yanbo/lib_screen/manager/ControlManager$1;

    iget-object v0, v0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-interface {v0, p1, p2}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1$1;->this$1:Lcom/yanbo/lib_screen/manager/ControlManager$1;

    iget-object v0, v0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1$1;->this$1:Lcom/yanbo/lib_screen/manager/ControlManager$1;

    iget-object v1, v1, Lcom/yanbo/lib_screen/manager/ControlManager$1;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-virtual {v0, v1}, Lcom/yanbo/lib_screen/manager/ControlManager;->playCast(Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    return-void
.end method
