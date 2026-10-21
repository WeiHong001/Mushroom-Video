.class final Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShortVideoMainFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getCommentList()V
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
        "Lcom/mogu/tv/model/CommentLists;",
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
        "Lcom/mogu/tv/model/CommentLists;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/CommentLists;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/CommentLists;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/CommentLists;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 101
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-static {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->access$getMCommentPage$p(Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 102
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMCommentData()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMAdapter()Lcom/mogu/tv/adapter/ShortCommentAdapter;

    move-result-object p2

    iget-object v1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {v1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMCommentData()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p2, v1}, Lcom/mogu/tv/adapter/ShortCommentAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p2, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p2}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMAdapter()Lcom/mogu/tv/adapter/ShortCommentAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mogu/tv/adapter/ShortCommentAdapter;->loadMoreComplete()V

    :goto_0
    const/16 p2, 0xc8

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 108
    sget-object p1, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    new-instance p2, Lcom/mogu/tv/model/EventCommentNumber;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/mogu/tv/model/CommentLists;->getTotal()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p2, v2}, Lcom/mogu/tv/model/EventCommentNumber;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMAdapter()Lcom/mogu/tv/adapter/ShortCommentAdapter;

    move-result-object p1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/mogu/tv/model/CommentLists;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/adapter/ShortCommentAdapter;->addData(Ljava/util/Collection;)V

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/mogu/tv/model/CommentLists;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 112
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment$getCommentList$1;->this$0:Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;->getMAdapter()Lcom/mogu/tv/adapter/ShortCommentAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mogu/tv/adapter/ShortCommentAdapter;->loadMoreEnd(Z)V

    :cond_8
    :goto_5
    return-void
.end method
