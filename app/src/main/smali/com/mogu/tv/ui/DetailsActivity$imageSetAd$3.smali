.class final Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/DetailsActivity;->imageSetAd()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/DetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 315
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->jumpAd:Landroid/widget/TextView;

    const-string v0, "binding.jumpAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 317
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->tvToget:Landroid/widget/TextView;

    const-string v1, "binding.tvToget"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 318
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    const-string v1, "binding.ivImageAd"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 319
    iget-object p1, p0, Lcom/mogu/tv/ui/DetailsActivity$imageSetAd$3;->this$0:Lcom/mogu/tv/ui/DetailsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/DetailsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActDetailsBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    invoke-virtual {p1}, Lcom/mogu/tv/view/DetailsVideoView;->startPlayLogic()V

    return-void
.end method
