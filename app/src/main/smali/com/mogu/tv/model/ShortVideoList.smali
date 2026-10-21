.class public final Lcom/mogu/tv/model/ShortVideoList;
.super Ljava/lang/Object;
.source "ShortVideoList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/ShortVideoList$Data;,
        Lcom/mogu/tv/model/ShortVideoList$User;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002\u000c\rB\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShortVideoList;",
        "",
        "list",
        "",
        "Lcom/mogu/tv/model/ShortVideoList$Data;",
        "total",
        "",
        "(Ljava/util/List;I)V",
        "getList",
        "()Ljava/util/List;",
        "getTotal",
        "()I",
        "Data",
        "User",
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
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/ShortVideoList$Data;",
            ">;"
        }
    .end annotation
.end field

.field private final total:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/ShortVideoList$Data;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/mogu/tv/model/ShortVideoList;->list:Ljava/util/List;

    .line 5
    iput p2, p0, Lcom/mogu/tv/model/ShortVideoList;->total:I

    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/ShortVideoList$Data;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/mogu/tv/model/ShortVideoList;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/mogu/tv/model/ShortVideoList;->total:I

    return v0
.end method
