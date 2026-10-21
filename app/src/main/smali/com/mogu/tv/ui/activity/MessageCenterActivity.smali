.class public final Lcom/mogu/tv/ui/activity/MessageCenterActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "MessageCenterActivity.kt"


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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/MessageCenterActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActivityHistoryBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/MessageAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/MessageAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/MessageAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/MessageModel;",
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
.field private mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/MessageModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I


# direct methods
.method public static synthetic $r8$lambda$03mQi6DNdtInKTSIQJYbCOBoUSc(Lcom/mogu/tv/ui/activity/MessageCenterActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->initData$lambda-0(Lcom/mogu/tv/ui/activity/MessageCenterActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWrWr5-w0FxrIn5U_c-g1uo8R_k(Lcom/mogu/tv/ui/activity/MessageCenterActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->initData$lambda-1(Lcom/mogu/tv/ui/activity/MessageCenterActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nPB5bk-AnZbTpS8SlEmApcbPNeA(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->initData$lambda-2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 24
    new-instance v0, Lcom/mogu/tv/adapter/MessageAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/MessageAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mPage:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getMData$p(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getServerData()V
    .locals 3

    .line 47
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v2, "messagecenter"

    invoke-virtual {v0, v2, v1}, Lcom/mogu/tv/api/ApiManager;->getMoguConfig(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-0(Lcom/mogu/tv/ui/activity/MessageCenterActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mPage:I

    .line 30
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/activity/MessageCenterActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mPage:I

    .line 34
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-2(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 41
    sget-object p0, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toMessageDetails()V

    return-void
.end method


# virtual methods
.method public final getMAdapter()Lcom/mogu/tv/adapter/MessageAdapter;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mPage:I

    return v0
.end method

.method public initData()V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/MessageCenterActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v1, Lcom/mogu/tv/ui/activity/MessageCenterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 36
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 39
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/MessageAdapter;->setNewData(Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

    sget-object v1, Lcom/mogu/tv/ui/activity/MessageCenterActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mogu/tv/ui/activity/MessageCenterActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/MessageAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 43
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->fitStatubar(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/MessageCenterActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6d88\u606f\u4e2d\u5fc3"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/MessageAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mAdapter:Lcom/mogu/tv/adapter/MessageAdapter;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->mPage:I

    return-void
.end method
