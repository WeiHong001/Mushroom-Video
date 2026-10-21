.class public final Lcom/mogu/tv/model/UploadImage;
.super Ljava/lang/Object;
.source "UploadImage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0008\"\u0004\u0008\u000b\u0010\u0005R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\"\u0004\u0008\u0014\u0010\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/mogu/tv/model/UploadImage;",
        "",
        "()V",
        "path",
        "",
        "(Ljava/lang/String;)V",
        "imageKey",
        "getImageKey",
        "()Ljava/lang/String;",
        "setImageKey",
        "getPath",
        "setPath",
        "progress",
        "",
        "getProgress",
        "()I",
        "setProgress",
        "(I)V",
        "sourcePath",
        "getSourcePath",
        "setSourcePath",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private imageKey:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private progress:I

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mogu/tv/model/UploadImage;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImageKey()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/UploadImage;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/UploadImage;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mogu/tv/model/UploadImage;->progress:I

    return v0
.end method

.method public final getSourcePath()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/UploadImage;->sourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public final setImageKey(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/mogu/tv/model/UploadImage;->imageKey:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/UploadImage;->path:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mogu/tv/model/UploadImage;->progress:I

    return-void
.end method

.method public final setSourcePath(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mogu/tv/model/UploadImage;->sourcePath:Ljava/lang/String;

    return-void
.end method
