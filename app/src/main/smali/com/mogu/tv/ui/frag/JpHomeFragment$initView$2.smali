.class final Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "JpHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/JpHomeFragment;->initView()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p1, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/frag/JpHomeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;

    iget-object v2, p0, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2;->this$0:Lcom/mogu/tv/ui/frag/JpHomeFragment;

    invoke-direct {v1, v2}, Lcom/mogu/tv/ui/frag/JpHomeFragment$initView$2$1;-><init>(Lcom/mogu/tv/ui/frag/JpHomeFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1}, Lcom/mogu/tv/utils/DialogUtils;->showQQProductDialog(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
