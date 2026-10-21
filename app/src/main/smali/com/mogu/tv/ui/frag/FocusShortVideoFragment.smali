.class public final Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "FocusShortVideoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragFocusvidelistBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\"H\u0016J\u0008\u0010$\u001a\u00020\"H\u0002J\u0008\u0010%\u001a\u00020\"H\u0002J\u0008\u0010&\u001a\u00020\"H\u0016J\u0010\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020)H\u0007J\u0008\u0010*\u001a\u00020\"H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragFocusvidelistBinding;",
        "()V",
        "distance",
        "",
        "getDistance",
        "()I",
        "setDistance",
        "(I)V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/ShortVideoListsAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/ShortVideoListsAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/ShortVideoListsAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/ShortStarVideoLists$Item;",
        "Lkotlin/collections/ArrayList;",
        "getMData",
        "()Ljava/util/ArrayList;",
        "setMData",
        "(Ljava/util/ArrayList;)V",
        "mPage",
        "getMPage",
        "setMPage",
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
        "onEventShortVideoStar",
        "event",
        "Lcom/mogu/tv/model/ShortVideoStar;",
        "onResume",
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

.field private mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShortStarVideoLists$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private topVisible:Z


# direct methods
.method public static synthetic $r8$lambda$0QEN9s5R5Q6Svv4VgwhymXUF4Nk(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->initLists$lambda-4$lambda-1(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zg2vOdiwvGH_VI5r8PMfSBEqQFA(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->initLists$lambda-4$lambda-3(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mnO9hz1zyfN0Z7sNum9b6GyCem8(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->initLists$lambda-4$lambda-2(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mData:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/ShortVideoListsAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget v2, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$getServerData$1;-><init>(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getShortStarVideoLists(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 5

    .line 83
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 88
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 92
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    new-instance v2, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 93
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 99
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ShortVideoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ShortVideoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private static final initLists$lambda-4$lambda-1(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 85
    iput p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    .line 86
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-4$lambda-2(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    .line 90
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-4$lambda-3(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/ShortVideoListsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/ShortStarVideoLists$Item;

    .line 103
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/model/ShortStarVideoLists$Item;->getVlog()Lcom/mogu/tv/model/ShortVideoList$Data;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toShortDetails(Lcom/mogu/tv/model/ShortVideoList$Data;I)V

    return-void
.end method

.method private final initRetrnTop()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->ivReturnTop:Landroid/widget/ImageView;

    const-string v2, "ivReturnTop"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$initRetrnTop$1$1;

    invoke-direct {v2, v0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$initRetrnTop$1$1;-><init>(Lcom/mogu/tv/databinding/FragFocusvidelistBinding;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 58
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$initRetrnTop$1$2;

    invoke-direct {v2, p0, v0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$initRetrnTop$1$2;-><init>(Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;Lcom/mogu/tv/databinding/FragFocusvidelistBinding;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDistance()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->distance:I

    return v0
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/ShortVideoListsAdapter;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    return-object v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShortStarVideoLists$Item;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    return v0
.end method

.method public final getTopVisible()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->topVisible:Z

    return v0
.end method

.method public initData()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 31
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->register(Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->initLists()V

    .line 33
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->llLogin:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$initView$1;->INSTANCE:Lcom/mogu/tv/ui/frag/FocusShortVideoFragment$initView$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->initRetrnTop()V

    return-void
.end method

.method public final onEventShortVideoStar(Lcom/mogu/tv/model/ShortVideoStar;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    .line 39
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getServerData()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 44
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onResume()V

    .line 45
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->llLogin:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->llLogin:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setDistance(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->distance:I

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/ShortVideoListsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoListsAdapter;

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShortStarVideoLists$Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->mPage:I

    return-void
.end method

.method public final setTopVisible(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/mogu/tv/ui/frag/FocusShortVideoFragment;->topVisible:Z

    return-void
.end method
