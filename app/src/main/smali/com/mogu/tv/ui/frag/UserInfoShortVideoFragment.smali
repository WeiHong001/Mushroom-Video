.class public final Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "UserInfoShortVideoFragment.kt"


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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u001fH\u0016J\u0008\u0010!\u001a\u00020\u001fH\u0002J\u0008\u0010\"\u001a\u00020\u001fH\u0016J\u0008\u0010#\u001a\u00020\u001fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragJustlistBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/ShortVideoList$Data;",
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
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "getServerData",
        "",
        "initData",
        "initLists",
        "initView",
        "onDestroy",
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
.field private mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShortVideoList$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private userId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8ml6sb6WNGo9a-ctmj9rF_DrwtI(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->initLists$lambda-3$lambda-0(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9np4l5nN3c6cr2uQHo7RIIG8q4(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->initLists$lambda-3$lambda-2(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFWS6MPD1qEDDvpYhh_b7QN6Pko(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->initLists$lambda-3$lambda-1(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mData:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->userId:Ljava/lang/String;

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget v2, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->userId:Ljava/lang/String;

    const-string/jumbo v3, "user_id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$getServerData$1;-><init>(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->getShortVideoLists(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragJustlistBinding;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 53
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 57
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v1, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance v2, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 58
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 64
    iget-object v0, v0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    new-instance v1, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private static final initLists$lambda-3$lambda-0(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    .line 51
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-3$lambda-1(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    .line 55
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-3$lambda-2(Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/ShortVideoList$Data;

    .line 68
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    const-string p2, "any"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toShortDetails(Lcom/mogu/tv/model/ShortVideoList$Data;I)V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    return-object v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShortVideoList$Data;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->getArguments()Landroid/os/Bundle;

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
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->userId:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->initLists()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onDestroy()V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mAdapter:Lcom/mogu/tv/adapter/ShortVideoUserInfoListsAdapter;

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/ShortVideoList$Data;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->mPage:I

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/UserInfoShortVideoFragment;->userId:Ljava/lang/String;

    return-void
.end method
