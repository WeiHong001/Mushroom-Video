.class final Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JpHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    invoke-static {v0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->access$getMData$p(Lcom/mogu/tv/ui/frag/JpHomeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    invoke-static {v0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->access$getMData$p(Lcom/mogu/tv/ui/frag/JpHomeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->getMShareIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mData[mShareIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/mogu/tv/model/VipVideoList$Data;

    invoke-static {v0, v1}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->access$showShareDialog(Lcom/mogu/tv/ui/frag/JpHomeFragment;Lcom/mogu/tv/model/VipVideoList$Data;)V

    :cond_0
    return-void
.end method
