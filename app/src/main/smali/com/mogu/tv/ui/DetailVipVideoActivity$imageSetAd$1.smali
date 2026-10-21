.class final Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DetailVipVideoActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailVipVideoActivity;->imageSetAd()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/DetailVipVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->jumpAd:Landroid/widget/TextView;

    const-string v1, "binding.jumpAd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 233
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->tvToget:Landroid/widget/TextView;

    const-string v2, "binding.tvToget"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 234
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    const-string v2, "binding.ivImageAd"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 235
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->isInPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mogu/tv/ui/DetailVipVideoActivity$imageSetAd$1;->this$0:Lcom/mogu/tv/ui/DetailVipVideoActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/DetailVipVideoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {v0}, Lcom/mogu/tv/view/DetailsVideoView;->startPlayLogic()V

    :cond_0
    return-void
.end method
