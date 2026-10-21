.class public Lcom/yanbo/lib_screen/listener/ClingRegistryListener;
.super Lorg/fourthline/cling/registry/DefaultRegistryListener;
.source "ClingRegistryListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/fourthline/cling/registry/DefaultRegistryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 44
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "localDeviceAdded %s"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .line 50
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "localDeviceRemoved %s"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceAdded(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/yanbo/lib_screen/manager/DeviceManager;->getInstance()Lcom/yanbo/lib_screen/manager/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/manager/DeviceManager;->addDevice(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public onDeviceRemoved(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/yanbo/lib_screen/manager/DeviceManager;->getInstance()Lcom/yanbo/lib_screen/manager/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanbo/lib_screen/manager/DeviceManager;->removeDevice(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    .line 32
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remoteDeviceAdded %s"

    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/yanbo/lib_screen/listener/ClingRegistryListener;->onDeviceAdded(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "remoteDeviceDiscoveryFailed %s - %s"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .line 20
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "remoteDeviceDiscoveryStarted %s"

    invoke-static {p2, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    .line 38
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "remoteDeviceRemoved %s"

    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/yanbo/lib_screen/listener/ClingRegistryListener;->onDeviceRemoved(Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method
