.class Lcom/yanbo/lib_screen/manager/ControlManager$2;
.super Ljava/lang/Object;
.source "ControlManager.java"

# interfaces
.implements Lcom/yanbo/lib_screen/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->newPlayCast(Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

.field final synthetic val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

.field final synthetic val$item:Lcom/yanbo/lib_screen/entity/RemoteItem;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$2;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iput-object p2, p0, Lcom/yanbo/lib_screen/manager/ControlManager$2;->val$item:Lcom/yanbo/lib_screen/entity/RemoteItem;

    iput-object p3, p0, Lcom/yanbo/lib_screen/manager/ControlManager$2;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$2;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-interface {v0, p1, p2}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$2;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$2;->val$item:Lcom/yanbo/lib_screen/entity/RemoteItem;

    new-instance v2, Lcom/yanbo/lib_screen/manager/ControlManager$2$1;

    invoke-direct {v2, p0}, Lcom/yanbo/lib_screen/manager/ControlManager$2$1;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/yanbo/lib_screen/manager/ControlManager;->setAVTransportURI(Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    return-void
.end method
