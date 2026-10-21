.class public final Lcom/mogu/tv/ui/activity/SettingActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActSettingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/SettingActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActSettingBinding;",
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

    .line 11
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 21
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    const-string v1, "binding.cardExt"

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSettingBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSettingBinding;->cardExt:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSettingBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSettingBinding;->cardExt:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SettingActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SettingActivity$initData$1;-><init>(Lcom/mogu/tv/ui/activity/SettingActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 29
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 30
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActSettingBinding;

    .line 32
    iget-object v2, v1, Lcom/mogu/tv/databinding/ActSettingBinding;->tvVerison:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, v1, Lcom/mogu/tv/databinding/ActSettingBinding;->carUser:Landroidx/cardview/widget/CardView;

    const-string v2, "carUser"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/activity/SettingActivity$initData$2$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/SettingActivity$initData$2$1;-><init>(Lcom/mogu/tv/ui/activity/SettingActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 37
    iget-object v0, v1, Lcom/mogu/tv/databinding/ActSettingBinding;->carPrivate:Landroidx/cardview/widget/CardView;

    const-string v1, "carPrivate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SettingActivity$initData$2$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SettingActivity$initData$2$2;-><init>(Lcom/mogu/tv/ui/activity/SettingActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSettingBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSettingBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/SettingActivity;->fitStatubar(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSettingBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSettingBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/SettingActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/SettingActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/SettingActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 17
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/SettingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActSettingBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActSettingBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8bbe\u7f6e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
