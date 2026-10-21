.class public final Lcom/mogu/tv/ui/activity/EditUserInfoActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "EditUserInfoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActNewUserinfoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/EditUserInfoActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActNewUserinfoBinding;",
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

    .line 12
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->ivUserIcon:Lcom/makeramen/roundedimageview/RoundedImageView;

    const-string v1, "binding.ivUserIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$1;-><init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 26
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    .line 27
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->tvName:Landroid/widget/TextView;

    sget-object v1, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v1}, Lcom/mogu/tv/main/UserManager;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->rlName:Landroid/widget/RelativeLayout;

    const-string v1, "binding.rlName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initData$3;-><init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->fitStatubar(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/EditUserInfoActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 18
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/EditUserInfoActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8bbe\u7f6e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
