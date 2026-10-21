.class final Lcom/mogu/tv/ui/frag/LoginFragment$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/LoginFragment;->initData()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/mogu/tv/ui/frag/LoginFragment$initData$1\n+ 2 Androidutils.kt\ncom/kotlin/basiclib/AndroidutilsKt\n+ 3 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,75:1\n107#2,2:76\n109#2,3:83\n107#2,2:86\n109#2,3:93\n107#2,2:96\n109#2,3:103\n68#3,5:78\n68#3,5:88\n68#3,5:98\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/mogu/tv/ui/frag/LoginFragment$initData$1\n*L\n58#1:76,2\n58#1:83,3\n59#1:86,2\n59#1:93,3\n60#1:96,2\n60#1:103,3\n58#1:78,5\n59#1:88,5\n60#1:98,5\n*E\n"
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/LoginFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/LoginFragment$initData$1;->this$0:Lcom/mogu/tv/ui/frag/LoginFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/LoginFragment$initData$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 14

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/LoginFragment$initData$1;->this$0:Lcom/mogu/tv/ui/frag/LoginFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/LoginFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/FragLoginBinding;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/LoginFragment$initData$1;->this$0:Lcom/mogu/tv/ui/frag/LoginFragment;

    .line 58
    iget-object v1, p1, Lcom/mogu/tv/databinding/FragLoginBinding;->etAccount:Landroid/widget/EditText;

    const-string v2, "etAccount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    const-string v3, "Toast\n        .makeText(\u2026         show()\n        }"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    .line 79
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    iget-object v1, p1, Lcom/mogu/tv/databinding/FragLoginBinding;->etPassword:Landroid/widget/EditText;

    const-string v5, "etPassword"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 89
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_1
    iget-object v1, p1, Lcom/mogu/tv/databinding/FragLoginBinding;->etVerify:Landroid/widget/EditText;

    const-string v6, "etVerify"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 99
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/kotlin/basiclib/base/CommonBaseFragment;

    const/4 v3, 0x3

    const/4 v7, 0x0

    invoke-static {v1, v4, v7, v3, v7}, Lcom/kotlin/basiclib/base/CommonBaseFragment;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseFragment;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 62
    sget-object v8, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v1, p1, Lcom/mogu/tv/databinding/FragLoginBinding;->etAccount:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p1, Lcom/mogu/tv/databinding/FragLoginBinding;->etPassword:Landroid/widget/EditText;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/mogu/tv/ui/frag/LoginFragment;->getCapObj()Lcom/mogu/tv/model/CaptchaModel;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mogu/tv/model/CaptchaModel;->getCaptchaId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ""

    :cond_4
    move-object v11, v1

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragLoginBinding;->etVerify:Landroid/widget/EditText;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v12

    new-instance p1, Lcom/mogu/tv/ui/frag/LoginFragment$initData$1$1$4;

    invoke-direct {p1, v0}, Lcom/mogu/tv/ui/frag/LoginFragment$initData$1$1$4;-><init>(Lcom/mogu/tv/ui/frag/LoginFragment;)V

    move-object v13, p1

    check-cast v13, Lkotlin/jvm/functions/Function3;

    invoke-virtual/range {v8 .. v13}, Lcom/mogu/tv/api/ApiManager;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :cond_5
    return-void
.end method
