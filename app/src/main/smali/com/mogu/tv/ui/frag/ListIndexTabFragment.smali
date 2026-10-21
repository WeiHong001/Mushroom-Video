.class public final Lcom/mogu/tv/ui/frag/ListIndexTabFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "ListIndexTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragmentListindexBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListIndexTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListIndexTabFragment.kt\ncom/mogu/tv/ui/frag/ListIndexTabFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,159:1\n1851#2:160\n1851#2,2:161\n1852#2:163\n1851#2,2:164\n1851#2,2:166\n1851#2,2:168\n*S KotlinDebug\n*F\n+ 1 ListIndexTabFragment.kt\ncom/mogu/tv/ui/frag/ListIndexTabFragment\n*L\n84#1:160\n86#1:161,2\n84#1:163\n101#1:164,2\n134#1:166,2\n27#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001b\u001a\u00020\u0019H\u0016J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0008\u0010\u001f\u001a\u00020\u0019H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ListIndexTabFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragmentListindexBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/VideoTypesListAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/VideoTypesListAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/VideoTypesListAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/VideoUiLists;",
        "Lkotlin/collections/ArrayList;",
        "getMData",
        "()Ljava/util/ArrayList;",
        "setMData",
        "(Ljava/util/ArrayList;)V",
        "mServerCount",
        "",
        "getMServerCount",
        "()I",
        "setMServerCount",
        "(I)V",
        "getServerData",
        "",
        "initData",
        "initView",
        "refreshServerTypeData",
        "typeId",
        "",
        "showBanner",
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
.field private mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoUiLists;",
            ">;"
        }
    .end annotation
.end field

.field private mServerCount:I


# direct methods
.method public static synthetic $r8$lambda$BqekvdolgdpOw6x0WPRmq-VbkuI(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->initView$lambda-2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$P3yKON6lzd2Xcg9AbXn4CgUcfck(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->initView$lambda-3(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y1w__TmLrTDKS7-8aJmR8S6BQUY(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->initView$lambda-1(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j1yckRsnJZAef-vvtubn_GSP9LA(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->showBanner$lambda-6$lambda-4(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sd77PZ00O6OTw5TG5yJCnXCoU9U(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->showBanner$lambda-6$lambda-5(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mServerCount:I

    return-void
.end method

.method private final getServerData()V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/model/VideoUiLists;

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    const-string v4, "limit"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "page"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getTypeId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "types"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v3, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v4, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$getServerData$1$1;

    invoke-direct {v4, p0, v1}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$getServerData$1$1;-><init>(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/mogu/tv/model/VideoUiLists;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v3, v2, v4}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final initView$lambda-1(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/VideoUiLists;

    .line 28
    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    .line 29
    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    .line 30
    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getServerData()V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.mogu.tv.model.VideoUiLists"

    .line 40
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/mogu/tv/model/VideoUiLists;

    return-void
.end method

.method private static final initView$lambda-3(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f1

    if-ne p1, v0, :cond_1

    .line 45
    sget-object p1, Lcom/kotlin/basiclib/utils/ClickUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ClickUtils;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/utils/ClickUtils;->isDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/VideoUiLists;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getTypeId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->refreshServerTypeData(Ljava/lang/String;)V

    const p0, 0x7f0a0198

    .line 49
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/mogu/tv/utils/AnimUtil;->animRolateAndScale(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final refreshServerTypeData(Ljava/lang/String;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/model/VideoUiLists;

    .line 102
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    .line 104
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    .line 105
    invoke-virtual {v1, v3}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    .line 107
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 108
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    const-string v4, "limit"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "page"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getTypeId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "types"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v3, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v4, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$refreshServerTypeData$1$1;

    invoke-direct {v4, p0, v1}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$refreshServerTypeData$1$1;-><init>(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/mogu/tv/model/VideoUiLists;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v3, v2, v4}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final showBanner()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;->banner:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;

    .line 62
    new-instance v1, Lcom/mogu/tv/adapter/ImageBannerAdapter;

    .line 63
    sget-object v2, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v2}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mogu/tv/model/AllAdsModel;->getBanner()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-direct {v1, v2}, Lcom/mogu/tv/adapter/ImageBannerAdapter;-><init>(Ljava/util/List;)V

    .line 65
    new-instance v2, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V

    invoke-virtual {v1, v2}, Lcom/mogu/tv/adapter/ImageBannerAdapter;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)V

    const-wide/16 v2, 0x1194

    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/youth/banner/Banner;->setLoopTime(J)Lcom/youth/banner/Banner;

    const/high16 v2, 0x41700000    # 15.0f

    .line 71
    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setBannerRound(F)Lcom/youth/banner/Banner;

    .line 72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 73
    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setBannerRound2(F)Lcom/youth/banner/Banner;

    .line 75
    :cond_1
    new-instance v2, Lcom/youth/banner/indicator/CircleIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/youth/banner/indicator/CircleIndicator;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/youth/banner/indicator/Indicator;

    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;)Lcom/youth/banner/Banner;

    .line 76
    check-cast v1, Lcom/youth/banner/adapter/BannerAdapter;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 77
    new-instance v1, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda4;-><init>(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/Banner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private static final showBanner$lambda-6$lambda-4(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListIndexTabFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V
    .locals 0

    const-string p2, "$imageBannerAdapter"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p3}, Lcom/mogu/tv/adapter/ImageBannerAdapter;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/AllAdsModel$Item;

    .line 67
    sget-object p2, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p3, "requireActivity()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    const-string p3, ""

    :cond_1
    invoke-virtual {p2, p1, p3}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUrlPraseJump(Landroid/app/Activity;Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->clickAd(Ljava/lang/String;)V

    return-void
.end method

.method private static final showBanner$lambda-6$lambda-5(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragmentListindexBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragmentListindexBinding;->banner:Lcom/youth/banner/Banner;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/VideoTypesListAdapter;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    return-object v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoUiLists;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMServerCount()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mServerCount:I

    return v0
.end method

.method public initData()V
    .locals 6

    .line 82
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "parentId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    sget-object v1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v1}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    .line 160
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/model/VideoTypes$Types;

    .line 85
    invoke-virtual {v2}, Lcom/mogu/tv/model/VideoTypes$Types;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v2}, Lcom/mogu/tv/model/VideoTypes$Types;->getChild()Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 161
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/model/VideoTypes$Child;

    .line 87
    new-instance v4, Lcom/mogu/tv/model/VideoUiLists;

    invoke-direct {v4}, Lcom/mogu/tv/model/VideoUiLists;-><init>()V

    .line 88
    invoke-virtual {v3}, Lcom/mogu/tv/model/VideoTypes$Child;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mogu/tv/model/VideoUiLists;->setTypeId(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Lcom/mogu/tv/model/VideoTypes$Child;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/mogu/tv/model/VideoUiLists;->setTypeName(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mServerCount:I

    .line 95
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/mogu/tv/databinding/FragmentListindexBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    :goto_2
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->setNewData(Ljava/util/List;)V

    .line 38
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    sget-object v1, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/ListIndexTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 54
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->showBanner()V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/VideoTypesListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoUiLists;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMServerCount(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/mogu/tv/ui/frag/ListIndexTabFragment;->mServerCount:I

    return-void
.end method
