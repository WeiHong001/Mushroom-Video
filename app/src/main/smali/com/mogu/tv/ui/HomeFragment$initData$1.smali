.class final Lcom/mogu/tv/ui/HomeFragment$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/HomeFragment;->initData()V
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
        "Lcom/mogu/tv/model/VideoTypes;",
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
        "Lcom/mogu/tv/model/VideoTypes;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/HomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initData$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/VideoTypes;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/HomeFragment$initData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/VideoTypes;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/VideoTypes;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 184
    iget-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initData$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/HomeFragment;->getMTabLists()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initData$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/HomeFragment;->getMTabLists()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3}, Lcom/mogu/tv/model/VideoTypes;->getList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object p1, p0, Lcom/mogu/tv/ui/HomeFragment$initData$1;->this$0:Lcom/mogu/tv/ui/HomeFragment;

    invoke-static {p1}, Lcom/mogu/tv/ui/HomeFragment;->access$notifyTab(Lcom/mogu/tv/ui/HomeFragment;)V

    :cond_0
    return-void
.end method
