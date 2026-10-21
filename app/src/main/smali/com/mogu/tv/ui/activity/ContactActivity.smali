.class public final Lcom/mogu/tv/ui/activity/ContactActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "ContactActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActContactBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/ContactActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActContactBinding;",
        "()V",
        "initData",
        "",
        "initView",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 26
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/ContactActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ContactActivity$initData$1;-><init>(Lcom/mogu/tv/ui/activity/ContactActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v2, "qqinfo"

    invoke-virtual {v0, v2, v1}, Lcom/mogu/tv/api/ApiManager;->getMoguConfig(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 35
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ContactActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActContactBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActContactBinding;->llEmail:Landroid/widget/LinearLayout;

    const-string v1, "binding.llEmail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget-object v1, Lcom/mogu/tv/ui/activity/ContactActivity$initData$2;->INSTANCE:Lcom/mogu/tv/ui/activity/ContactActivity$initData$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 38
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ContactActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActContactBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActContactBinding;->llTele:Landroid/widget/LinearLayout;

    const-string v1, "binding.llTele"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/ContactActivity$initData$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ContactActivity$initData$3;-><init>(Lcom/mogu/tv/ui/activity/ContactActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 41
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ContactActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActContactBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActContactBinding;->llPotato:Landroid/widget/LinearLayout;

    const-string v1, "binding.llPotato"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/ContactActivity$initData$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ContactActivity$initData$4;-><init>(Lcom/mogu/tv/ui/activity/ContactActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ContactActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActContactBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActContactBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/ContactActivity;->fitStatubar(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ContactActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActContactBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActContactBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/ContactActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/ContactActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/ContactActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ContactActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActContactBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActContactBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8054\u7cfb\u6211\u4eec"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
