.class public final Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;
.super Ljava/lang/Object;
.source "DetailVipVideoActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailVipVideoActivity;->coundDown(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ccc:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $returntime:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/mogu/tv/ui/DetailVipVideoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/mogu/tv/ui/DetailVipVideoActivity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$ccc:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$block:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$returntime:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$ccc:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$ccc:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 215
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$ccc:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$block:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$returntime:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->$ccc:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$coundDown$run$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->jumpAd:Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
