.class final Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MessageCenterActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getServerData()V
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
        "Lcom/mogu/tv/model/MoguConfig;",
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
        "Lcom/mogu/tv/model/MoguConfig;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/MoguConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getMPage()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 52
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 53
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-static {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->access$getMData$p(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p2}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :goto_0
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 59
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lcom/mogu/tv/model/MoguConfig;->getValue()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/model/MessageModel;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/MessageModel;

    .line 60
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-static {p2}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->access$getMData$p(Lcom/mogu/tv/ui/activity/MessageCenterActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getMAdapter()Lcom/mogu/tv/adapter/MessageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/MessageCenterActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/MessageCenterActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/MessageCenterActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActivityHistoryBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    :cond_3
    :goto_1
    return-void
.end method
