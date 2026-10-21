.class public final Lcom/mogu/tv/model/AllAdsModel$Item;
.super Ljava/lang/Object;
.source "AllAdsModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/AllAdsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/mogu/tv/model/AllAdsModel$Item;",
        "",
        "action",
        "",
        "comment",
        "file",
        "id",
        "",
        "name",
        "weight",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V",
        "getAction",
        "()Ljava/lang/String;",
        "getComment",
        "getFile",
        "getId",
        "()I",
        "getName",
        "getWeight",
        "setWeight",
        "(I)V",
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
.field private final action:Ljava/lang/String;

.field private final comment:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private final id:I

.field private final name:Ljava/lang/String;

.field private weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->action:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->comment:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->file:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->id:I

    .line 29
    iput-object p5, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->name:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->weight:I

    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getFile()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->file:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->id:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->weight:I

    return v0
.end method

.method public final setWeight(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/mogu/tv/model/AllAdsModel$Item;->weight:I

    return-void
.end method
