.class public final Lcom/mogu/tv/ui/activity/InviteListActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "InviteListActivity.kt"


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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0018\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u0016H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/InviteListActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActivityHistoryBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/InviteListAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/InviteListAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/InviteListAdapter;)V",
        "mLimit",
        "",
        "getMLimit",
        "()I",
        "setMLimit",
        "(I)V",
        "mPage",
        "getMPage",
        "setMPage",
        "qsEmptyView",
        "Lcom/mogu/tv/view/QsEmptyView;",
        "addEmptyView",
        "",
        "getServerData",
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
.field private mAdapter:Lcom/mogu/tv/adapter/InviteListAdapter;

.field private mLimit:I

.field private mPage:I

.field private qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;


# direct methods
.method public static synthetic $r8$lambda$DNvHcT6go7mhne90eFZ8jsxi-xY(Lcom/mogu/tv/ui/activity/InviteListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->initData$lambda-1(Lcom/mogu/tv/ui/activity/InviteListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h7UyFJIedyJEAbto8NGsD0GqVeM(Lcom/mogu/tv/ui/activity/InviteListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->initData$lambda-0(Lcom/mogu/tv/ui/activity/InviteListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/mogu/tv/adapter/InviteListAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/InviteListAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mAdapter:Lcom/mogu/tv/adapter/InviteListAdapter;

    const/16 v0, 0x14

    .line 56
    iput v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mLimit:I

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    return-void
.end method

.method public static final synthetic access$getQsEmptyView$p(Lcom/mogu/tv/ui/activity/InviteListActivity;)Lcom/mogu/tv/view/QsEmptyView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    return-object p0
.end method

.method private final addEmptyView()V
    .locals 4

    .line 50
    new-instance v0, Lcom/mogu/tv/view/QsEmptyView;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mogu/tv/view/QsEmptyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    const-string/jumbo v1, "\u8fd8\u6ca1\u6709\u9080\u8bf7\u597d\u53cb\u54e6\uff0c\u5feb\u53bb\u9080\u8bf7\u5427\uff0c\u83b7\u53d6\u79ef\u5206\u540e\u7eed\u798f\u5229\u6ee1\u6ee1"

    .line 51
    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/QsEmptyView;->setEmprtyText(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    const/4 v1, 0x0

    const-string v2, "qsEmptyView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const v3, 0x7f0f001d

    invoke-virtual {v0, v3}, Lcom/mogu/tv/view/QsEmptyView;->setResIcon(I)V

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/mogu/tv/view/QsEmptyView;->showState(I)V

    .line 54
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mAdapter:Lcom/mogu/tv/adapter/InviteListAdapter;

    iget-object v3, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/InviteListAdapter;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 59
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget v1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mLimit:I

    iget v2, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    new-instance v3, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/InviteListActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->getUserShareList(IILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-0(Lcom/mogu/tv/ui/activity/InviteListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    .line 33
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 34
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/activity/InviteListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    .line 38
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getServerData()V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/InviteListAdapter;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mAdapter:Lcom/mogu/tv/adapter/InviteListAdapter;

    return-object v0
.end method

.method public final getMLimit()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mLimit:I

    return v0
.end method

.method public final getMPage()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    return v0
.end method

.method public initData()V
    .locals 8

    .line 31
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/InviteListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/InviteListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/InviteListActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 36
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/InviteListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/InviteListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/InviteListActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 40
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
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

    .line 41
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 44
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mAdapter:Lcom/mogu/tv/adapter/InviteListAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 45
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->addEmptyView()V

    .line 46
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->fitStatubar(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/InviteListActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/InviteListActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/InviteListActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 27
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6211\u7684\u9080\u8bf7"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/InviteListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mAdapter:Lcom/mogu/tv/adapter/InviteListAdapter;

    return-void
.end method

.method public final setMLimit(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mLimit:I

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity;->mPage:I

    return-void
.end method
