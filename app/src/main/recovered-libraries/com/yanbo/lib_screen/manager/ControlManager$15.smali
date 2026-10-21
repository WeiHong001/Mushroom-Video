.class Lcom/yanbo/lib_screen/manager/ControlManager$15;
.super Lorg/fourthline/cling/support/avtransport/callback/GetTransportInfo;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->getTransportInfo()V
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

    .line 462
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/support/avtransport/callback/GetTransportInfo;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    const-string p1, "E"

    const-string p2, "getTransportInfo failed"

    .line 493
    invoke-static {p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/TransportInfo;)V
    .locals 5

    .line 466
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/TransportInfo;->getCurrentTransportState()Lorg/fourthline/cling/support/model/TransportState;

    move-result-object p1

    .line 467
    new-instance p2, Lcom/yanbo/lib_screen/entity/AVTransportInfo;

    invoke-direct {p2}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;-><init>()V

    .line 468
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->TRANSITIONING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne v0, p1, :cond_0

    .line 469
    sget-object v0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->TRANSITIONING:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->PLAYING:Lorg/fourthline/cling/support/model/TransportState;

    if-ne v0, p1, :cond_1

    .line 471
    sget-object v0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->PLAYING:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/fourthline/cling/support/model/TransportState;

    if-ne v0, p1, :cond_2

    .line 473
    sget-object v0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->PAUSED_PLAYBACK:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_2
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->STOPPED:Lorg/fourthline/cling/support/model/TransportState;

    const-wide/16 v1, 0x0

    if-ne v0, p1, :cond_3

    .line 475
    sget-object v0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->STOPPED:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setState(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$300(Lcom/yanbo/lib_screen/manager/ControlManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$500(Lcom/yanbo/lib_screen/manager/ControlManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->unInitScreenCastCallback()V

    goto :goto_0

    .line 480
    :cond_3
    sget-object v0, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->STOPPED:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setState(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$300(Lcom/yanbo/lib_screen/manager/ControlManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$500(Lcom/yanbo/lib_screen/manager/ControlManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$15;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->unInitScreenCastCallback()V

    .line 485
    :cond_4
    :goto_0
    new-instance v0, Lcom/yanbo/lib_screen/event/ControlEvent;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/event/ControlEvent;-><init>()V

    .line 486
    invoke-virtual {v0, p2}, Lcom/yanbo/lib_screen/event/ControlEvent;->setAvtInfo(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V

    .line 487
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/TransportState;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getTransportInfo success transportInfo:"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
