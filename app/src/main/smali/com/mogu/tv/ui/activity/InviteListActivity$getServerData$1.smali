.class final Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InviteListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/InviteListActivity;->getServerData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/mogu/tv/model/UserShareList;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
        "Lcom/mogu/tv/model/UserShareList;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/InviteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/UserShareList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/UserShareList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/UserShareList;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_3

    .line 61
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getMPage()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Lcom/mogu/tv/model/UserShareList;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-static {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->access$getQsEmptyView$p(Lcom/mogu/tv/ui/activity/InviteListActivity;)Lcom/mogu/tv/view/QsEmptyView;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "qsEmptyView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mogu/tv/view/QsEmptyView;->showState(I)V

    .line 63
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 64
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getMAdapter()Lcom/mogu/tv/adapter/InviteListAdapter;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mogu/tv/model/UserShareList;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/adapter/InviteListAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getMAdapter()Lcom/mogu/tv/adapter/InviteListAdapter;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mogu/tv/model/UserShareList;->getList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/adapter/InviteListAdapter;->addData(Ljava/util/Collection;)V

    .line 68
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getMAdapter()Lcom/mogu/tv/adapter/InviteListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/InviteListAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p3}, Lcom/mogu/tv/model/UserShareList;->getTotal()I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 69
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/InviteListActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/InviteListActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/InviteListActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_3
    :goto_1
    return-void
.end method
