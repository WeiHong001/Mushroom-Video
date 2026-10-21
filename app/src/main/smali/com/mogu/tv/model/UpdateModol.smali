.class public final Lcom/mogu/tv/model/UpdateModol;
.super Ljava/lang/Object;
.source "UpdateModol.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/mogu/tv/model/UpdateModol;",
        "",
        "()V",
        "apksize",
        "",
        "getApksize",
        "()Ljava/lang/String;",
        "setApksize",
        "(Ljava/lang/String;)V",
        "force",
        "",
        "getForce",
        "()I",
        "setForce",
        "(I)V",
        "text",
        "getText",
        "setText",
        "url",
        "getUrl",
        "setUrl",
        "version",
        "getVersion",
        "setVersion",
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
.field private apksize:Ljava/lang/String;

.field private force:I

.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->text:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->version:Ljava/lang/String;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/mogu/tv/model/UpdateModol;->force:I

    .line 7
    iput-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->url:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->apksize:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApksize()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->apksize:Ljava/lang/String;

    return-object v0
.end method

.method public final getForce()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/mogu/tv/model/UpdateModol;->force:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mogu/tv/model/UpdateModol;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setApksize(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/UpdateModol;->apksize:Ljava/lang/String;

    return-void
.end method

.method public final setForce(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/mogu/tv/model/UpdateModol;->force:I

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/mogu/tv/model/UpdateModol;->text:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/UpdateModol;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/mogu/tv/model/UpdateModol;->version:Ljava/lang/String;

    return-void
.end method
