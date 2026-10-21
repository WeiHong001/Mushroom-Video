.class final Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RankActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/RankActivity;->getServerData()V
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
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/RankActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/RankActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->invoke(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/RankActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/activity/RankActivity;->getMData()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 80
    move-object p2, p3

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_4

    .line 81
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/mogu/tv/model/RankVideoModel;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/model/RankVideoModel;

    .line 82
    invoke-virtual {p2}, Lcom/mogu/tv/model/RankVideoModel;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/RankActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActRankBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActRankBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/RefreshLayout;->finishRefresh()Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/RankActivity;->getMData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-ne p1, v1, :cond_4

    if-eqz p3, :cond_4

    .line 86
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/RankActivity;->getMData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mogu/tv/model/RankVideoModel;->getData()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/RankActivity$getServerData$1;->this$0:Lcom/mogu/tv/ui/activity/RankActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/RankActivity;->getMAdapter()Lcom/mogu/tv/adapter/VideoListsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mogu/tv/adapter/VideoListsAdapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method
