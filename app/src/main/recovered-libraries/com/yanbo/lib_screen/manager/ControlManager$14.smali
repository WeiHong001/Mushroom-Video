.class Lcom/yanbo/lib_screen/manager/ControlManager$14;
.super Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ControlManager;->getPositionInfo()V
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

    .line 425
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {p0, p2, p3}, Lorg/fourthline/cling/support/avtransport/callback/GetPositionInfo;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0

    const-string p1, "E"

    const-string p2, "getPositionInfo failed"

    .line 449
    invoke-static {p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 429
    new-instance p1, Lcom/yanbo/lib_screen/entity/AVTransportInfo;

    invoke-direct {p1}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;-><init>()V

    .line 430
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/PositionInfo;->getAbsTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setTimePosition(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/entity/AVTransportInfo;->setMediaDuration(Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/yanbo/lib_screen/event/ControlEvent;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/event/ControlEvent;-><init>()V

    .line 433
    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/event/ControlEvent;->setAvtInfo(Lcom/yanbo/lib_screen/entity/AVTransportInfo;)V

    .line 434
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/PositionInfo;->getAbsTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$202(Lcom/yanbo/lib_screen/manager/ControlManager;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {p1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$200(Lcom/yanbo/lib_screen/manager/ControlManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yanbo/lib_screen/utils/VMDate;->fromTimeString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$302(Lcom/yanbo/lib_screen/manager/ControlManager;J)J

    .line 438
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/PositionInfo;->getTrackDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$402(Lcom/yanbo/lib_screen/manager/ControlManager;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {p1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$400(Lcom/yanbo/lib_screen/manager/ControlManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yanbo/lib_screen/utils/VMDate;->fromTimeString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$502(Lcom/yanbo/lib_screen/manager/ControlManager;J)J

    .line 440
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {p1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$200(Lcom/yanbo/lib_screen/manager/ControlManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$400(Lcom/yanbo/lib_screen/manager/ControlManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {p1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$300(Lcom/yanbo/lib_screen/manager/ControlManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-static {p1}, Lcom/yanbo/lib_screen/manager/ControlManager;->access$500(Lcom/yanbo/lib_screen/manager/ControlManager;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager$14;->this$0:Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/manager/ControlManager;->unInitScreenCastCallback()V

    .line 444
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/PositionInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getPositionInfo success positionInfo:"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
