.class public final Lcom/mogu/tv/ui/activity/FocusUserListActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "FocusUserListActivity.kt"


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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/FocusUserListActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActivityHistoryBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/FocusUserListAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/FocusUserListAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/FocusUserListAdapter;)V",
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
        "noFocus",
        "position",
        "item",
        "Lcom/mogu/tv/model/UserList$User;",
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
.field private mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

.field private mPage:I


# direct methods
.method public static synthetic $r8$lambda$VduqxiwTWcrnouP5_bLGQiBTFho(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->initData$lambda-2(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZzplEoeHgdEokg2OT6CN5WaPNTM(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->initData$lambda-1(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m60bHERISIlqYlbxeZg9XxVAF3g(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->initData$lambda-0(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/mogu/tv/adapter/FocusUserListAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/FocusUserListAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    check-cast v0, Ljava/util/Map;

    const-string v1, "limit"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget v1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    new-instance v3, Lcom/mogu/tv/ui/activity/FocusUserListActivity$getServerData$1;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/FocusUserListActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->getFocusList(IILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-0(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    .line 30
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 31
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget p1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    .line 35
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-2(Lcom/mogu/tv/ui/activity/FocusUserListActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a019e

    if-eq p1, p2, :cond_1

    const p2, 0x7f0a0350

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    invoke-virtual {p1, p3}, Lcom/mogu/tv/adapter/FocusUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/UserList$User;

    invoke-direct {p0, p3, p1}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->noFocus(ILcom/mogu/tv/model/UserList$User;)V

    goto :goto_1

    .line 46
    :cond_1
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object p0, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    invoke-virtual {p0, p3}, Lcom/mogu/tv/adapter/FocusUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/UserList$User;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mogu/tv/model/UserList$User;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUserDetails(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final noFocus(ILcom/mogu/tv/model/UserList$User;)V
    .locals 4

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3, v2}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 55
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mogu/tv/model/UserList$User;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/mogu/tv/ui/activity/FocusUserListActivity$noFocus$1;

    invoke-direct {v1, p0, p1}, Lcom/mogu/tv/ui/activity/FocusUserListActivity$noFocus$1;-><init>(Lcom/mogu/tv/ui/activity/FocusUserListActivity;I)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, p2, v1}, Lcom/mogu/tv/api/ApiManager;->unfocusUser(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/FocusUserListAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    return v0
.end method

.method public initData()V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/FocusUserListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/activity/FocusUserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 33
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/FocusUserListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/FocusUserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/FocusUserListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/FocusUserListActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/FocusUserListAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 50
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->fitStatubar(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/FocusUserListActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/FocusUserListActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 24
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6211\u7684\u5173\u6ce8"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/FocusUserListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mAdapter:Lcom/mogu/tv/adapter/FocusUserListAdapter;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/mogu/tv/ui/activity/FocusUserListActivity;->mPage:I

    return-void
.end method
