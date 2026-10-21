.class Lcom/yanbo/lib_screen/manager/ClingManager$1;
.super Ljava/lang/Object;
.source "ClingManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanbo/lib_screen/manager/ClingManager;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanbo/lib_screen/manager/ClingManager;


# direct methods
.method constructor <init>(Lcom/yanbo/lib_screen/manager/ClingManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "onServiceConnected - %s"

    .line 133
    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    check-cast p2, Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;

    .line 135
    invoke-virtual {p2}, Lcom/yanbo/lib_screen/service/ClingService$LocalBinder;->getService()Lcom/yanbo/lib_screen/service/ClingService;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-virtual {p2, p1}, Lcom/yanbo/lib_screen/manager/ClingManager;->setClingService(Lcom/yanbo/lib_screen/service/ClingService;)V

    .line 139
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    new-instance p2, Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

    invoke-direct {p2}, Lcom/yanbo/lib_screen/listener/ClingRegistryListener;-><init>()V

    invoke-static {p1, p2}, Lcom/yanbo/lib_screen/manager/ClingManager;->access$002(Lcom/yanbo/lib_screen/manager/ClingManager;Lcom/yanbo/lib_screen/listener/ClingRegistryListener;)Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

    .line 140
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/manager/ClingManager;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object p1

    iget-object p2, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-static {p2}, Lcom/yanbo/lib_screen/manager/ClingManager;->access$000(Lcom/yanbo/lib_screen/manager/ClingManager;)Lcom/yanbo/lib_screen/listener/ClingRegistryListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 142
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-virtual {p1}, Lcom/yanbo/lib_screen/manager/ClingManager;->searchDevices()V

    .line 143
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/yanbo/lib_screen/manager/ClingManager;->searchLocalContent(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "onServiceDisconnected - %s"

    .line 148
    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$1;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->setClingService(Lcom/yanbo/lib_screen/service/ClingService;)V

    return-void
.end method
