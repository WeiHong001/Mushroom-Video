.class public Lcom/yanbo/lib_screen/service/SystemService;
.super Landroid/app/Service;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;,
        Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemService"


# instance fields
.field private binder:Landroid/os/Binder;

.field private mAVTransportSubscriptionCallback:Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;

.field private mDeviceVolume:I

.field private mJettyResourceServer:Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;

.field private mSelectedDevice:Lorg/fourthline/cling/model/meta/Device;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;-><init>(Lcom/yanbo/lib_screen/service/SystemService;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->binder:Landroid/os/Binder;

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/yanbo/lib_screen/service/SystemService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDeviceVolume()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mDeviceVolume:I

    return v0
.end method

.method public getSelectedDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mSelectedDevice:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/yanbo/lib_screen/service/SystemService;->binder:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    new-instance v0, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;-><init>()V

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mJettyResourceServer:Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;

    .line 54
    iget-object v1, p0, Lcom/yanbo/lib_screen/service/SystemService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->end()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mJettyResourceServer:Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/upnp/JettyResourceServer;->stopIfRunning()V

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/yanbo/lib_screen/service/SystemService;->mDeviceVolume:I

    return-void
.end method

.method public setSelectedDevice(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mSelectedDevice:Lorg/fourthline/cling/model/meta/Device;

    if-ne p1, v0, :cond_0

    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/yanbo/lib_screen/service/SystemService;->TAG:Ljava/lang/String;

    const-string v1, "Change selected device."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/yanbo/lib_screen/service/SystemService;->mSelectedDevice:Lorg/fourthline/cling/model/meta/Device;

    .line 90
    iget-object p1, p0, Lcom/yanbo/lib_screen/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;->end()V

    .line 93
    :cond_1
    new-instance p1, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v0, "AVTransport"

    invoke-direct {p1, v0}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;

    iget-object v1, p0, Lcom/yanbo/lib_screen/service/SystemService;->mSelectedDevice:Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;-><init>(Lcom/yanbo/lib_screen/service/SystemService;Lorg/fourthline/cling/model/meta/Service;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/service/SystemService;->mAVTransportSubscriptionCallback:Lcom/yanbo/lib_screen/service/SystemService$AVTransportSubscriptionCallback;

    .line 96
    invoke-interface {p2, v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;)V

    .line 98
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.yanbo.lib_screen.action.change_device"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/yanbo/lib_screen/service/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
