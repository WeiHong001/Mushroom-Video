.class Lcom/yanbo/lib_screen/manager/ControlManager$16;
.super Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->getVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ControlManager;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$16;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/support/renderingcontrol/callback/GetVolume;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    const-string p1, "getVolume error %s"

    .line 520
    invoke-static {p1, p3}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;I)V
    .locals 1

    .line 509
    new-instance p1, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;

    invoke-direct {p1}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;-><init>()V

    .line 510
    invoke-virtual {p1, p2}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->setVolume(I)V

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/entity/RenderingControlInfo;->setMute(Z)V

    .line 512
    new-instance v0, Lcom/yanbo/lib_screen/event/ControlEvent;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/event/ControlEvent;-><init>()V

    .line 513
    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/event/ControlEvent;->setRcInfo(Lcom/yanbo/lib_screen/entity/RenderingControlInfo;)V

    .line 514
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 515
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "getVolume success volume:"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
