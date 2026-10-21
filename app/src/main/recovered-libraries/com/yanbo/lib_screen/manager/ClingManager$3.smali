.class Lcom/yanbo/lib_screen/manager/ClingManager$3;
.super Lcom/yanbo/lib_screen/callback/ContentBrowseCallback;
.source "ClingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ClingManager;->searchLocalContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ClingManager;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ClingManager;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$3;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-direct {p0, p2, p3}, Lcom/yanbo/lib_screen/callback/ContentBrowseCallback;-><init>(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    const-string p1, "Load local content failure %s"

    .line 220
    invoke-static {p1, p3}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/DIDLContent;)V
    .locals 1

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load local content! containers:%d, items:%d"

    .line 211
    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance p1, Lcom/yanbo/lib_screen/event/DIDLEvent;

    invoke-direct {p1}, Lcom/yanbo/lib_screen/event/DIDLEvent;-><init>()V

    .line 214
    iput-object p2, p1, Lcom/yanbo/lib_screen/event/DIDLEvent;->content:Lorg/fourthline/cling/support/model/DIDLContent;

    .line 215
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
