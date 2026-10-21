.class public final Lcom/mogu/tv/ui/frag/ListMainFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "ListMainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragmentListmainBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListMainFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListMainFragment.kt\ncom/mogu/tv/ui/frag/ListMainFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n1851#2,2:321\n1851#2,2:323\n1851#2,2:325\n*S KotlinDebug\n*F\n+ 1 ListMainFragment.kt\ncom/mogu/tv/ui/frag/ListMainFragment\n*L\n179#1:321,2\n262#1:323,2\n163#1:325,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\u000bH\u0002J\u0008\u00102\u001a\u00020/H\u0002J\u0008\u00103\u001a\u00020/H\u0016J\u0008\u00104\u001a\u00020/H\u0002J\u0008\u00105\u001a\u00020/H\u0016J\u0008\u00106\u001a\u00020/H\u0016J\u0010\u00107\u001a\u00020/2\u0006\u00108\u001a\u000209H\u0002J\u0008\u0010:\u001a\u00020/H\u0002J\u0008\u0010;\u001a\u00020/H\u0002J\u0008\u0010<\u001a\u00020/H\u0002J\u0010\u0010=\u001a\u00020/2\u0006\u0010>\u001a\u000209H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\u0008\u0012\u0004\u0012\u00020\u001e`\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R*\u0010*\u001a\u0012\u0012\u0004\u0012\u00020+0\u001dj\u0008\u0012\u0004\u0012\u00020+`\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010!\"\u0004\u0008-\u0010#\u00a8\u0006?"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ListMainFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragmentListmainBinding;",
        "()V",
        "adapterGridHome",
        "Lcom/mogu/tv/adapter/HomeGridMenuAdapter;",
        "getAdapterGridHome",
        "()Lcom/mogu/tv/adapter/HomeGridMenuAdapter;",
        "setAdapterGridHome",
        "(Lcom/mogu/tv/adapter/HomeGridMenuAdapter;)V",
        "firstLoadAllList",
        "",
        "getFirstLoadAllList",
        "()Z",
        "setFirstLoadAllList",
        "(Z)V",
        "indexRecomand",
        "Lcom/mogu/tv/model/IndexLables;",
        "getIndexRecomand",
        "()Lcom/mogu/tv/model/IndexLables;",
        "setIndexRecomand",
        "(Lcom/mogu/tv/model/IndexLables;)V",
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
        "menugridData",
        "Lcom/mogu/tv/model/GridUiModel;",
        "getMenugridData",
        "setMenugridData",
        "getNotice",
        "",
        "getServerData",
        "isAll",
        "getUpload24",
        "initData",
        "initLists",
        "initView",
        "onResume",
        "refreshServerTypeData",
        "lablesId",
        "",
        "showBanner",
        "showGridView",
        "showIndexLables",
        "showNoticeMarqueen",
        "text",
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
.field private adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

.field private firstLoadAllList:Z

.field private indexRecomand:Lcom/mogu/tv/model/IndexLables;

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

.field private menugridData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/GridUiModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0pBuAHMHyya5K2O_JTLhQAzvqmE(Lcom/mogu/tv/ui/frag/ListMainFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showBanner$lambda-11$lambda-10(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4LT5SVDpBZNszZ748Aduo2mqZsw(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->initLists$lambda-6(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROaoGlwapselxTpMDuPrCijc3C0(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showBanner$lambda-11$lambda-9(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SoSzRMnS3XfgnjZ3PcMoZRQLth8(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showGridView$lambda-1(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aHFteZDsEBzyOlsPRiWarl-HYvg(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ListMainFragment;->initLists$lambda-4(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5QxDe3s8k_ysXxynOehL7NYjdw(Lcom/mogu/tv/ui/frag/ListMainFragment;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/mogu/tv/ui/frag/ListMainFragment;->initLists$lambda-3(Lcom/mogu/tv/ui/frag/ListMainFragment;Landroid/view/View;IIII)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/mogu/tv/model/IndexLables;

    invoke-direct {v0}, Lcom/mogu/tv/model/IndexLables;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->indexRecomand:Lcom/mogu/tv/model/IndexLables;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/HomeGridMenuAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mServerCount:I

    return-void
.end method

.method public static final synthetic access$getServerData(Lcom/mogu/tv/ui/frag/ListMainFragment;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getServerData(Z)V

    return-void
.end method

.method public static final synthetic access$showNoticeMarqueen(Lcom/mogu/tv/ui/frag/ListMainFragment;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showNoticeMarqueen(Ljava/lang/String;)V

    return-void
.end method

.method private final getNotice()V
    .locals 3

    .line 114
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$getNotice$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$getNotice$1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v2, "notice"

    invoke-virtual {v0, v2, v1}, Lcom/mogu/tv/api/ApiManager;->getMoguConfig(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final getServerData(Z)V
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "labels"

    const-string v1, "page"

    const-string v2, "4"

    const-string v3, "limit"

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mServerCount:I

    .line 262
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 323
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/VideoUiLists;

    .line 263
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 264
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v4}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v6, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v7, Lcom/mogu/tv/ui/frag/ListMainFragment$getServerData$1$1;

    invoke-direct {v7, p0, v4}, Lcom/mogu/tv/ui/frag/ListMainFragment$getServerData$1$1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/VideoUiLists;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v6, v5, v7}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/VideoUiLists;

    .line 293
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 294
    move-object v5, v4

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$getServerData$2$1;

    invoke-direct {v1, p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment$getServerData$2$1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/VideoUiLists;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v4, v1}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    :cond_2
    return-void
.end method

.method private final getUpload24()V
    .locals 2

    .line 68
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$getUpload24$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$getUpload24$1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->get24upload(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->setNewData(Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->setTag(Z)V

    .line 148
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 162
    :cond_6
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_7
    return-void
.end method

.method private static final initLists$lambda-3(Lcom/mogu/tv/ui/frag/ListMainFragment;Landroid/view/View;IIII)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x190

    if-le p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->firstLoadAllList:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->firstLoadAllList:Z

    .line 142
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getServerData(Z)V

    :cond_0
    return-void
.end method

.method private static final initLists$lambda-4(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f1

    if-ne p1, v0, :cond_1

    .line 151
    sget-object p1, Lcom/kotlin/basiclib/utils/ClickUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ClickUtils;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/utils/ClickUtils;->isDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/VideoTypesListAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/VideoUiLists;

    invoke-virtual {p1}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->refreshServerTypeData(Ljava/lang/String;)V

    const p0, 0x7f0a0198

    .line 155
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/mogu/tv/utils/AnimUtil;->animRolateAndScale(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static final initLists$lambda-6(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    .line 325
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/VideoUiLists;

    .line 164
    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    .line 165
    invoke-virtual {v0}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-direct {p0, v1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getServerData(Z)V

    return-void
.end method

.method private final refreshServerTypeData(Ljava/lang/String;)V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 321
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

    .line 180
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    .line 182
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    .line 183
    invoke-virtual {v1, v3}, Lcom/mogu/tv/model/VideoUiLists;->setPage(I)V

    .line 185
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 186
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    const-string v4, "limit"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "page"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v1}, Lcom/mogu/tv/model/VideoUiLists;->getLabelsId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "labels"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v3, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v4, Lcom/mogu/tv/ui/frag/ListMainFragment$refreshServerTypeData$1$1;

    invoke-direct {v4, p0, v1}, Lcom/mogu/tv/ui/frag/ListMainFragment$refreshServerTypeData$1$1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/VideoUiLists;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v3, v2, v4}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final showBanner()V
    .locals 5

    .line 228
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->banner:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;

    .line 230
    new-instance v1, Lcom/mogu/tv/adapter/ImageBannerAdapter;

    .line 231
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

    .line 230
    :goto_0
    invoke-direct {v1, v2}, Lcom/mogu/tv/adapter/ImageBannerAdapter;-><init>(Ljava/util/List;)V

    .line 233
    new-instance v2, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda4;-><init>(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    invoke-virtual {v1, v2}, Lcom/mogu/tv/adapter/ImageBannerAdapter;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)V

    const-wide/16 v2, 0x1194

    .line 238
    invoke-virtual {v0, v2, v3}, Lcom/youth/banner/Banner;->setLoopTime(J)Lcom/youth/banner/Banner;

    const/high16 v2, 0x41700000    # 15.0f

    .line 239
    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setBannerRound(F)Lcom/youth/banner/Banner;

    .line 240
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 241
    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setBannerRound2(F)Lcom/youth/banner/Banner;

    .line 243
    :cond_1
    new-instance v2, Lcom/youth/banner/indicator/CircleIndicator;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/youth/banner/indicator/CircleIndicator;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/youth/banner/indicator/Indicator;

    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;)Lcom/youth/banner/Banner;

    .line 244
    check-cast v1, Lcom/youth/banner/adapter/BannerAdapter;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 245
    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda5;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/Banner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private static final showBanner$lambda-11$lambda-10(Lcom/mogu/tv/ui/frag/ListMainFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->banner:Lcom/youth/banner/Banner;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    :cond_0
    return-void
.end method

.method private static final showBanner$lambda-11$lambda-9(Lcom/mogu/tv/adapter/ImageBannerAdapter;Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/mogu/tv/model/AllAdsModel$Item;I)V
    .locals 0

    const-string p2, "$imageBannerAdapter"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0, p3}, Lcom/mogu/tv/adapter/ImageBannerAdapter;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/AllAdsModel$Item;

    .line 235
    sget-object p2, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 236
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

.method private final showGridView()V
    .locals 10

    .line 78
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    new-instance v7, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo v2, "\u6700\u8fd1\u66f4\u65b0"

    const v3, 0x7f0f00aa

    const-string v4, "pianku"

    const/4 v5, 0x1

    const/16 v6, 0x64

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    new-instance v9, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo v2, "\u5973\u53cb\u6d77\u9078"

    const v3, 0x7f0f00a6

    const-string v4, "nvyou"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    new-instance v9, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo v2, "\u6392\u884c\u699c"

    const v3, 0x7f0f00a7

    const-string v4, "rank"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    new-instance v9, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo v2, "\u81ea\u4e3b\u7cbe\u9078"

    const v3, 0x7f0f00a8

    const-string v4, "selecttag"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    new-instance v9, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo v2, "\u5e94\u7528\u4e2d\u5fc3"

    const v3, 0x7f0f0034

    const-string v4, "appcenter"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    new-instance v9, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo v2, "\u4f18\u60e0\u6d3b\u52d5"

    const v3, 0x7f0f00ad

    const-string v4, "activity"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/mogu/tv/model/GridUiModel;-><init>(Ljava/lang/String;ILjava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rvMenu:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    new-instance v1, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v3}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 93
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/HomeGridMenuAdapter;->setNewData(Ljava/util/List;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/HomeGridMenuAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private static final showGridView$lambda-1(Lcom/mogu/tv/ui/frag/ListMainFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/HomeGridMenuAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/GridUiModel;

    .line 97
    invoke-virtual {p1}, Lcom/mogu/tv/model/GridUiModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "appcenter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/ui/activity/AdCenterAppActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_1
    const-string p2, "nvyou"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 106
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/ui/activity/NvYouActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    const-string p2, "rank"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    const-string p2, "pianku"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 99
    :cond_3
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toPianku(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/GridUiModel;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/model/GridUiModel;->setShowNumber(Z)V

    .line 101
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/GridUiModel;

    const-string/jumbo p3, "\u5168\u90e8\u7247\u5e93"

    invoke-virtual {p1, p3}, Lcom/mogu/tv/model/GridUiModel;->setName(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    invoke-virtual {p0, p2}, Lcom/mogu/tv/adapter/HomeGridMenuAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :sswitch_4
    const-string p2, "activity"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 107
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/ui/activity/ActivityPageActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    const-string p2, "selecttag"

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 109
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/ui/activity/LabelsSelectActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ListMainFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x664766e2 -> :sswitch_5
        -0x62b40cf1 -> :sswitch_4
        -0x3aebd430 -> :sswitch_3
        0x354c2c -> :sswitch_2
        0x6459157 -> :sswitch_1
        0x73de69b6 -> :sswitch_0
    .end sparse-switch
.end method

.method private final showIndexLables()V
    .locals 2

    .line 52
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/frag/ListMainFragment$showIndexLables$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ListMainFragment$showIndexLables$1;-><init>(Lcom/mogu/tv/ui/frag/ListMainFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getIndexLables(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final showNoticeMarqueen(Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->tvSmv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p1, 0x1

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getAdapterGridHome()Lcom/mogu/tv/adapter/HomeGridMenuAdapter;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    return-object v0
.end method

.method public final getFirstLoadAllList()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->firstLoadAllList:Z

    return v0
.end method

.method public final getIndexRecomand()Lcom/mogu/tv/model/IndexLables;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->indexRecomand:Lcom/mogu/tv/model/IndexLables;

    return-object v0
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/VideoTypesListAdapter;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

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

    .line 132
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMServerCount()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mServerCount:I

    return v0
.end method

.method public final getMenugridData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/GridUiModel;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showBanner()V

    .line 38
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->banner:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getNotice()V

    .line 40
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showGridView()V

    .line 41
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->initLists()V

    .line 42
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->showIndexLables()V

    .line 43
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getUpload24()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 213
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ListMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->tvSmv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 215
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method

.method public final setAdapterGridHome(Lcom/mogu/tv/adapter/HomeGridMenuAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->adapterGridHome:Lcom/mogu/tv/adapter/HomeGridMenuAdapter;

    return-void
.end method

.method public final setFirstLoadAllList(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->firstLoadAllList:Z

    return-void
.end method

.method public final setIndexRecomand(Lcom/mogu/tv/model/IndexLables;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->indexRecomand:Lcom/mogu/tv/model/IndexLables;

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/VideoTypesListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mAdapter:Lcom/mogu/tv/adapter/VideoTypesListAdapter;

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

    .line 132
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMServerCount(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->mServerCount:I

    return-void
.end method

.method public final setMenugridData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/GridUiModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ListMainFragment;->menugridData:Ljava/util/ArrayList;

    return-void
.end method
