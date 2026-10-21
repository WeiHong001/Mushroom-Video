.class public final Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;
.super Lcom/azhon/appupdate/base/bean/DownloadStatus;
.source "DownloadStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/azhon/appupdate/base/bean/DownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Downloading"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;",
        "Lcom/azhon/appupdate/base/bean/DownloadStatus;",
        "max",
        "",
        "progress",
        "(II)V",
        "getMax",
        "()I",
        "getProgress",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
.field private final max:I

.field private final progress:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/azhon/appupdate/base/bean/DownloadStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    iput p2, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;IIILjava/lang/Object;)Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->copy(II)Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    return v0
.end method

.method public final copy(II)Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;
    .locals 1

    new-instance v0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    invoke-direct {v0, p1, p2}, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;

    iget v1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    iget v3, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    iget p1, p1, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMax()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading(max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/azhon/appupdate/base/bean/DownloadStatus$Downloading;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
