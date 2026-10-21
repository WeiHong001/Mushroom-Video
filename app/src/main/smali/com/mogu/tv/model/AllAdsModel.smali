.class public final Lcom/mogu/tv/model/AllAdsModel;
.super Ljava/lang/Object;
.source "AllAdsModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/model/AllAdsModel$Item;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008!\u0018\u00002\u00020\u0001:\u0001$B\u00d7\u0001\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0013R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0015R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0015R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0015R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0015\u00a8\u0006%"
    }
    d2 = {
        "Lcom/mogu/tv/model/AllAdsModel;",
        "",
        "activity",
        "",
        "Lcom/mogu/tv/model/AllAdsModel$Item;",
        "appcenter",
        "banner",
        "chatu",
        "cover",
        "listcover",
        "search",
        "pianku",
        "detailssmall",
        "mine",
        "shequ",
        "shortvideoimg",
        "start",
        "homedialog",
        "listchatu",
        "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getActivity",
        "()Ljava/util/List;",
        "getAppcenter",
        "getBanner",
        "getChatu",
        "getCover",
        "getDetailssmall",
        "getHomedialog",
        "getListchatu",
        "getListcover",
        "getMine",
        "getPianku",
        "getSearch",
        "getShequ",
        "getShortvideoimg",
        "getStart",
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
.field private final activity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final appcenter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final chatu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final cover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final detailssmall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final homedialog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final listchatu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final listcover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final pianku:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final search:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final shequ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final shortvideoimg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final start:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "activity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appcenter"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "banner"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatu"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cover"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listcover"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "search"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pianku"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailssmall"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mine"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shequ"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortvideoimg"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "start"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homedialog"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listchatu"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 7
    iput-object v1, v0, Lcom/mogu/tv/model/AllAdsModel;->activity:Ljava/util/List;

    .line 8
    iput-object v2, v0, Lcom/mogu/tv/model/AllAdsModel;->appcenter:Ljava/util/List;

    .line 9
    iput-object v3, v0, Lcom/mogu/tv/model/AllAdsModel;->banner:Ljava/util/List;

    .line 10
    iput-object v4, v0, Lcom/mogu/tv/model/AllAdsModel;->chatu:Ljava/util/List;

    .line 11
    iput-object v5, v0, Lcom/mogu/tv/model/AllAdsModel;->cover:Ljava/util/List;

    .line 12
    iput-object v6, v0, Lcom/mogu/tv/model/AllAdsModel;->listcover:Ljava/util/List;

    .line 13
    iput-object v7, v0, Lcom/mogu/tv/model/AllAdsModel;->search:Ljava/util/List;

    .line 14
    iput-object v8, v0, Lcom/mogu/tv/model/AllAdsModel;->pianku:Ljava/util/List;

    .line 15
    iput-object v9, v0, Lcom/mogu/tv/model/AllAdsModel;->detailssmall:Ljava/util/List;

    .line 16
    iput-object v10, v0, Lcom/mogu/tv/model/AllAdsModel;->mine:Ljava/util/List;

    .line 17
    iput-object v11, v0, Lcom/mogu/tv/model/AllAdsModel;->shequ:Ljava/util/List;

    .line 18
    iput-object v12, v0, Lcom/mogu/tv/model/AllAdsModel;->shortvideoimg:Ljava/util/List;

    .line 19
    iput-object v13, v0, Lcom/mogu/tv/model/AllAdsModel;->start:Ljava/util/List;

    .line 20
    iput-object v14, v0, Lcom/mogu/tv/model/AllAdsModel;->homedialog:Ljava/util/List;

    .line 21
    iput-object v15, v0, Lcom/mogu/tv/model/AllAdsModel;->listchatu:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->activity:Ljava/util/List;

    return-object v0
.end method

.method public final getAppcenter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->appcenter:Ljava/util/List;

    return-object v0
.end method

.method public final getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->banner:Ljava/util/List;

    return-object v0
.end method

.method public final getChatu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->chatu:Ljava/util/List;

    return-object v0
.end method

.method public final getCover()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->cover:Ljava/util/List;

    return-object v0
.end method

.method public final getDetailssmall()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->detailssmall:Ljava/util/List;

    return-object v0
.end method

.method public final getHomedialog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->homedialog:Ljava/util/List;

    return-object v0
.end method

.method public final getListchatu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->listchatu:Ljava/util/List;

    return-object v0
.end method

.method public final getListcover()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->listcover:Ljava/util/List;

    return-object v0
.end method

.method public final getMine()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->mine:Ljava/util/List;

    return-object v0
.end method

.method public final getPianku()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->pianku:Ljava/util/List;

    return-object v0
.end method

.method public final getSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->search:Ljava/util/List;

    return-object v0
.end method

.method public final getShequ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->shequ:Ljava/util/List;

    return-object v0
.end method

.method public final getShortvideoimg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->shortvideoimg:Ljava/util/List;

    return-object v0
.end method

.method public final getStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/mogu/tv/model/AllAdsModel;->start:Ljava/util/List;

    return-object v0
.end method
