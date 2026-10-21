.class public final Lcom/mogu/tv/ui/ForgetPassWordActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "ForgetPassWordActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActForgetpassBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\u0008\u0010\u0014\u001a\u00020\u0011H\u0014J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002J\u000e\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0004\u0018\u00010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/mogu/tv/ui/ForgetPassWordActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActForgetpassBinding;",
        "()V",
        "capObj",
        "Lcom/mogu/tv/model/CaptchaModel;",
        "getCapObj",
        "()Lcom/mogu/tv/model/CaptchaModel;",
        "setCapObj",
        "(Lcom/mogu/tv/model/CaptchaModel;)V",
        "commonNavigator",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "getCommonNavigator",
        "()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;",
        "commonNavigator$delegate",
        "Lkotlin/Lazy;",
        "getVerifyCode",
        "",
        "initData",
        "initView",
        "onDestroy",
        "senSms",
        "covertBase64ToBitmap",
        "Landroid/graphics/Bitmap;",
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
.field private capObj:Lcom/mogu/tv/model/CaptchaModel;

.field private final commonNavigator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/mogu/tv/ui/ForgetPassWordActivity$commonNavigator$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$commonNavigator$2;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getVerifyCode(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getVerifyCode()V

    return-void
.end method

.method public static final synthetic access$senSms(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->senSms()V

    return-void
.end method

.method private final getVerifyCode()V
    .locals 2

    .line 70
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/ForgetPassWordActivity$getVerifyCode$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$getVerifyCode$1;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getVerifyCodeImage(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method private final senSms()V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    .line 111
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v2, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etAccount:Landroid/widget/EditText;

    const-string v3, "etAccount"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity;->capObj:Lcom/mogu/tv/model/CaptchaModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/mogu/tv/model/CaptchaModel;->getCaptchaId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, ""

    :cond_1
    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etImgverify:Landroid/widget/EditText;

    const-string v4, "etImgverify"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/mogu/tv/ui/ForgetPassWordActivity$senSms$1$1;

    invoke-direct {v4, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$senSms$1$1;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mogu/tv/api/ApiManager;->senSMs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final covertBase64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .line 78
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    const-string v2, "data:image/png;base64,"

    .line 79
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    invoke-static {v0, v2, v1, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "data:image/png;base64,"

    const-string v7, ""

    move-object v5, p1

    .line 80
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_3
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 85
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getCapObj()Lcom/mogu/tv/model/CaptchaModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity;->capObj:Lcom/mogu/tv/model/CaptchaModel;

    return-object v0
.end method

.method public final getCommonNavigator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity;->commonNavigator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvSubmit:Landroid/widget/TextView;

    const-string v1, "binding.tvSubmit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 44
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v1, v1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->llHead:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->setPadding(Landroid/content/Context;Landroid/view/View;)V

    .line 45
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f060245

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/StatusBarUtil;->immersive(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    const-string v1, "binding.headLayout.ivBack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$1;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 52
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    iget-object v0, v0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5fd8\u8bb0\u5bc6\u7801"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvClick:Landroid/widget/TextView;

    const-string v1, "binding.tvClick"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$2;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 56
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->ivVerify:Landroid/widget/ImageView;

    const-string v1, "binding.ivVerify"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$3;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 59
    invoke-direct {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getVerifyCode()V

    .line 60
    invoke-virtual {p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvGetVerifycation:Landroid/widget/TextView;

    const-string v1, "binding.tvGetVerifycation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    return-void
.end method

.method public final setCapObj(Lcom/mogu/tv/model/CaptchaModel;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity;->capObj:Lcom/mogu/tv/model/CaptchaModel;

    return-void
.end method
