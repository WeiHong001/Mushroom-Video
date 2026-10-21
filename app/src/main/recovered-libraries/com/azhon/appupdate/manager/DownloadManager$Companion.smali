.class public final Lcom/azhon/appupdate/manager/DownloadManager$Companion;
.super Ljava/lang/Object;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azhon/appupdate/manager/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/azhon/appupdate/manager/DownloadManager$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "instance",
        "Lcom/azhon/appupdate/manager/DownloadManager;",
        "getInstance",
        "builder",
        "Lcom/azhon/appupdate/manager/DownloadManager$Builder;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$default(Lcom/azhon/appupdate/manager/DownloadManager$Companion;Lcom/azhon/appupdate/manager/DownloadManager$Builder;ILjava/lang/Object;)Lcom/azhon/appupdate/manager/DownloadManager;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/azhon/appupdate/manager/DownloadManager$Companion;->getInstance(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInstance(Lcom/azhon/appupdate/manager/DownloadManager$Builder;)Lcom/azhon/appupdate/manager/DownloadManager;
    .locals 2

    .line 36
    invoke-static {}, Lcom/azhon/appupdate/manager/DownloadManager;->access$getInstance$cp()Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 38
    :cond_0
    new-instance v1, Lcom/azhon/appupdate/manager/DownloadManager;

    invoke-direct {v1, p1, v0}, Lcom/azhon/appupdate/manager/DownloadManager;-><init>(Lcom/azhon/appupdate/manager/DownloadManager$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lcom/azhon/appupdate/manager/DownloadManager;->access$setInstance$cp(Lcom/azhon/appupdate/manager/DownloadManager;)V

    .line 40
    :cond_1
    invoke-static {}, Lcom/azhon/appupdate/manager/DownloadManager;->access$getInstance$cp()Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
