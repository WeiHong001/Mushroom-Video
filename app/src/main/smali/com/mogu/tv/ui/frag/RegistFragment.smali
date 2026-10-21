.class public final Lcom/mogu/tv/ui/frag/RegistFragment;
.super Lcom/kotlin/basiclib/base/CommonBaseFragment;
.source "RegistFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseFragment<",
        "Lcom/mogu/tv/databinding/FragRegistBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016J\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/mogu/tv/ui/frag/RegistFragment;",
        "Lcom/kotlin/basiclib/base/CommonBaseFragment;",
        "Lcom/mogu/tv/databinding/FragRegistBinding;",
        "()V",
        "capObj",
        "Lcom/mogu/tv/model/CaptchaModel;",
        "getCapObj",
        "()Lcom/mogu/tv/model/CaptchaModel;",
        "setCapObj",
        "(Lcom/mogu/tv/model/CaptchaModel;)V",
        "getVerifyCode",
        "",
        "initData",
        "initView",
        "onDestroy",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getVerifyCode(Lcom/mogu/tv/ui/frag/RegistFragment;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/RegistFragment;->getVerifyCode()V

    return-void
.end method

.method private final getVerifyCode()V
    .locals 2

    .line 44
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/RegistFragment$getVerifyCode$1;-><init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Lcom/mogu/tv/api/ApiManager;->getVerifyCodeImage(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final covertBase64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .line 33
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

    .line 34
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

    .line 35
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_3
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 40
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getCapObj()Lcom/mogu/tv/model/CaptchaModel;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/ui/frag/RegistFragment;->capObj:Lcom/mogu/tv/model/CaptchaModel;

    return-object v0
.end method

.method public initData()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/RegistFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragRegistBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragRegistBinding;->tvSubmit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;-><init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/RegistFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragRegistBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragRegistBinding;->tvClick:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/RegistFragment$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/RegistFragment$initView$1;-><init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/frag/RegistFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/FragRegistBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mogu/tv/databinding/FragRegistBinding;->ivVerify:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/ui/frag/RegistFragment$initView$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/frag/RegistFragment$initView$2;-><init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/mogu/tv/ui/frag/RegistFragment;->getVerifyCode()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->onDestroy()V

    return-void
.end method

.method public final setCapObj(Lcom/mogu/tv/model/CaptchaModel;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mogu/tv/ui/frag/RegistFragment;->capObj:Lcom/mogu/tv/model/CaptchaModel;

    return-void
.end method
