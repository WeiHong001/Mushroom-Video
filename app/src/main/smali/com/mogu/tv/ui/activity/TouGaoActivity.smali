.class public final Lcom/mogu/tv/ui/activity/TouGaoActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "TouGaoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActTougaoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0006\u0010\u0007\u001a\u00020\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/TouGaoActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActTougaoBinding;",
        "()V",
        "initData",
        "",
        "initView",
        "showDialog",
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

    .line 12
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->tvSubmit:Landroid/widget/TextView;

    const-string v1, "binding.tvSubmit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$1;-><init>(Lcom/mogu/tv/ui/activity/TouGaoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rl1:Landroid/widget/RelativeLayout;

    const-string v1, "binding.rl1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$2;-><init>(Lcom/mogu/tv/ui/activity/TouGaoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 28
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rl2:Landroid/widget/RelativeLayout;

    const-string v1, "binding.rl2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$3;-><init>(Lcom/mogu/tv/ui/activity/TouGaoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 31
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rl3:Landroid/widget/RelativeLayout;

    const-string v1, "binding.rl3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity$initData$4;-><init>(Lcom/mogu/tv/ui/activity/TouGaoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->fitStatubar(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/TouGaoActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/TouGaoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 18
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActTougaoBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6295\u7a3f\u8ba4\u8bc1"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showDialog()V
    .locals 5

    .line 37
    sget-object v0, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v2, "\u6682\u672a\u5f00\u653e\u7ebf\u4e0a\u81ea\u52a8\u8ba4\u8bc1\uff0c\u8bf7\u8054\u7cfb\u7ba1\u7406\u5458\u8fdb\u884c\u8ba4\u8bc1"

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lcom/mogu/tv/ui/activity/TouGaoActivity$showDialog$1;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/activity/TouGaoActivity$showDialog$1;-><init>(Lcom/mogu/tv/ui/activity/TouGaoActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    sget-object v4, Lcom/mogu/tv/ui/activity/TouGaoActivity$showDialog$2;->INSTANCE:Lcom/mogu/tv/ui/activity/TouGaoActivity$showDialog$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mogu/tv/utils/DialogUtils;->showSimpleDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
