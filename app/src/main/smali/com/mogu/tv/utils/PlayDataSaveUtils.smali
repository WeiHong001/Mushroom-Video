.class public final Lcom/mogu/tv/utils/PlayDataSaveUtils;
.super Ljava/lang/Object;
.source "PlayDataSaveUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayDataSaveUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayDataSaveUtils.kt\ncom/mogu/tv/utils/PlayDataSaveUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1851#2,2:62\n*S KotlinDebug\n*F\n+ 1 PlayDataSaveUtils.kt\ncom/mogu/tv/utils/PlayDataSaveUtils\n*L\n52#1:62,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mogu/tv/utils/PlayDataSaveUtils;",
        "",
        "()V",
        "staticPlayData",
        "Lcom/mogu/tv/model/SavePlayVod;",
        "getPlayData",
        "Lcom/mogu/tv/model/SavePlayVod$VodData;",
        "id",
        "",
        "savePlayData",
        "",
        "progress",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/mogu/tv/utils/PlayDataSaveUtils;

.field private static staticPlayData:Lcom/mogu/tv/model/SavePlayVod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/utils/PlayDataSaveUtils;

    invoke-direct {v0}, Lcom/mogu/tv/utils/PlayDataSaveUtils;-><init>()V

    sput-object v0, Lcom/mogu/tv/utils/PlayDataSaveUtils;->INSTANCE:Lcom/mogu/tv/utils/PlayDataSaveUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlayData(Ljava/lang/String;)Lcom/mogu/tv/model/SavePlayVod$VodData;
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/mogu/tv/utils/PlayDataSaveUtils;->staticPlayData:Lcom/mogu/tv/model/SavePlayVod;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getSAVE_PLAYDATA()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    const-class v2, Lcom/mogu/tv/model/SavePlayVod;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/SavePlayVod;

    .line 48
    sput-object v0, Lcom/mogu/tv/utils/PlayDataSaveUtils;->staticPlayData:Lcom/mogu/tv/model/SavePlayVod;

    :cond_0
    const/4 v0, 0x0

    .line 51
    sget-object v1, Lcom/mogu/tv/utils/PlayDataSaveUtils;->staticPlayData:Lcom/mogu/tv/model/SavePlayVod;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mogu/tv/model/SavePlayVod;->getDatas()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 52
    check-cast v1, Ljava/lang/Iterable;

    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/model/SavePlayVod$VodData;

    .line 53
    invoke-virtual {v2}, Lcom/mogu/tv/model/SavePlayVod$VodData;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 59
    :cond_3
    move-object p1, v0

    check-cast p1, Lcom/mogu/tv/model/SavePlayVod$VodData;

    return-object v0
.end method

.method public final savePlayData(Ljava/lang/String;J)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getSAVE_PLAYDATA()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    const-class v2, Lcom/mogu/tv/model/SavePlayVod;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/mogu/tv/model/SavePlayVod;

    invoke-direct {v0}, Lcom/mogu/tv/model/SavePlayVod;-><init>()V

    .line 23
    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/mogu/tv/model/SavePlayVod;

    invoke-virtual {v2}, Lcom/mogu/tv/model/SavePlayVod;->getDatas()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mogu/tv/model/SavePlayVod;->setDatas(Ljava/util/ArrayList;)V

    .line 26
    :cond_4
    new-instance v3, Lcom/mogu/tv/model/SavePlayVod$VodData;

    invoke-direct {v3}, Lcom/mogu/tv/model/SavePlayVod$VodData;-><init>()V

    .line 27
    invoke-virtual {v3, p1}, Lcom/mogu/tv/model/SavePlayVod$VodData;->setId(Ljava/lang/String;)V

    .line 28
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/mogu/tv/model/SavePlayVod$VodData;->setProgress(Ljava/lang/Long;)V

    .line 29
    invoke-virtual {v2}, Lcom/mogu/tv/model/SavePlayVod;->getDatas()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {v2}, Lcom/mogu/tv/model/SavePlayVod;->getDatas()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_8

    .line 31
    invoke-virtual {v2}, Lcom/mogu/tv/model/SavePlayVod;->getDatas()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_7
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "get(indexOf ?: 0)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/model/SavePlayVod$VodData;

    .line 33
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/SavePlayVod$VodData;->setProgress(Ljava/lang/Long;)V

    goto :goto_4

    .line 35
    :cond_8
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_9
    :goto_4
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object p3, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {p3}, Lcom/mogu/tv/common/cache/CacheKey;->getSAVE_PLAYDATA()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "toJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    sput-object v2, Lcom/mogu/tv/utils/PlayDataSaveUtils;->staticPlayData:Lcom/mogu/tv/model/SavePlayVod;

    return-void
.end method
