.class public final Lcom/mogu/tv/model/SearchHot;
.super Ljava/lang/Object;
.source "SearchHot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/model/SearchHot;",
        "",
        "item",
        "",
        "rank",
        "",
        "(Ljava/lang/String;I)V",
        "getItem",
        "()Ljava/lang/String;",
        "setItem",
        "(Ljava/lang/String;)V",
        "getRank",
        "()I",
        "setRank",
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
.field private item:Ljava/lang/String;

.field private rank:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/SearchHot;->item:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/mogu/tv/model/SearchHot;->rank:I

    return-void
.end method


# virtual methods
.method public final getItem()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/SearchHot;->item:Ljava/lang/String;

    return-object v0
.end method

.method public final getRank()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mogu/tv/model/SearchHot;->rank:I

    return v0
.end method

.method public final setItem(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/mogu/tv/model/SearchHot;->item:Ljava/lang/String;

    return-void
.end method

.method public final setRank(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/mogu/tv/model/SearchHot;->rank:I

    return-void
.end method
