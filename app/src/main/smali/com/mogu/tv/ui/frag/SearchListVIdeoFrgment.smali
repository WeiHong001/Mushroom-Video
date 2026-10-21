.class public final Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "SearchListVIdeoFrgment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragJustlistBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010 \u001a\u00020!J\u0008\u0010\"\u001a\u00020!H\u0002J\u0008\u0010#\u001a\u00020!H\u0016J\u0008\u0010$\u001a\u00020!H\u0002J\u0008\u0010%\u001a\u00020!H\u0016J\u0008\u0010&\u001a\u00020!H\u0016J\u0010\u0010\'\u001a\u00020!2\u0006\u0010(\u001a\u00020)H\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragJustlistBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/VideoListsAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/VideoListsAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/VideoListsAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/VideoListModel$Video;",
        "Lkotlin/collections/ArrayList;",
        "getMData",
        "()Ljava/util/ArrayList;",
        "setMData",
        "(Ljava/util/ArrayList;)V",
        "mPage",
        "",
        "getMPage",
        "()I",
        "setMPage",
        "(I)V",
        "mSearchKey",
        "",
        "getMSearchKey",
        "()Ljava/lang/String;",
        "setMSearchKey",
        "(Ljava/lang/String;)V",
        "qsEmptyView",
        "Lcom/mogu/tv/view/QsEmptyView;",
        "addEmptyView",
        "",
        "getServerData",
        "initData",
        "initLists",
        "initView",
        "onDestroy",
        "onEvnetSearchPhoto",
        "event",
        "Lcom/mogu/tv/model/EvnetSearchPhoto;",
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
.field private mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mSearchKey:Ljava/lang/String;

.field private qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;


# direct methods
.method public static synthetic $r8$lambda$KN38Aj6kn-Z_Jr8qR3mYAiF6AH4(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->initLists$lambda-3$lambda-0(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NACUobV-1VsBOxBuIrBn284D5RE(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->initLists$lambda-3$lambda-1(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qCpKDkQLa-AIt0Yrj1YYNqVB9iA(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->initLists$lambda-3$lambda-2(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mSearchKey:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mData:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/VideoListsAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    return-void
.end method

.method public static final synthetic access$getQsEmptyView$p(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;)Lcom/mogu/tv/view/QsEmptyView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    return-object p0
.end method

.method private final getServerData()V
    .locals 4

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget v2, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mSearchKey:Ljava/lang/String;

    const-string v3, "wd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$getServerData$1;-><init>(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getVodClever(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 5

    .line 55
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJustlistBinding;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 60
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 64
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    new-instance v2, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 65
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 73
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->addEmptyView()V

    return-void
.end method

.method private static final initLists$lambda-3$lambda-0(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 57
    iput p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    .line 58
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-3$lambda-1(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    .line 62
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-3$lambda-2(Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/VideoListsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/VideoListModel$Video;

    .line 75
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoListModel$Video;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVideoDetails(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addEmptyView()V
    .locals 4

    .line 86
    new-instance v0, Lcom/mogu/tv/view/QsEmptyView;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mogu/tv/view/QsEmptyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    const-string v1, "\u63db\u500b\u8a5e\u8a66\u4e00\u8a66\u5427"

    .line 87
    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/QsEmptyView;->setEmprtyText(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    const/4 v1, 0x0

    const-string v2, "qsEmptyView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const v3, 0x7f0f001d

    invoke-virtual {v0, v3}, Lcom/mogu/tv/view/QsEmptyView;->setResIcon(I)V

    .line 89
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/mogu/tv/view/QsEmptyView;->showState(I)V

    .line 90
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    iget-object v3, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/VideoListsAdapter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    return-object v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    return v0
.end method

.method public final getMSearchKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 81
    sget-object v0, Lcom/mogu/tv/ui/activity/SearchActivity;->Companion:Lcom/mogu/tv/ui/activity/SearchActivity$Companion;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/SearchActivity$Companion;->getSearchKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mSearchKey:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 1

    .line 37
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->register(Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->initLists()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 49
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->unregister(Ljava/lang/Object;)V

    .line 50
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onDestroy()V

    return-void
.end method

.method public final onEvnetSearchPhoto(Lcom/mogu/tv/model/EvnetSearchPhoto;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/mogu/tv/model/EvnetSearchPhoto;->getWd()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 43
    iput v1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    .line 44
    invoke-virtual {p1}, Lcom/mogu/tv/model/EvnetSearchPhoto;->getWd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mSearchKey:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->getServerData()V

    :cond_2
    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/VideoListsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/VideoListModel$Video;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mPage:I

    return-void
.end method

.method public final setMSearchKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/SearchListVIdeoFrgment;->mSearchKey:Ljava/lang/String;

    return-void
.end method
