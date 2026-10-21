.class public final Lcom/mogu/tv/model/ShortStarVideoLists$Item;
.super Ljava/lang/Object;
.source "ShortStarVideoLists.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/model/ShortStarVideoLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mogu/tv/model/ShortStarVideoLists$Item;",
        "",
        "vlog",
        "Lcom/mogu/tv/model/ShortVideoList$Data;",
        "(Lcom/mogu/tv/model/ShortVideoList$Data;)V",
        "getVlog",
        "()Lcom/mogu/tv/model/ShortVideoList$Data;",
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
.field private final vlog:Lcom/mogu/tv/model/ShortVideoList$Data;


# direct methods
.method public constructor <init>(Lcom/mogu/tv/model/ShortVideoList$Data;)V
    .locals 1

    const-string/jumbo v0, "vlog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mogu/tv/model/ShortStarVideoLists$Item;->vlog:Lcom/mogu/tv/model/ShortVideoList$Data;

    return-void
.end method


# virtual methods
.method public final getVlog()Lcom/mogu/tv/model/ShortVideoList$Data;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/ShortStarVideoLists$Item;->vlog:Lcom/mogu/tv/model/ShortVideoList$Data;

    return-object v0
.end method
