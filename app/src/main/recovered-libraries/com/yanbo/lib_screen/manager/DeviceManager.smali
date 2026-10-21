.class public Lcom/yanbo/lib_screen/manager/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field public static final DMR_DEVICE:Lorg/fourthline/cling/model/types/DeviceType;

.field private static instance:Lcom/yanbo/lib_screen/manager/DeviceManager;


# instance fields
.field private clingDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yanbo/lib_screen/entity/ClingDevice;",
            ">;"
        }
    .end annotation
.end field

.field private currClingDevice:Lcom/yanbo/lib_screen/entity/ClingDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "MediaRenderer"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/manager/DeviceManager;->DMR_DEVICE:Lorg/fourthline/cling/model/types/DeviceType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/yanbo/lib_screen/manager/DeviceManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/yanbo/lib_screen/manager/DeviceManager;->instance:Lcom/yanbo/lib_screen/manager/DeviceManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/yanbo/lib_screen/manager/DeviceManager;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/manager/DeviceManager;-><init>()V

    sput-object v0, Lcom/yanbo/lib_screen/manager/DeviceManager;->instance:Lcom/yanbo/lib_screen/manager/DeviceManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/yanbo/lib_screen/manager/DeviceManager;->instance:Lcom/yanbo/lib_screen/manager/DeviceManager;

    return-object v0
.end method


# virtual methods
.method public addDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2

    .line 66
    invoke-virtual {p0, p1}, Lcom/yanbo/lib_screen/manager/DeviceManager;->getClingDevice(Lorg/fourthline/cling/model/meta/Device;)Lcom/yanbo/lib_screen/entity/ClingDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/yanbo/lib_screen/manager/DeviceManager;->DMR_DEVICE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Lcom/yanbo/lib_screen/entity/ClingDevice;

    invoke-direct {v0, p1}, Lcom/yanbo/lib_screen/entity/ClingDevice;-><init>(Lorg/fourthline/cling/model/meta/Device;)V

    .line 71
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yanbo/lib_screen/event/DeviceEvent;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/event/DeviceEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getClingDevice(Lorg/fourthline/cling/model/meta/Device;)Lcom/yanbo/lib_screen/entity/ClingDevice;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanbo/lib_screen/entity/ClingDevice;

    .line 91
    invoke-virtual {v1}, Lcom/yanbo/lib_screen/entity/ClingDevice;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/meta/Device;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClingDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yanbo/lib_screen/entity/ClingDevice;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrClingDevice()Lcom/yanbo/lib_screen/entity/ClingDevice;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->currClingDevice:Lcom/yanbo/lib_screen/entity/ClingDevice;

    return-object v0
.end method

.method public removeDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/yanbo/lib_screen/manager/DeviceManager;->getClingDevice(Lorg/fourthline/cling/model/meta/Device;)Lcom/yanbo/lib_screen/entity/ClingDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setClingDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yanbo/lib_screen/entity/ClingDevice;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->clingDeviceList:Ljava/util/List;

    return-void
.end method

.method public setCurrClingDevice(Lcom/yanbo/lib_screen/entity/ClingDevice;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/DeviceManager;->currClingDevice:Lcom/yanbo/lib_screen/entity/ClingDevice;

    return-void
.end method
