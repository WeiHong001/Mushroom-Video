.class public final Lcom/azhon/appupdate/service/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.kt"

# interfaces
.implements Lcom/azhon/appupdate/listener/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azhon/appupdate/service/DownloadService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadService.kt\ncom/azhon/appupdate/service/DownloadService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1849#2,2:189\n1849#2,2:191\n1849#2,2:193\n1849#2,2:195\n1849#2,2:197\n*S KotlinDebug\n*F\n+ 1 DownloadService.kt\ncom/azhon/appupdate/service/DownloadService\n*L\n120#1:189,2\n136#1:191,2\n155#1:193,2\n167#1:195,2\n180#1:197,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000  2\u00020\u00012\u00020\u0002:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0002J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\tH\u0002J\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\"\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0016J\u0008\u0010\u001e\u001a\u00020\tH\u0002J\u0008\u0010\u001f\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/azhon/appupdate/service/DownloadService;",
        "Landroid/app/Service;",
        "Lcom/azhon/appupdate/listener/OnDownloadListener;",
        "()V",
        "lastProgress",
        "",
        "manager",
        "Lcom/azhon/appupdate/manager/DownloadManager;",
        "cancel",
        "",
        "checkApkMd5",
        "",
        "done",
        "apk",
        "Ljava/io/File;",
        "download",
        "downloading",
        "max",
        "progress",
        "error",
        "e",
        "",
        "init",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onStartCommand",
        "flags",
        "startId",
        "releaseResources",
        "start",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/azhon/appupdate/service/DownloadService$Companion;

.field private static final TAG:Ljava/lang/String; = "DownloadService"


# instance fields
.field private lastProgress:I

.field private manager:Lcom/azhon/appupdate/manager/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/azhon/appupdate/service/DownloadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/azhon/appupdate/service/DownloadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/azhon/appupdate/service/DownloadService;->Companion:Lcom/azhon/appupdate/service/DownloadService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$getManager$p(Lcom/azhon/appupdate/service/DownloadService;)Lcom/azhon/appupdate/manager/DownloadManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    return-object p0
.end method

.method private final checkApkMd5()Z
    .locals 5

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v2, 0x0

    const-string v3, "manager"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    sget-object v1, Lcom/azhon/appupdate/util/FileUtil;->Companion:Lcom/azhon/appupdate/util/FileUtil$Companion;

    invoke-virtual {v1, v0}, Lcom/azhon/appupdate/util/FileUtil$Companion;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkMD5()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final declared-synchronized download()V
    .locals 8

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getDownloadState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "DownloadService"

    const-string v2, "Currently downloading, please download again!"

    invoke-virtual {v0, v1, v2}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_2

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getHttpManager()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    move-result-object v0

    if-nez v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_3

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    new-instance v2, Lcom/azhon/appupdate/manager/HttpDownloadManager;

    iget-object v3, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v3, :cond_4

    const-string v3, "manager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    invoke-virtual {v3}, Lcom/azhon/appupdate/manager/DownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/azhon/appupdate/manager/HttpDownloadManager;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    invoke-virtual {v0, v2}, Lcom/azhon/appupdate/manager/DownloadManager;->setHttpManager(Lcom/azhon/appupdate/base/BaseHttpDownloadManager;)V

    .line 93
    :cond_5
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v3, Lkotlinx/coroutines/CoroutineName;

    const-string v4, "app-update-coroutine"

    invoke-direct {v3, v4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v0, Lcom/azhon/appupdate/service/DownloadService$download$1;

    invoke-direct {v0, p0, v1}, Lcom/azhon/appupdate/service/DownloadService$download$1;-><init>(Lcom/azhon/appupdate/service/DownloadService;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 105
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_6

    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v1, v0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/azhon/appupdate/manager/DownloadManager;->setDownloadState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final init()V
    .locals 5

    .line 50
    sget-object v0, Lcom/azhon/appupdate/manager/DownloadManager;->Companion:Lcom/azhon/appupdate/manager/DownloadManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    const-string v2, "DownloadService"

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "An exception occurred by DownloadManager=null,please check your code!"

    invoke-virtual {v0, v2, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    iput-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    .line 56
    sget-object v0, Lcom/azhon/appupdate/util/FileUtil;->Companion:Lcom/azhon/appupdate/util/FileUtil$Companion;

    iget-object v3, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const-string v4, "manager"

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/azhon/appupdate/manager/DownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/azhon/appupdate/util/FileUtil$Companion;->createDirDirectory(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/azhon/appupdate/util/NotificationUtil;->Companion:Lcom/azhon/appupdate/util/NotificationUtil$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->notificationEnable(Landroid/content/Context;)Z

    move-result v0

    .line 59
    sget-object v3, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    if-eqz v0, :cond_2

    const-string v0, "Notification switch status: opened"

    goto :goto_0

    :cond_2
    const-string v0, " Notification switch status: closed"

    :goto_0
    invoke-virtual {v3, v2, v0}, Lcom/azhon/appupdate/util/LogUtil$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/azhon/appupdate/service/DownloadService;->checkApkMd5()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v3, "Apk already exist and install it directly."

    invoke-virtual {v0, v2, v3}, Lcom/azhon/appupdate/util/LogUtil$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2}, Lcom/azhon/appupdate/manager/DownloadManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getApkName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/azhon/appupdate/service/DownloadService;->done(Ljava/io/File;)V

    goto :goto_2

    .line 68
    :cond_5
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "Apk don\'t exist will start download."

    invoke-virtual {v0, v2, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/azhon/appupdate/service/DownloadService;->download()V

    :goto_2
    return-void
.end method

.method private final releaseResources()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    const-string v2, "manager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getHttpManager()Lcom/azhon/appupdate/base/BaseHttpDownloadManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/azhon/appupdate/base/BaseHttpDownloadManager;->release()V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->release$appupdate_release()V

    .line 186
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 162
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "DownloadService"

    const-string v2, "download cancel"

    invoke-virtual {v0, v1, v2}, Lcom/azhon/appupdate/util/LogUtil$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    const-string v2, "manager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/azhon/appupdate/manager/DownloadManager;->setDownloadState(Z)V

    .line 164
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getShowNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lcom/azhon/appupdate/util/NotificationUtil;->Companion:Lcom/azhon/appupdate/util/NotificationUtil$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->cancelNotification(Landroid/content/Context;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 195
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/azhon/appupdate/listener/OnDownloadListener;

    .line 167
    invoke-interface {v1}, Lcom/azhon/appupdate/listener/OnDownloadListener;->cancel()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public done(Ljava/io/File;)V
    .locals 11

    const-string v0, "apk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apk downloaded to "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadService"

    invoke-virtual {v0, v2, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    const-string v2, "manager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/azhon/appupdate/manager/DownloadManager;->setDownloadState(Z)V

    .line 144
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getShowNotification()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_4

    .line 145
    :cond_2
    sget-object v4, Lcom/azhon/appupdate/util/NotificationUtil;->Companion:Lcom/azhon/appupdate/util/NotificationUtil$Companion;

    .line 146
    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getSmallIcon()I

    move-result v6

    .line 147
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/azhon/appupdate/R$string;->download_completed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "resources.getString(R.string.download_completed)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/azhon/appupdate/R$string;->click_hint:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "resources.getString(R.string.click_hint)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/azhon/appupdate/config/Constant;->INSTANCE:Lcom/azhon/appupdate/config/Constant;

    invoke-virtual {v0}, Lcom/azhon/appupdate/config/Constant;->getAUTHORITIES()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, p1

    .line 145
    invoke-virtual/range {v4 .. v10}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->showDoneNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getJumpInstallPage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 153
    sget-object v0, Lcom/azhon/appupdate/util/ApkUtil;->Companion:Lcom/azhon/appupdate/util/ApkUtil$Companion;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    sget-object v4, Lcom/azhon/appupdate/config/Constant;->INSTANCE:Lcom/azhon/appupdate/config/Constant;

    invoke-virtual {v4}, Lcom/azhon/appupdate/config/Constant;->getAUTHORITIES()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4, p1}, Lcom/azhon/appupdate/util/ApkUtil$Companion;->installApk(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/azhon/appupdate/listener/OnDownloadListener;

    .line 155
    invoke-interface {v1, p1}, Lcom/azhon/appupdate/listener/OnDownloadListener;->done(Ljava/io/File;)V

    goto :goto_1

    .line 158
    :cond_8
    invoke-direct {p0}, Lcom/azhon/appupdate/service/DownloadService;->releaseResources()V

    return-void
.end method

.method public downloading(II)V
    .locals 12

    .line 124
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    const-string v2, "manager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getShowNotification()Z

    move-result v0

    if-eqz v0, :cond_5

    int-to-double v3, p2

    int-to-double v5, p1

    .line 125
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v11, v3

    .line 126
    iget v0, p0, Lcom/azhon/appupdate/service/DownloadService;->lastProgress:I

    if-ne v11, v0, :cond_1

    return-void

    .line 127
    :cond_1
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloading max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --- progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadService"

    invoke-virtual {v0, v4, v3}, Lcom/azhon/appupdate/util/LogUtil$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput v11, p0, Lcom/azhon/appupdate/service/DownloadService;->lastProgress:I

    if-gez v11, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 130
    sget-object v5, Lcom/azhon/appupdate/util/NotificationUtil;->Companion:Lcom/azhon/appupdate/util/NotificationUtil$Companion;

    .line 131
    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getSmallIcon()I

    move-result v7

    .line 132
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/azhon/appupdate/R$string;->start_downloading:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "resources.getString(R.string.start_downloading)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 v10, -0x1

    goto :goto_1

    :cond_4
    const/16 v0, 0x64

    const/16 v10, 0x64

    .line 130
    :goto_1
    invoke-virtual/range {v5 .. v11}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->showProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 191
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/azhon/appupdate/listener/OnDownloadListener;

    .line 136
    invoke-interface {v1, p1, p2}, Lcom/azhon/appupdate/listener/OnDownloadListener;->downloading(II)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "download error: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadService"

    invoke-virtual {v0, v2, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    const-string v2, "manager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/azhon/appupdate/manager/DownloadManager;->setDownloadState(Z)V

    .line 173
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getShowNotification()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Lcom/azhon/appupdate/util/NotificationUtil;->Companion:Lcom/azhon/appupdate/util/NotificationUtil$Companion;

    .line 175
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Lcom/azhon/appupdate/manager/DownloadManager;->getSmallIcon()I

    move-result v4

    .line 176
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/azhon/appupdate/R$string;->download_error:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resources.getString(R.string.download_error)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/azhon/appupdate/R$string;->continue_downloading:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "resources.getString(R.string.continue_downloading)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->showErrorNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 197
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/azhon/appupdate/listener/OnDownloadListener;

    .line 180
    invoke-interface {v1, p1}, Lcom/azhon/appupdate/listener/OnDownloadListener;->error(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/azhon/appupdate/service/DownloadService;->init()V

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public start()V
    .locals 8

    .line 109
    sget-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const-string v1, "DownloadService"

    const-string v2, "download start"

    invoke-virtual {v0, v1, v2}, Lcom/azhon/appupdate/util/LogUtil$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    const/4 v1, 0x0

    const-string v2, "manager"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getShowBgdToast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v3, Lcom/azhon/appupdate/R$string;->background_downloading:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager;->getShowNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    sget-object v0, Lcom/azhon/appupdate/util/NotificationUtil;->Companion:Lcom/azhon/appupdate/util/NotificationUtil$Companion;

    .line 115
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    invoke-virtual {v4}, Lcom/azhon/appupdate/manager/DownloadManager;->getSmallIcon()I

    move-result v4

    .line 116
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/azhon/appupdate/R$string;->start_download:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resources.getString(R.string.start_download)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/azhon/appupdate/service/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/azhon/appupdate/R$string;->start_download_hint:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "resources.getString(R.string.start_download_hint)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/azhon/appupdate/util/NotificationUtil$Companion;->showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/azhon/appupdate/service/DownloadService;->manager:Lcom/azhon/appupdate/manager/DownloadManager;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->getOnDownloadListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 189
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/azhon/appupdate/listener/OnDownloadListener;

    .line 120
    invoke-interface {v1}, Lcom/azhon/appupdate/listener/OnDownloadListener;->start()V

    goto :goto_1

    :cond_6
    return-void
.end method
