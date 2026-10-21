.class public final Lcom/mogu/tv/ui/activity/AppLockActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "AppLockActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActApplockBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002J\u0008\u0010\u0016\u001a\u00020\u0011H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/AppLockActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActApplockBinding;",
        "()V",
        "lastPassword",
        "",
        "getLastPassword",
        "()Ljava/lang/String;",
        "setLastPassword",
        "(Ljava/lang/String;)V",
        "submitTime",
        "",
        "getSubmitTime",
        "()I",
        "setSubmitTime",
        "(I)V",
        "hideAppLock",
        "",
        "initData",
        "initLock",
        "initView",
        "refreshPassWord",
        "showAppLock",
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
.field private lastPassword:Ljava/lang/String;

.field private submitTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/AppLockActivity;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$refreshPassWord(Lcom/mogu/tv/ui/activity/AppLockActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->refreshPassWord()V

    return-void
.end method

.method public static final synthetic access$showAppLock(Lcom/mogu/tv/ui/activity/AppLockActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->showAppLock()V

    return-void
.end method

.method private final hideAppLock()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    const-string v1, "binding.patternLockerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    return-void
.end method

.method private final initLock()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    new-instance v1, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/AppLockActivity$initLock$1;-><init>(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    check-cast v1, Lcom/github/ihsg/patternlocker/OnPatternChangeListener;

    invoke-virtual {v0, v1}, Lcom/github/ihsg/patternlocker/PatternLockerView;->setOnPatternChangedListener(Lcom/github/ihsg/patternlocker/OnPatternChangeListener;)V

    return-void
.end method

.method private final refreshPassWord()V
    .locals 4

    .line 34
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getLOCK()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString$default(Lcom/kotlin/basiclib/utils/SpUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "binding.tvLockTitle"

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvLockTitle:Landroid/widget/TextView;

    const-string/jumbo v3, "\u70b9\u51fb\u8bbe\u7f6e\u5e94\u7528\u89e3\u9501\u5bc6\u7801"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvLockTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/activity/AppLockActivity$refreshPassWord$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/activity/AppLockActivity$refreshPassWord$1;-><init>(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvClear:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvLockTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    sget-object v2, Lcom/mogu/tv/ui/activity/AppLockActivity$refreshPassWord$2;->INSTANCE:Lcom/mogu/tv/ui/activity/AppLockActivity$refreshPassWord$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 48
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvLockTitle:Landroid/widget/TextView;

    const-string/jumbo v2, "\u5df2\u8bbe\u7f6e\u5e94\u7528\u9501"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    invoke-virtual {v0, v1}, Lcom/github/ihsg/patternlocker/PatternLockerView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvClear:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvClear:Landroid/widget/TextView;

    const-string v1, "binding.tvClear"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/AppLockActivity$refreshPassWord$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/AppLockActivity$refreshPassWord$3;-><init>(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method private final showAppLock()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    const-string v1, "binding.patternLockerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final getLastPassword()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/AppLockActivity;->lastPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubmitTime()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/mogu/tv/ui/activity/AppLockActivity;->submitTime:I

    return v0
.end method

.method public initData()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->refreshPassWord()V

    .line 29
    invoke-direct {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->initLock()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->llHead:Landroid/widget/LinearLayout;

    const-string v1, "binding.llHead"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->fitStatubar(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/activity/AppLockActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/AppLockActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/AppLockActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/AppLockActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActApplockBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActApplockBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5e94\u7528\u9501\u8bbe\u7f6e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLastPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public final setSubmitTime(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/mogu/tv/ui/activity/AppLockActivity;->submitTime:I

    return-void
.end method
