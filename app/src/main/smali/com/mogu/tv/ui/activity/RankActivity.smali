.class public final Lcom/mogu/tv/ui/activity/RankActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "RankActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActRankBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\"H\u0016J\u0008\u0010$\u001a\u00020\"H\u0002J\u0008\u0010%\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020\u0005H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/RankActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActRankBinding;",
        "()V",
        "cureentSelectIndex",
        "",
        "getCureentSelectIndex",
        "()I",
        "setCureentSelectIndex",
        "(I)V",
        "currentRequestType",
        "",
        "getCurrentRequestType",
        "()Ljava/lang/String;",
        "setCurrentRequestType",
        "(Ljava/lang/String;)V",
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
        "mTextsizePress",
        "",
        "mTextsizeSmall",
        "getServerData",
        "",
        "initData",
        "initLists",
        "initView",
        "notifyTab",
        "index",
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
.field private cureentSelectIndex:I

.field private currentRequestType:Ljava/lang/String;

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

.field private mTextsizePress:F

.field private mTextsizeSmall:F


# direct methods
.method public static synthetic $r8$lambda$QKMQCrH9c84CR2j2p7cpQ6XaX5M(Lcom/mogu/tv/ui/activity/RankActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/RankActivity;->initLists$lambda-2$lambda-1(Lcom/mogu/tv/ui/activity/RankActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fru6GMBxWgysKYeva0SgOi0Fq4U(Lcom/mogu/tv/ui/activity/RankActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/activity/RankActivity;->initLists$lambda-2$lambda-0(Lcom/mogu/tv/ui/activity/RankActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    const-string v0, "day"

    .line 30
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    const/high16 v0, 0x41800000    # 16.0f

    .line 31
    iput v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizeSmall:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 32
    iput v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizePress:F

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mData:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/VideoListsAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    return-void
.end method

.method public static final synthetic access$notifyTab(Lcom/mogu/tv/ui/activity/RankActivity;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/mogu/tv/ui/activity/RankActivity;->notifyTab(I)V

    return-void
.end method

.method private final getServerData()V
    .locals 3

    .line 73
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    .line 74
    iget-object v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    .line 73
    new-instance v2, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->getRankVideo(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final initLists()V
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    .line 53
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActRankBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    new-instance v2, Lcom/mogu/tv/ui/activity/RankActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/RankActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 56
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActRankBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 57
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActRankBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v1, v0, Lcom/mogu/tv/databinding/ActRankBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    new-instance v2, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;-><init>(II)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 58
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 64
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setNewData(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    new-instance v1, Lcom/mogu/tv/ui/activity/RankActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/RankActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private static final initLists$lambda-2$lambda-0(Lcom/mogu/tv/ui/activity/RankActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getServerData()V

    return-void
.end method

.method private static final initLists$lambda-2$lambda-1(Lcom/mogu/tv/ui/activity/RankActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

    invoke-virtual {p0}, Lcom/mogu/tv/adapter/VideoListsAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mogu/tv/model/VideoListModel$Video;

    .line 68
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/model/VideoListModel$Video;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toVideoDetails(Ljava/lang/String;)V

    return-void
.end method

.method private final notifyTab(I)V
    .locals 6

    .line 96
    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 99
    :cond_0
    iput p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    .line 101
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActRankBinding;

    .line 102
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->autoRefresh()Z

    .line 103
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu0:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu1:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 105
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu2:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 106
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu3:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 107
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu0:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizeSmall:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu1:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizeSmall:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu2:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizeSmall:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v0, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu3:Landroid/widget/TextView;

    iget v1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizeSmall:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_3

    .line 125
    :cond_5
    iget-object p1, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu3:Landroid/widget/TextView;

    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizePress:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "own"

    .line 126
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    goto :goto_3

    .line 121
    :cond_6
    iget-object p1, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu2:Landroid/widget/TextView;

    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizePress:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "month"

    .line 122
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    goto :goto_3

    .line 117
    :cond_7
    iget-object p1, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu1:Landroid/widget/TextView;

    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizePress:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string/jumbo p1, "week"

    .line 118
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    goto :goto_3

    .line 113
    :cond_8
    iget-object p1, p1, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu0:Landroid/widget/TextView;

    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mTextsizePress:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string p1, "day"

    .line 114
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    :goto_3
    return-void
.end method


# virtual methods
.method public final getCureentSelectIndex()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    return v0
.end method

.method public final getCurrentRequestType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/VideoListsAdapter;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

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

    .line 33
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 2

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/mogu/tv/ui/activity/RankActivity;->notifyTab(I)V

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu0:Landroid/widget/TextView;

    const-string v1, "binding.tvMenu0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/RankActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/RankActivity$initData$1;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 40
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu1:Landroid/widget/TextView;

    const-string v1, "binding.tvMenu1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/RankActivity$initData$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/RankActivity$initData$2;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu2:Landroid/widget/TextView;

    const-string v1, "binding.tvMenu2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/RankActivity$initData$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/RankActivity$initData$3;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 46
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu3:Landroid/widget/TextView;

    const-string v1, "binding.tvMenu3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/RankActivity$initData$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/RankActivity$initData$4;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/RankActivity;->fitStatubar(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/RankActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/RankActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/RankActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 26
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6392\u884c\u699c"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/RankActivity;->initLists()V

    return-void
.end method

.method public final setCureentSelectIndex(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->cureentSelectIndex:I

    return-void
.end method

.method public final setCurrentRequestType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->currentRequestType:Ljava/lang/String;

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/VideoListsAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mAdapter:Lcom/mogu/tv/adapter/VideoListsAdapter;

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

    .line 33
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity;->mData:Ljava/util/ArrayList;

    return-void
.end method
