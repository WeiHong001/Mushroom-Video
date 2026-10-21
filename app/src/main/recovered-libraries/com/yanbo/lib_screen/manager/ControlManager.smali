.class public Lcom/yanbo/lib_screen/manager/ControlManager;
.super Ljava/lang/Object;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanbo/lib_screen/manager/ControlManager$CastState;
    }
.end annotation


# static fields
.field public static final AV_TRANSPORT:Ljava/lang/String; = "AVTransport"

.field public static final RENDERING_CONTROL:Ljava/lang/String; = "RenderingControl"

.field private static instance:Lcom/yanbo/lib_screen/manager/ControlManager;


# instance fields
.field private absTime:J

.field private absTimeStr:Ljava/lang/String;

.field private avtCallback:Lcom/yanbo/lib_screen/callback/AVTransportCallback;

.field private avtService:Lorg/fourthline/cling/model/meta/Service;

.field private instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private isMute:Z

.field private isScreenCast:Z

.field private rcCallback:Lcom/yanbo/lib_screen/callback/RenderingControlCallback;

.field private rcService:Lorg/fourthline/cling/model/meta/Service;

.field private state:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

.field private trackDuration:J

.field private trackDurationStr:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isScreenCast:Z

    .line 66
    sget-object v1, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->STOPED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    iput-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->state:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    .line 67
    iput-boolean v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isMute:Z

    const-string v0, "AVTransport"

    .line 70
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->findServiceFromDevice(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    const-string v0, "RenderingControl"

    .line 71
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->findServiceFromDevice(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    .line 72
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-string v1, "0"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-void
.end method

.method static synthetic access$000(Lcom/yanbo/lib_screen/manager/ControlManager;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isScreenCast:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yanbo/lib_screen/manager/ControlManager;)Lcom/yanbo/lib_screen/manager/ControlManager$CastState;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->state:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yanbo/lib_screen/manager/ControlManager;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->absTimeStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yanbo/lib_screen/manager/ControlManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->absTimeStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yanbo/lib_screen/manager/ControlManager;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->absTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/yanbo/lib_screen/manager/ControlManager;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->absTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/yanbo/lib_screen/manager/ControlManager;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->trackDurationStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yanbo/lib_screen/manager/ControlManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->trackDurationStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yanbo/lib_screen/manager/ControlManager;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->trackDuration:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/yanbo/lib_screen/manager/ControlManager;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->trackDuration:J

    return-wide p1
.end method

.method private checkAVTService()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    if-nez v0, :cond_0

    const-string v0, "AVTransport"

    .line 530
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->findServiceFromDevice(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkRCService()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    if-nez v0, :cond_0

    const-string v0, "RenderingControl"

    .line 540
    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->findServiceFromDevice(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/yanbo/lib_screen/manager/ControlManager;
    .locals 1

    .line 76
    sget-object v0, Lcom/yanbo/lib_screen/manager/ControlManager;->instance:Lcom/yanbo/lib_screen/manager/ControlManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/manager/ControlManager;-><init>()V

    sput-object v0, Lcom/yanbo/lib_screen/manager/ControlManager;->instance:Lcom/yanbo/lib_screen/manager/ControlManager;

    .line 79
    :cond_0
    sget-object v0, Lcom/yanbo/lib_screen/manager/ControlManager;->instance:Lcom/yanbo/lib_screen/manager/ControlManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 579
    sput-object v0, Lcom/yanbo/lib_screen/manager/ControlManager;->instance:Lcom/yanbo/lib_screen/manager/ControlManager;

    .line 580
    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    .line 581
    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    return-void
.end method

.method public findServiceFromDevice(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .line 551
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-static {}, Lcom/yanbo/lib_screen/manager/DeviceManager;->getInstance()Lcom/yanbo/lib_screen/manager/DeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/manager/DeviceManager;->getCurrClingDevice()Lcom/yanbo/lib_screen/entity/ClingDevice;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/yanbo/lib_screen/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    return-object p1
.end method

.method public getPositionInfo()V
    .locals 4

    .line 421
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$14;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, v3}, Lcom/yanbo/lib_screen/manager/ControlManager$14;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getState()Lcom/yanbo/lib_screen/manager/ControlManager$CastState;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->state:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    return-object v0
.end method

.method public getTransportInfo()V
    .locals 4

    .line 458
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$15;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, v3}, Lcom/yanbo/lib_screen/manager/ControlManager$15;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getVolume()V
    .locals 4

    .line 502
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkRCService()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 506
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$16;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, v3}, Lcom/yanbo/lib_screen/manager/ControlManager$16;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public initScreenCastCallback()V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->unInitScreenCastCallback()V

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isScreenCast:Z

    const-string v0, ""

    const-string v1, "initScreenCastCallback"

    .line 356
    invoke-static {v0, v1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$11;

    invoke-direct {v1, p0}, Lcom/yanbo/lib_screen/manager/ControlManager$11;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 376
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 378
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager$12;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v0, p0, v1}, Lcom/yanbo/lib_screen/manager/ControlManager$12;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/meta/Service;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtCallback:Lcom/yanbo/lib_screen/callback/AVTransportCallback;

    .line 386
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtCallback:Lcom/yanbo/lib_screen/callback/AVTransportCallback;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    .line 389
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager$13;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v0, p0, v1}, Lcom/yanbo/lib_screen/manager/ControlManager$13;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/meta/Service;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcCallback:Lcom/yanbo/lib_screen/callback/RenderingControlCallback;

    .line 399
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcCallback:Lcom/yanbo/lib_screen/callback/RenderingControlCallback;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    return-void
.end method

.method public isMute()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isMute:Z

    return v0
.end method

.method public muteCast(ZLcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 8

    .line 267
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkRCService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sget p1, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v0, "RCService is null"

    invoke-interface {p2, p1, v0}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 271
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 272
    new-instance v7, Lcom/yanbo/lib_screen/manager/ControlManager$8;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v4, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/yanbo/lib_screen/manager/ControlManager$8;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;ZLcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v7}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public newPlayCast(Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 1

    .line 117
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/yanbo/lib_screen/manager/ControlManager$2;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->stopCast(Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    return-void
.end method

.method public newPlayCast(Lorg/fourthline/cling/support/model/item/Item;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yanbo/lib_screen/manager/ControlManager$1;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/support/model/item/Item;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-virtual {p0, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->stopCast(Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    return-void
.end method

.method public pauseCast(Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 4

    .line 168
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget v0, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v1, "AVTService is null"

    invoke-interface {p1, v0, v1}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$4;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/yanbo/lib_screen/manager/ControlManager$4;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public playCast(Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 4

    .line 144
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget v0, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v1, "AVTService is null"

    invoke-interface {p1, v0, v1}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$3;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/yanbo/lib_screen/manager/ControlManager$3;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public seekCast(Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 9

    .line 218
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget p1, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v0, "AVTService is null"

    invoke-interface {p2, p1, v0}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 223
    new-instance v8, Lcom/yanbo/lib_screen/manager/ControlManager$6;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v4, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/yanbo/lib_screen/manager/ControlManager$6;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v8}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setAVTransportURI(Lcom/yanbo/lib_screen/entity/RemoteItem;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 10

    .line 327
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sget p1, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v0, "service is null"

    invoke-interface {p2, p1, v0}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 331
    :cond_0
    invoke-static {p1}, Lcom/yanbo/lib_screen/utils/ClingUtil;->getItemMetadata(Lcom/yanbo/lib_screen/entity/RemoteItem;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "metadata: "

    .line 332
    invoke-static {v0, v6}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 335
    new-instance v9, Lcom/yanbo/lib_screen/manager/ControlManager$10;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v4, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/entity/RemoteItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object v1, v9

    move-object v2, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/yanbo/lib_screen/manager/ControlManager$10;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v9}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setAVTransportURI(Lorg/fourthline/cling/support/model/item/Item;Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 9

    .line 293
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    sget p1, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v0, "service is null"

    invoke-interface {p2, p1, v0}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 298
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLContent;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/DIDLContent;-><init>()V

    .line 299
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/DIDLContent;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 302
    :try_start_0
    new-instance p1, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    invoke-direct {p1}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->generate(Lorg/fourthline/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    move-object v6, p1

    const-string p1, "metadata: %s"

    .line 306
    invoke-static {p1, v6}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object p1

    .line 308
    new-instance v0, Lcom/yanbo/lib_screen/manager/ControlManager$9;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v4, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    move-object v1, v0

    move-object v2, p0

    move-object v5, v7

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/yanbo/lib_screen/manager/ControlManager$9;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {p1, v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isMute:Z

    return-void
.end method

.method public setState(Lcom/yanbo/lib_screen/manager/ControlManager$CastState;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->state:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    return-void
.end method

.method public setVolumeCast(ILcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 9

    .line 243
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkRCService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget p1, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v0, "RCService is null"

    invoke-interface {p2, p1, v0}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 248
    new-instance v8, Lcom/yanbo/lib_screen/manager/ControlManager$7;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v4, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcService:Lorg/fourthline/cling/model/meta/Service;

    int-to-long v5, p1

    move-object v1, v8

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/yanbo/lib_screen/manager/ControlManager$7;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;JLcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v8}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public stopCast(Lcom/yanbo/lib_screen/callback/ControlCallback;)V
    .locals 4

    .line 192
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ControlManager;->checkAVTService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget v0, Lcom/yanbo/lib_screen/VError;->SERVICE_IS_NULL:I

    const-string v1, "AVTService is null"

    invoke-interface {p1, v0, v1}, Lcom/yanbo/lib_screen/callback/ControlCallback;->onError(ILjava/lang/String;)V

    return-void

    .line 196
    :cond_0
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ClingManager;->getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/yanbo/lib_screen/manager/ControlManager$5;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->instanceId:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    iget-object v3, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtService:Lorg/fourthline/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/yanbo/lib_screen/manager/ControlManager$5;-><init>(Lcom/yanbo/lib_screen/manager/ControlManager;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/meta/Service;Lcom/yanbo/lib_screen/callback/ControlCallback;)V

    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public unInitScreenCastCallback()V
    .locals 3

    const-string v0, ""

    const-string/jumbo v1, "unInitScreenCastCallback"

    .line 406
    invoke-static {v0, v1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00"

    .line 407
    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->absTimeStr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 408
    iput-wide v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->absTime:J

    .line 409
    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->trackDurationStr:Ljava/lang/String;

    .line 410
    iput-wide v1, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->trackDuration:J

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->isScreenCast:Z

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->avtCallback:Lcom/yanbo/lib_screen/callback/AVTransportCallback;

    .line 414
    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ControlManager;->rcCallback:Lcom/yanbo/lib_screen/callback/RenderingControlCallback;

    return-void
.end method
