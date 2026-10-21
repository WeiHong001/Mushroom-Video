.class public final Lcom/mogu/tv/ui/activity/CollectActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "CollectActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActivityCollectBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/CollectActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActivityCollectBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/HistoryAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/HistoryAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/HistoryAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/HistoryLists$Item;",
        "Lkotlin/collections/ArrayList;",
        "mPage",
        "",
        "getMPage",
        "()I",
        "setMPage",
        "(I)V",
        "getServerData",
        "",
        "initData",
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
.field private mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/HistoryLists$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I


# direct methods
.method public static synthetic $r8$lambda$8rX6eFWOlP84EopHx6rQxKAjT50(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/CollectActivity;->initData$lambda-3(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFXQq9tCiCIUO0bZCQHSKw_J0jY(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/CollectActivity;->initData$lambda-1(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$waVlmk_ZSmape1nzHC_xvBmrcOA(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/CollectActivity;->initData$lambda-0(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whU0VOZBhKqQoyChMpIU2DQp8Sk(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/CollectActivity;->initData$lambda-2(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/mogu/tv/adapter/HistoryAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/HistoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getMData$p(Lcom/mogu/tv/ui/activity/CollectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getServerData(Lcom/mogu/tv/ui/activity/CollectActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getServerData()V

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "limit"

    const-string v3, "20"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget v2, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v2, Lcom/mogu/tv/ui/activity/CollectActivity$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v0, v2}, Lcom/mogu/tv/api/ApiManager;->starLists(Ljava/util/HashMap;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-0(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    .line 52
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    .line 56
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-2(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/HistoryLists$Item;

    invoke-virtual {p0}, Lcom/mogu/tv/model/HistoryLists$Item;->getVod()Lcom/mogu/tv/model/HistoryLists$Vod;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mogu/tv/model/HistoryLists$Vod;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVideoDetails(Ljava/lang/String;)V

    return-void
.end method

.method private static final initData$lambda-3(Lcom/mogu/tv/ui/activity/CollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a018e

    if-ne p1, p2, :cond_0

    .line 68
    move-object p1, p0

    check-cast p1, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 p2, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 69
    sget-object p1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object p2, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/HistoryLists$Item;

    invoke-virtual {p2}, Lcom/mogu/tv/model/HistoryLists$Item;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/mogu/tv/ui/activity/CollectActivity$initData$4$1;

    invoke-direct {v0, p0, p3}, Lcom/mogu/tv/ui/activity/CollectActivity$initData$4$1;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;I)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p1, p2, v0}, Lcom/mogu/tv/api/ApiManager;->starDel(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/HistoryAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    return v0
.end method

.method public initData()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 54
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 58
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/HistoryAdapter;->setNewData(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/HistoryAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/HistoryAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/CollectActivity;->fitStatubar(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/CollectActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6211\u7684\u559c\u7231"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvRightTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6e05\u7a7a"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvRightTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/CollectActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityCollectBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvRightTitle:Landroid/widget/TextView;

    const-string v1, "binding.headLayout.tvRightTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/HistoryAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mAdapter:Lcom/mogu/tv/adapter/HistoryAdapter;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity;->mPage:I

    return-void
.end method
