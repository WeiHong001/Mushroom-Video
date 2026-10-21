.class public final Lcom/mogu/tv/ui/frag/ShequLoveListFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "ShequLoveListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragShequlistBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020$H\u0016J\u0008\u0010&\u001a\u00020$H\u0002J\u0008\u0010\'\u001a\u00020$H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\tR\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006("
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/ShequLoveListFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragShequlistBinding;",
        "()V",
        "distance",
        "",
        "getDistance",
        "()I",
        "setDistance",
        "(I)V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/ShequLoveListAdapter;",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/ShequListLoveModel$Item;",
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
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "getServerData",
        "",
        "initData",
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

.field private mAdapter:Lcom/mogu/tv/adapter/ShequLoveListAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShequListLoveModel$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private topVisible:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SAf1_ixgXgwIqnQgjVzrSVOwDx4(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->initView$lambda-2$lambda-0(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hGjI7E3pSsP_sHxWZ2LM7pVF20o(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->initView$lambda-3(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sB5Ejo2xZTg7x7SX-gHnhEJtu00(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->initView$lambda-2$lambda-1(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/mogu/tv/adapter/ShequLoveListAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/ShequLoveListAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mAdapter:Lcom/mogu/tv/adapter/ShequLoveListAdapter;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->userId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;)Lcom/mogu/tv/adapter/ShequLoveListAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mAdapter:Lcom/mogu/tv/adapter/ShequLoveListAdapter;

    return-object p0
.end method

.method private final getServerData()V
    .locals 4

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget v2, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->userId:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->userId:Ljava/lang/String;

    const-string/jumbo v3, "user_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$getServerData$1;-><init>(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getBlobLoveList(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initRetrnTop()V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequlistBinding;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequlistBinding;->ivReturnTop:Landroid/widget/ImageView;

    const-string v2, "ivReturnTop"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$initRetrnTop$1$1;

    invoke-direct {v2, v0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$initRetrnTop$1$1;-><init>(Lcom/mogu/tv/databinding/FragShequlistBinding;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 72
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$initRetrnTop$1$2;

    invoke-direct {v2, p0, v0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$initRetrnTop$1$2;-><init>(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/mogu/tv/databinding/FragShequlistBinding;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda-2$lambda-0(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    iput p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    .line 36
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->getServerData()V

    return-void
.end method

.method private static final initView$lambda-2$lambda-1(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    .line 40
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->getServerData()V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a01fc

    if-ne p1, p2, :cond_0

    .line 46
    new-instance p1, Lcom/mogu/tv/view/SharePopDialog;

    .line 47
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/high16 v2, 0x7f0f0000

    .line 49
    sget-object p0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p0}, Lcom/mogu/tv/model/GlobeAppData;->getShareLinkWithInvite()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u8611\u83c7\u89c6\u9891"

    const-string/jumbo v5, "\u6c38\u4e45\u514d\u8d39\uff0c\u65e0\u5f3a\u5236\u5e7f\u544a\uff0c\u7cbe\u5f69\u6210\u4eba\u89c6\u9891\u5e94\u7528"

    move-object v0, p1

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/mogu/tv/view/SharePopDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/mogu/tv/view/SharePopDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDistance()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->distance:I

    return v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShequListLoveModel$Item;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    return v0
.end method

.method public final getTopVisible()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->topVisible:Z

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->userId:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragShequlistBinding;

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mAdapter:Lcom/mogu/tv/adapter/ShequLoveListAdapter;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 33
    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mAdapter:Lcom/mogu/tv/adapter/ShequLoveListAdapter;

    iget-object v2, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mData:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mogu/tv/adapter/ShequLoveListAdapter;->setNewData(Ljava/util/List;)V

    .line 34
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragShequlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 38
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragShequlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mAdapter:Lcom/mogu/tv/adapter/ShequLoveListAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/ShequLoveListFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ShequLoveListAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 57
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->initRetrnTop()V

    return-void
.end method

.method public final setDistance(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->distance:I

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShequListLoveModel$Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->mPage:I

    return-void
.end method

.method public final setTopVisible(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->topVisible:Z

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequLoveListFragment;->userId:Ljava/lang/String;

    return-void
.end method
