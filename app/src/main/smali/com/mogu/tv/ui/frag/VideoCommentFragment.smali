.class public final Lcom/mogu/tv/ui/frag/VideoCommentFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "VideoCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragCommentBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoCommentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoCommentFragment.kt\ncom/mogu/tv/ui/frag/VideoCommentFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,98:1\n185#2,3:99\n*S KotlinDebug\n*F\n+ 1 VideoCommentFragment.kt\ncom/mogu/tv/ui/frag/VideoCommentFragment\n*L\n40#1:99,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$H\u0007J\u0008\u0010%\u001a\u00020!H\u0002J\u0008\u0010&\u001a\u00020!H\u0016J\u0008\u0010\'\u001a\u00020!H\u0016J\u0008\u0010(\u001a\u00020!H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/VideoCommentFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragCommentBinding;",
        "()V",
        "mAdapter",
        "Lcom/mogu/tv/adapter/NewCommentAdapter;",
        "getMAdapter",
        "()Lcom/mogu/tv/adapter/NewCommentAdapter;",
        "setMAdapter",
        "(Lcom/mogu/tv/adapter/NewCommentAdapter;)V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/mogu/tv/model/CommentLists$CommentItem;",
        "Lkotlin/collections/ArrayList;",
        "getMData",
        "()Ljava/util/ArrayList;",
        "setMData",
        "(Ljava/util/ArrayList;)V",
        "mId",
        "",
        "getMId",
        "()Ljava/lang/String;",
        "setMId",
        "(Ljava/lang/String;)V",
        "mPage",
        "",
        "getMPage",
        "()I",
        "setMPage",
        "(I)V",
        "qsEmptyView",
        "Lcom/mogu/tv/view/QsEmptyView;",
        "addEmptyView",
        "",
        "commentSuccess",
        "item",
        "Lcom/mogu/tv/model/CommentSuccess;",
        "getServerData",
        "initData",
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
.field private mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/CommentLists$CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mPage:I

.field private qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;


# direct methods
.method public static synthetic $r8$lambda$VaUrgUnS_zKp_R5tOQluG1GOxBY(Lcom/mogu/tv/ui/frag/VideoCommentFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->initData$lambda-2(Lcom/mogu/tv/ui/frag/VideoCommentFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nV-amcMW_GJHs8tz2pO9J37bhgQ(Lcom/mogu/tv/ui/frag/VideoCommentFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->initData$lambda-1(Lcom/mogu/tv/ui/frag/VideoCommentFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    .line 48
    new-instance v0, Lcom/mogu/tv/adapter/NewCommentAdapter;

    invoke-direct {v0}, Lcom/mogu/tv/adapter/NewCommentAdapter;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getQsEmptyView$p(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)Lcom/mogu/tv/view/QsEmptyView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    return-object p0
.end method

.method private final addEmptyView()V
    .locals 4

    .line 67
    new-instance v0, Lcom/mogu/tv/view/QsEmptyView;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mogu/tv/view/QsEmptyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    const-string v1, "\u8fd8\u6ca1\u6709\u4eba\u8bc4\u8bba\u54e6\uff0c\u5feb\u53bb\u7b2c\u4e00\u4e2a\u8bc4\u8bba\u5427"

    .line 68
    invoke-virtual {v0, v1}, Lcom/mogu/tv/view/QsEmptyView;->setEmprtyText(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    const/4 v1, 0x0

    const-string v2, "qsEmptyView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const v3, 0x7f0f001d

    invoke-virtual {v0, v3}, Lcom/mogu/tv/view/QsEmptyView;->setResIcon(I)V

    .line 70
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/mogu/tv/view/QsEmptyView;->showState(I)V

    .line 71
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

    iget-object v3, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->qsEmptyView:Lcom/mogu/tv/view/QsEmptyView;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/NewCommentAdapter;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private final getServerData()V
    .locals 4

    .line 75
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mId:Ljava/lang/String;

    iget v2, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    new-instance v3, Lcom/mogu/tv/ui/frag/VideoCommentFragment$getServerData$1;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment$getServerData$1;-><init>(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->commentLists(Ljava/lang/String;ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private static final initData$lambda-1(Lcom/mogu/tv/ui/frag/VideoCommentFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    .line 55
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getServerData()V

    return-void
.end method

.method private static final initData$lambda-2(Lcom/mogu/tv/ui/frag/VideoCommentFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    .line 59
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getServerData()V

    return-void
.end method


# virtual methods
.method public final commentSuccess(Lcom/mogu/tv/model/CommentSuccess;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/FragCommentBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragCommentBinding;->rvComment:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    const-wide/16 v0, 0x12c

    .line 99
    new-instance v2, Lcom/mogu/tv/ui/frag/VideoCommentFragment$commentSuccess$$inlined$postDelayed$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment$commentSuccess$$inlined$postDelayed$1;-><init>(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 100
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final getMAdapter()Lcom/mogu/tv/adapter/NewCommentAdapter;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

    return-object v0
.end method

.method public final getMData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/CommentLists$CommentItem;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMPage()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    return v0
.end method

.method public initData()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getArguments()Landroid/os/Bundle;

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
    iput-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mId:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragCommentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragCommentBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/mogu/tv/ui/frag/VideoCommentFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment$$ExternalSyntheticLambda1;-><init>(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragCommentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragCommentBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/mogu/tv/ui/frag/VideoCommentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mData:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/adapter/NewCommentAdapter;->setNewData(Ljava/util/List;)V

    .line 62
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getServerData()V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 24
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->register(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragCommentBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragCommentBinding;->rvComment:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragCommentBinding;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/mogu/tv/databinding/FragCommentBinding;->rvComment:Landroidx/recyclerview/widget/RecyclerView;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    :goto_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragCommentBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragCommentBinding;->rlBottomComment:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/VideoCommentFragment$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment$initView$1;-><init>(Lcom/mogu/tv/ui/frag/VideoCommentFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 30
    :cond_4
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->addEmptyView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onDestroy()V

    .line 35
    sget-object v0, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    invoke-virtual {v0, p0}, Lcom/kotlin/basiclib/utils/EventBusUtil;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMAdapter(Lcom/mogu/tv/adapter/NewCommentAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mAdapter:Lcom/mogu/tv/adapter/NewCommentAdapter;

    return-void
.end method

.method public final setMData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mogu/tv/model/CommentLists$CommentItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mId:Ljava/lang/String;

    return-void
.end method

.method public final setMPage(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/mogu/tv/ui/frag/VideoCommentFragment;->mPage:I

    return-void
.end method
