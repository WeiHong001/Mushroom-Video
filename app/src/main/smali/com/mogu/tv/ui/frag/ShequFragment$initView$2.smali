.class final Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShequFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/ShequFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/ShequFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/ShequFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;->this$0:Lcom/mogu/tv/ui/frag/ShequFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;->this$0:Lcom/mogu/tv/ui/frag/ShequFragment;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/frag/ShequFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mogu/tv/ui/activity/SheQuUserActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "id"

    const-string v1, "7310"

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/ShequFragment$initView$2;->this$0:Lcom/mogu/tv/ui/frag/ShequFragment;

    invoke-virtual {v0, p1}, Lcom/mogu/tv/ui/frag/ShequFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
