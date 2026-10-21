.class public final Lcom/mogu/tv/model/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/SearchResult$Item;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001:\u0001\u0016B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/mogu/tv/model/SearchResult;",
        "",
        "code",
        "",
        "limit",
        "list",
        "",
        "Lcom/mogu/tv/model/SearchResult$Item;",
        "msg",
        "",
        "pagecount",
        "total",
        "(IILjava/util/List;Ljava/lang/String;II)V",
        "getCode",
        "()I",
        "getLimit",
        "getList",
        "()Ljava/util/List;",
        "getMsg",
        "()Ljava/lang/String;",
        "getPagecount",
        "getTotal",
        "Item",
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
.field private final code:I

.field private final limit:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/SearchResult$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final msg:Ljava/lang/String;

.field private final pagecount:I

.field private final total:I


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/SearchResult$Item;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/mogu/tv/model/SearchResult;->code:I

    .line 8
    iput p2, p0, Lcom/mogu/tv/model/SearchResult;->limit:I

    .line 9
    iput-object p3, p0, Lcom/mogu/tv/model/SearchResult;->list:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/mogu/tv/model/SearchResult;->msg:Ljava/lang/String;

    .line 11
    iput p5, p0, Lcom/mogu/tv/model/SearchResult;->pagecount:I

    .line 12
    iput p6, p0, Lcom/mogu/tv/model/SearchResult;->total:I

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/mogu/tv/model/SearchResult;->code:I

    return v0
.end method

.method public final getLimit()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mogu/tv/model/SearchResult;->limit:I

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/SearchResult$Item;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/SearchResult;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/SearchResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getPagecount()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/mogu/tv/model/SearchResult;->pagecount:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/mogu/tv/model/SearchResult;->total:I

    return v0
.end method
