.class public final Lcom/mogu/tv/model/PianKuModel;
.super Ljava/lang/Object;
.source "PianKuModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/mogu/tv/model/PianKuModel;",
        "",
        "()V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "isSelect",
        "",
        "()Z",
        "setSelect",
        "(Z)V",
        "name",
        "getName",
        "setName",
        "requestKey",
        "getRequestKey",
        "setRequestKey",
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
.field private id:Ljava/lang/String;

.field private isSelect:Z

.field private name:Ljava/lang/String;

.field private requestKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/mogu/tv/model/PianKuModel;->requestKey:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/mogu/tv/model/PianKuModel;->id:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/mogu/tv/model/PianKuModel;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mogu/tv/model/PianKuModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mogu/tv/model/PianKuModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestKey()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mogu/tv/model/PianKuModel;->requestKey:Ljava/lang/String;

    return-object v0
.end method

.method public final isSelect()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/mogu/tv/model/PianKuModel;->isSelect:Z

    return v0
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/mogu/tv/model/PianKuModel;->id:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/mogu/tv/model/PianKuModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRequestKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/mogu/tv/model/PianKuModel;->requestKey:Ljava/lang/String;

    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mogu/tv/model/PianKuModel;->isSelect:Z

    return-void
.end method
