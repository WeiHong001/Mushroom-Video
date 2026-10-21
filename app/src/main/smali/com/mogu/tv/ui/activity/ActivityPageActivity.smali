.class public final Lcom/mogu/tv/ui/activity/ActivityPageActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "ActivityPageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActivityHistoryBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/ActivityPageActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActivityHistoryBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/ActivityAdAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/ActivityAdAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/ActivityAdAdapter;)V",
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
.field private mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;


# direct methods
.method public static synthetic $r8$lambda$FxmbEwvj79SEj0Z7jjwyx32ngvs(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->initData$lambda-2(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TeURmtaTFvgcSN9WhYIkePffvk8(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->initData$lambda-0(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UxOm0dpG5ZxBqOq8q9c9CogQx28(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->initData$lambda-1(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/mogu/tv/adapter/ActivityAdAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/ActivityAdAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    return-void
.end method

.method private final getServerData()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 48
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 49
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    sget-object v1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v1}, Lcom/mogu/tv/model/GlobeAppData;->getAdData()Lcom/mogu/tv/model/AllAdsModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mogu/tv/model/AllAdsModel;->getActivity()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ActivityAdAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method private static final initData$lambda-0(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-2(Lcom/mogu/tv/ui/activity/ActivityPageActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    invoke-virtual {v0}, Lcom/mogu/tv/adapter/ActivityAdAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUrlPraseJump(Landroid/app/Activity;Ljava/lang/String;)V

    .line 40
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/ActivityAdAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/AllAdsModel$Item;

    invoke-virtual {p0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->clickAd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/ActivityAdAdapter;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 8

    .line 27
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/ActivityPageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/activity/ActivityPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 30
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/ActivityPageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/ActivityPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 33
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 34
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    new-instance v7, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const v1, 0x7f06007d

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->color(I)I

    move-result v6

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;-><init>(Landroid/content/Context;IIZI)V

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 34
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 38
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/ActivityPageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/ActivityPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/ActivityAdAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 43
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->fitStatubar(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/ActivityPageActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/ActivityPageActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u4f18\u60e0\u6d3b\u52a8"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/ActivityAdAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ActivityPageActivity;->mAdapter:Lcom/mogu/tv/adapter/ActivityAdAdapter;

    return-void
.end method
