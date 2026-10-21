.class Lcom/yanbo/lib_screen/manager/ControlManager$1;
.super Ljava/lang/Object;
.source "ControlManager.java"

# interfaces
.implements Lcom/yanbo/lib_screen/callback/ControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->newPlayCast(Lorg/fourthline/cling/support/model/item/Item;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

.field final synthetic val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

.field final synthetic val$item:Lorg/fourthline/cling/support/model/item/Item;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/support/model/item/Item;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iput-object p2, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->val$item:Lorg/fourthline/cling/support/model/item/Item;

    iput-object p3, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->val$callback:Lcom/yanbo/lib_screen/callback/ControlCallback;

    invoke-interface {v0, p1, p2}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$1;->val$item:Lorg/fourthline/cling/support/model/item/Item;

    new-instance v2, Lcom/yanbo/lib_screen/manager/ControlManager$1$1;

    invoke-direct {v2, p0}, Lcom/yanbo/lib_screen/manager/ControlManager$1$1;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/yanbo/lib_screen/manager/ControlManager;->setAVTransportURI(Lorg/fourthline/cling/support/model/item/Item;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    return-void
.end method
