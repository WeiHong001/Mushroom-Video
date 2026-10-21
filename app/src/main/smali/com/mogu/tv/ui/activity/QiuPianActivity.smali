.class public final Lcom/mogu/tv/ui/activity/QiuPianActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "QiuPianActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActQiupianBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0006\u0010\u0008\u001a\u00020\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/QiuPianActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActQiupianBinding;",
        "()V",
        "initData",
        "",
        "initView",
        "refreshVerify",
        "save",
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

.method public static final synthetic access$refreshVerify(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->refreshVerify()V

    return-void
.end method

.method private final refreshVerify()V
    .locals 2

    .line 44
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/QiuPianActivity$refreshVerify$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity$refreshVerify$1;-><init>(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getVerifyCodeImage(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActQiupianBinding;->ivVerify:Landroid/widget/ImageView;

    const-string v1, "binding.ivVerify"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/QiuPianActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity$initData$1;-><init>(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 41
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->refreshVerify()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActQiupianBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->fitStatubar(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActQiupianBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActQiupianBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6c42\u7247"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActQiupianBinding;->tvSubmit:Landroid/widget/TextView;

    const-string v1, "binding.tvSubmit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;-><init>(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final save()V
    .locals 4

    .line 49
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActQiupianBinding;->etPassword:Landroid/widget/EditText;

    const-string v2, "binding.etPassword"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActQiupianBinding;->etVerify:Landroid/widget/EditText;

    const-string v3, "binding.etVerify"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mogu/tv/ui/activity/QiuPianActivity$save$1;

    invoke-direct {v3, p0}, Lcom/mogu/tv/ui/activity/QiuPianActivity$save$1;-><init>(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mogu/tv/api/ApiManager;->gbookSave(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
