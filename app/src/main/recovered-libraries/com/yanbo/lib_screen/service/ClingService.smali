.class public Lcom/yanbo/lib_screen/service/ClingService;
.super Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;
.source "ClingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;,
        Lcom/yanbo/lib_screen/service/ClingService$FixedAndroidUpnpServiceConfiguration;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    return-void
.end method

.method private initLocalDevice()V
    .locals 7

    .line 62
    new-instance v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;-><init>()V

    const-class v1, Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/fourthline/cling/model/DefaultServiceManager;

    const-class v2, Lcom/yanbo/lib_screen/service/upnp/ClingContentDirectoryService;

    invoke-direct {v1, v0, v2}, Lorg/fourthline/cling/model/DefaultServiceManager;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/LocalService;->setManager(Lorg/fourthline/cling/model/ServiceManager;)V

    .line 67
    invoke-static {}, Lcom/yanbo/lib_screen/utils/VMNetwork;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    .line 71
    new-instance v2, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v3, "MediaServer"

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v3, Lorg/fourthline/cling/model/meta/DeviceDetails;

    const-string v4, "VAndroidMediaServer"

    invoke-direct {v3, v4}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/lang/String;)V

    .line 75
    :try_start_0
    new-instance v4, Lorg/fourthline/cling/model/meta/LocalDevice;

    new-instance v5, Lorg/fourthline/cling/model/meta/DeviceIdentity;

    invoke-direct {v5, v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    invoke-direct {v4, v5, v2, v3, v1}, Lorg/fourthline/cling/model/meta/LocalDevice;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/LocalService;)V

    iput-object v4, p0, Lcom/yanbo/lib_screen/service/ClingService;->localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 77
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/yanbo/lib_screen/service/ClingService;->localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationException;->printStackTrace()V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaServer device created! name:%s, manufacturer:%s, model:%s      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 110
    new-instance v0, Lcom/yanbo/lib_screen/service/ClingService$FixedAndroidUpnpServiceConfiguration;

    invoke-direct {v0, p0}, Lcom/yanbo/lib_screen/service/ClingService$FixedAndroidUpnpServiceConfiguration;-><init>(Lcom/yanbo/lib_screen/service/ClingService;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->upnpService:Lorg/fourthline/cling/UpnpService;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalDevice()Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->localDevice:Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->upnpService:Lorg/fourthline/cling/UpnpService;

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/yanbo/lib_screen/service/ClingService;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 44
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onCreate()V

    .line 45
    new-instance v0, Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;-><init>(Lcom/yanbo/lib_screen/service/ClingService;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/ClingService;->binder:Lorg/fourthline/cling/android/AndroidUpnpServiceImpl$Binder;

    .line 46
    invoke-direct {p0}, Lcom/yanbo/lib_screen/service/ClingService;->initLocalDevice()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 51
    invoke-super {p0}, Lorg/fourthline/cling/android/AndroidUpnpServiceImpl;->onDestroy()V

    return-void
.end method
