.class public final Lcom/mogu/tv/ui/activity/BiaoQianListActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "BiaoQianListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/FragBqlistBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020+H\u0016J\u0008\u0010-\u001a\u00020+H\u0002J\u0008\u0010.\u001a\u00020+H\u0002J\u0008\u0010/\u001a\u00020+H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001e\"\u0004\u0008#\u0010 R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u00060"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/BiaoQianListActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/FragBqlistBinding;",
        "()V",
        "distance",
        "",
        "getDistance",
        "()I",
        "setDistance",
        "(I)V",
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
        "getMPage",
        "setMPage",
        "requestLabels",
        "",
        "getRequestLabels",
        "()Ljava/lang/String;",
        "setRequestLabels",
        "(Ljava/lang/String;)V",
        "selectId",
        "getSelectId",
        "setSelectId",
        "topVisible",
        "",
        "getTopVisible",
        "()Z",
        "setTopVisible",
        "(Z)V",
        "getServerData",
        "",
        "initData",
        "initLists",
        "initRetrnTop",
        "initView",
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
.field private distance:I

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

.field private requestLabels:Ljava/lang/String;

.field private selectId:Ljava/lang/String;

.field private topVisible:Z


# direct methods
.method public static synthetic $r8$lambda$8d_PRYqFIg2O1gaf_bvhBj6V89c(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->initLists$lambda-2(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iWTqrmxRsdOmtUpoqzTM4jbPpxk(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->initLists$lambda-1(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vCE3XE84z3hcnVZVv368UNIMrRg(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->initLists$lambda-0(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->requestLabels:Ljava/lang/String;

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mData:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-direct {v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;-><init>()V

    iput-object v1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    .line 96
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->selectId:Ljava/lang/String;

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget v2, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v2, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->requestLabels:Ljava/lang/String;

    const-string v3, "labels"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getVideoList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 77
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 81
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    new-instance v1, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 82
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 88
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 90
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private static final initLists$lambda-0(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    .line 75
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-1(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    .line 79
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-2(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/VideoListsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/VideoListModel$Video;

    .line 92
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoListModel$Video;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVideoDetails(Ljava/lang/String;)V

    return-void
.end method

.method private final initRetrnTop()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->ivReturnTop:Landroid/widget/ImageView;

    const-string v1, "binding.ivReturnTop"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$initRetrnTop$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$initRetrnTop$1;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 49
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$initRetrnTop$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$initRetrnTop$2;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public final getDistance()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->distance:I

    return v0
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/VideoListsAdapter;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

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

    .line 70
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    return v0
.end method

.method public final getRequestLabels()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->requestLabels:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->selectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopVisible()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->topVisible:Z

    return v0
.end method

.method public initData()V
    .locals 4

    .line 98
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->selectId:Ljava/lang/String;

    .line 99
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->selectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->requestLabels:Ljava/lang/String;

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->tvLabelsName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->llHead:Landroid/widget/RelativeLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->fitStatubar(Landroid/view/View;)V

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7b5b\u9009"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragBqlistBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/BiaoQianListActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 36
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->initLists()V

    .line 37
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->initRetrnTop()V

    return-void
.end method

.method public final setDistance(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->distance:I

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/VideoListsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

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

    .line 70
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->mPage:I

    return-void
.end method

.method public final setRequestLabels(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->requestLabels:Ljava/lang/String;

    return-void
.end method

.method public final setSelectId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->selectId:Ljava/lang/String;

    return-void
.end method

.method public final setTopVisible(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/mogu/tv/ui/activity/BiaoQianListActivity;->topVisible:Z

    return-void
.end method
