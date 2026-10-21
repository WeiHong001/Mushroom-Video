.class public Lcom/yanbo/lib_screen/manager/ClingManager;
.super Ljava/lang/Object;
.source "ClingManager.java"


# static fields
.field public static final CONTENT_DIRECTORY:Lorg/fourthline/cling/model/types/ServiceType;

.field private static instance:Lcom/yanbo/lib_screen/manager/ClingManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private clingRegistryListener:Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

.field private clingService:Lcom/yanbo/lib_screen/service/ClingService;

.field private clingServiceConnection:Landroid/content/ServiceConnection;

.field private context:Landroid/content/Context;

.field private localItem:Lorg/fourthline/cling/support/model/item/Item;

.field private remoteItem:Lcom/yanbo/lib_screen/entity/RemoteItem;

.field private systemService:Lcom/yanbo/lib_screen/service/SystemService;

.field private systemServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "ContentDirectory"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yanbo/lib_screen/manager/ClingManager;->CONTENT_DIRECTORY:Lorg/fourthline/cling/model/types/ServiceType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->TAG:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/yanbo/lib_screen/VApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/yanbo/lib_screen/manager/ClingManager;)Lcom/yanbo/lib_screen/listener/ClingRegistryListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingRegistryListener:Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yanbo/lib_screen/manager/ClingManager;Lcom/yanbo/lib_screen/listener/ClingRegistryListener;)Lcom/yanbo/lib_screen/listener/ClingRegistryListener;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingRegistryListener:Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

    return-object p1
.end method

.method private bindService()V
    .locals 4

    .line 130
    new-instance v0, Lcom/yanbo/lib_screen/manager/ClingManager$1;

    invoke-direct {v0, p0}, Lcom/yanbo/lib_screen/manager/ClingManager$1;-><init>(Lcom/yanbo/lib_screen/manager/ClingManager;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingServiceConnection:Landroid/content/ServiceConnection;

    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    const-class v2, Lcom/yanbo/lib_screen/service/ClingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 156
    new-instance v0, Lcom/yanbo/lib_screen/manager/ClingManager$2;

    invoke-direct {v0, p0}, Lcom/yanbo/lib_screen/manager/ClingManager$2;-><init>(Lcom/yanbo/lib_screen/manager/ClingManager;)V

    iput-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemServiceConnection:Landroid/content/ServiceConnection;

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    const-class v2, Lcom/yanbo/lib_screen/service/SystemService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/yanbo/lib_screen/manager/ClingManager;
    .locals 1

    .line 59
    sget-object v0, Lcom/yanbo/lib_screen/manager/ClingManager;->instance:Lcom/yanbo/lib_screen/manager/ClingManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-direct {v0}, Lcom/yanbo/lib_screen/manager/ClingManager;-><init>()V

    sput-object v0, Lcom/yanbo/lib_screen/manager/ClingManager;->instance:Lcom/yanbo/lib_screen/manager/ClingManager;

    .line 62
    :cond_0
    sget-object v0, Lcom/yanbo/lib_screen/manager/ClingManager;->instance:Lcom/yanbo/lib_screen/manager/ClingManager;

    return-object v0
.end method

.method private unbindService()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    iput-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingServiceConnection:Landroid/content/ServiceConnection;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 187
    iget-object v2, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 188
    iput-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemServiceConnection:Landroid/content/ServiceConnection;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/ClingService;->onDestroy()V

    .line 192
    iput-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemService:Lcom/yanbo/lib_screen/service/SystemService;

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/SystemService;->onDestroy()V

    .line 196
    iput-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemService:Lcom/yanbo/lib_screen/service/SystemService;

    .line 198
    :cond_3
    iput-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingRegistryListener:Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/manager/ClingManager;->stopClingService()V

    const/4 v0, 0x0

    .line 227
    sput-object v0, Lcom/yanbo/lib_screen/manager/ClingManager;->instance:Lcom/yanbo/lib_screen/manager/ClingManager;

    return-void
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/ClingService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalItem()Lorg/fourthline/cling/support/model/item/Item;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->localItem:Lorg/fourthline/cling/support/model/item/Item;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/ClingService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteItem()Lcom/yanbo/lib_screen/entity/RemoteItem;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->remoteItem:Lcom/yanbo/lib_screen/entity/RemoteItem;

    return-object v0
.end method

.method public searchDevices()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/yanbo/lib_screen/manager/ClingManager;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    :cond_0
    return-void
.end method

.method public searchLocalContent(Ljava/lang/String;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    invoke-virtual {v0}, Lcom/yanbo/lib_screen/service/ClingService;->getLocalDevice()Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/yanbo/lib_screen/manager/ClingManager;->CONTENT_DIRECTORY:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    invoke-virtual {v1}, Lcom/yanbo/lib_screen/service/ClingService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v2, Lcom/yanbo/lib_screen/manager/ClingManager$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/yanbo/lib_screen/manager/ClingManager$3;-><init>(Lcom/yanbo/lib_screen/manager/ClingManager;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setClingService(Lcom/yanbo/lib_screen/service/ClingService;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->clingService:Lcom/yanbo/lib_screen/service/ClingService;

    return-void
.end method

.method public setLocalItem(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 1

    .line 103
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->localItem:Lorg/fourthline/cling/support/model/item/Item;

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->remoteItem:Lcom/yanbo/lib_screen/entity/RemoteItem;

    .line 105
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ControlManager;->getInstance()Lcom/yanbo/lib_screen/manager/ControlManager;

    move-result-object p1

    sget-object v0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->STOPED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->setState(Lcom/yanbo/lib_screen/manager/ControlManager$CastState;)V

    return-void
.end method

.method public setRemoteItem(Lcom/yanbo/lib_screen/entity/RemoteItem;)V
    .locals 1

    .line 117
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->remoteItem:Lcom/yanbo/lib_screen/entity/RemoteItem;

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->localItem:Lorg/fourthline/cling/support/model/item/Item;

    .line 119
    invoke-static {}, Lcom/yanbo/lib_screen/manager/ControlManager;->getInstance()Lcom/yanbo/lib_screen/manager/ControlManager;

    move-result-object p1

    sget-object v0, Lcom/yanbo/lib_screen/manager/ControlManager$CastState;->STOPED:Lcom/yanbo/lib_screen/manager/ControlManager$CastState;

    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/manager/ControlManager;->setState(Lcom/yanbo/lib_screen/manager/ControlManager$CastState;)V

    return-void
.end method

.method public setSystemService(Lcom/yanbo/lib_screen/service/SystemService;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager;->systemService:Lcom/yanbo/lib_screen/service/SystemService;

    return-void
.end method

.method public startClingService()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ClingManager;->bindService()V

    return-void
.end method

.method public stopClingService()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/yanbo/lib_screen/manager/ClingManager;->unbindService()V

    return-void
.end method
