.class final Lcom/mogu/tv/ui/frag/MineFragment$initData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MineFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/MineFragment;->initData()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/MineFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/MineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/MineFragment$initData$3;->this$0:Lcom/mogu/tv/ui/frag/MineFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/MineFragment$initData$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/MineFragment$initData$3;->this$0:Lcom/mogu/tv/ui/frag/MineFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mogu/tv/ui/frag/MineFragment$initData$3;->this$0:Lcom/mogu/tv/ui/frag/MineFragment;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/frag/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mogu/tv/ui/activity/FocusUserListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mogu/tv/ui/frag/MineFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
