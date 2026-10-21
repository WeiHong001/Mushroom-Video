.class public final Lcom/mogu/tv/model/AllAdsModelKt;
.super Ljava/lang/Object;
.source "AllAdsModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0008\u0012\u0004\u0012\u00020\u00060\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "searchLeft",
        "",
        "target",
        "presum",
        "",
        "getRandomAd",
        "Lcom/mogu/tv/model/AllAdsModel$Item;",
        "",
        "app_mogushareRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            ">;)",
            "Lcom/mogu/tv/model/AllAdsModel$Item;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 40
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/AllAdsModel$Item;

    return-object p0

    .line 42
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 43
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {v4}, Lcom/mogu/tv/model/AllAdsModel$Item;->getWeight()I

    move-result v4

    aput v4, v3, v2

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v4, :cond_2

    .line 46
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {v6}, Lcom/mogu/tv/model/AllAdsModel$Item;->getWeight()I

    move-result v6

    if-nez v6, :cond_1

    .line 47
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {v6, v1}, Lcom/mogu/tv/model/AllAdsModel$Item;->setWeight(I)V

    :cond_1
    add-int/lit8 v6, v5, -0x1

    .line 49
    aget v6, v3, v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {v7}, Lcom/mogu/tv/model/AllAdsModel$Item;->getWeight()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    :cond_2
    new-instance v2, Lkotlin/ranges/IntRange;

    sub-int/2addr v0, v1

    aget v0, v3, v0

    invoke-direct {v2, v1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v0

    .line 52
    invoke-static {v0, v3}, Lcom/mogu/tv/model/AllAdsModelKt;->searchLeft(I[I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/AllAdsModel$Item;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final searchLeft(I[I)I
    .locals 4

    const-string v0, "presum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    sub-int v2, v0, v1

    .line 60
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 61
    aget v3, p1, v2

    if-lt v3, p0, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
