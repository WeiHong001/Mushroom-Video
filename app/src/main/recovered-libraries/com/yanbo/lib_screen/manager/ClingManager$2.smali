.class Lcom/yanbo/lib_screen/manager/ClingManager$2;
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

    .line 156
    iput-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$2;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "onServiceConnected - %s"

    .line 159
    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    check-cast p2, Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;

    .line 161
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$2;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    invoke-virtual {p2}, Lcom/yanbo/lib_screen/service/SystemService$LocalBinder;->getService()Lcom/yanbo/lib_screen/service/SystemService;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yanbo/lib_screen/manager/ClingManager;->setSystemService(Lcom/yanbo/lib_screen/service/SystemService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "onServiceDisconnected - %s"

    .line 166
    invoke-static {v0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/yanbo/lib_screen/manager/ClingManager$2;->this$0:Lcom/yanbo/lib_screen/manager/ClingManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yanbo/lib_screen/manager/ClingManager;->setSystemService(Lcom/yanbo/lib_screen/service/SystemService;)V

    return-void
.end method
