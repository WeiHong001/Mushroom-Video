.class final Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HistoryActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/HistoryActivity;->getServerData()V
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
        "Lcom/mogu/tv/model/HistoryLists;",
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
        "Lcom/mogu/tv/model/HistoryLists;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/HistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/HistoryLists;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/HistoryLists;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/HistoryLists;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/HistoryActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getMPage()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 93
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 94
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-static {p2}, Lcom/mogu/tv/ui/activity/HistoryActivity;->access$getMData$p(Lcom/mogu/tv/ui/activity/HistoryActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_3

    .line 99
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getMAdapter()Lcom/mogu/tv/adapter/HistoryAdapter;

    move-result-object p1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/mogu/tv/model/HistoryLists;->getList()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/adapter/HistoryAdapter;->addData(Ljava/util/Collection;)V

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 102
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/HistoryActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    :cond_4
    :goto_2
    return-void
.end method
