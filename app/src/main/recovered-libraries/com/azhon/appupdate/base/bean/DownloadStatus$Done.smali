.class public final Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;
.super Lcom/azhon/appupdate/base/bean/DownloadStatus;
.source "DownloadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azhon/appupdate/base/bean/DownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Done"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;",
        "Lcom/azhon/appupdate/base/bean/DownloadStatus;",
        "apk",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "getApk",
        "()Ljava/io/File;",
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
.field private final apk:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "apk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/azhon/appupdate/base/bean/DownloadStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;->apk:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getApk()Ljava/io/File;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Done;->apk:Ljava/io/File;

    return-object v0
.end method
