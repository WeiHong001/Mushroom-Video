.class public final Lcom/mogu/tv/model/UserList;
.super Ljava/lang/Object;
.source "UserList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/UserList$User;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u000eB\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/model/UserList;",
        "",
        "list",
        "",
        "Lcom/mogu/tv/model/UserList$User;",
        "total",
        "",
        "(Ljava/util/List;I)V",
        "getList",
        "()Ljava/util/List;",
        "getTotal",
        "()I",
        "setTotal",
        "(I)V",
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
            "Lcom/mogu/tv/model/UserList$User;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/UserList$User;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mogu/tv/model/UserList;->list:Ljava/util/List;

    .line 8
    iput p2, p0, Lcom/mogu/tv/model/UserList;->total:I

    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/UserList$User;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/UserList;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mogu/tv/model/UserList;->total:I

    return v0
.end method

.method public final setTotal(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/mogu/tv/model/UserList;->total:I

    return-void
.end method
