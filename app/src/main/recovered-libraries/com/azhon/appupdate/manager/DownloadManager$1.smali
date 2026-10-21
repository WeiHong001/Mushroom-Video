.class public final Lcom/azhon/appupdate/manager/DownloadManager$1;
.super Lcom/azhon/appupdate/listener/LifecycleCallbacksAdapter;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/azhon/appupdate/manager/DownloadManager;-><init>(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/azhon/appupdate/manager/DownloadManager$1",
        "Lcom/azhon/appupdate/listener/LifecycleCallbacksAdapter;",
        "onActivityDestroyed",
        "",
        "activity",
        "Landroid/app/Activity;",
        "appupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/azhon/appupdate/manager/DownloadManager;


# direct methods
.method constructor <init>(Lcom/azhon/appupdate/manager/DownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$1;->this$0:Lcom/azhon/appupdate/manager/DownloadManager;

    .line 98
    invoke-direct {p0}, Lcom/azhon/appupdate/listener/LifecycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Lcom/azhon/appupdate/listener/LifecycleCallbacksAdapter;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 101
    iget-object v0, p0, Lcom/azhon/appupdate/manager/DownloadManager$1;->this$0:Lcom/azhon/appupdate/manager/DownloadManager;

    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getContextClsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/azhon/appupdate/manager/DownloadManager$1;->this$0:Lcom/azhon/appupdate/manager/DownloadManager;

    invoke-static {p1}, Lcom/azhon/appupdate/manager/DownloadManager;->access$clearListener(Lcom/azhon/appupdate/manager/DownloadManager;)V

    :cond_0
    return-void
.end method
