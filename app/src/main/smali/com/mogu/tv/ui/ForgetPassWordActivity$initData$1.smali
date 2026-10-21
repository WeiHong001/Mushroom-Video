.class final Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ForgetPassWordActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/ForgetPassWordActivity;->initData()V
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
    value = "SMAP\nForgetPassWordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPassWordActivity.kt\ncom/mogu/tv/ui/ForgetPassWordActivity$initData$1\n+ 2 Androidutils.kt\ncom/kotlin/basiclib/AndroidutilsKt\n+ 3 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,121:1\n107#2,2:122\n109#2,3:129\n107#2,2:132\n109#2,3:139\n107#2,2:142\n109#2,3:149\n107#2,2:152\n109#2,3:159\n107#2,2:162\n109#2,3:169\n68#3,5:124\n68#3,5:134\n68#3,5:144\n68#3,5:154\n68#3,5:164\n*S KotlinDebug\n*F\n+ 1 ForgetPassWordActivity.kt\ncom/mogu/tv/ui/ForgetPassWordActivity$initData$1\n*L\n90#1:122,2\n90#1:129,3\n91#1:132,2\n91#1:139,3\n92#1:142,2\n92#1:149,3\n93#1:152,2\n93#1:159,3\n94#1:162,2\n94#1:169,3\n90#1:124,5\n91#1:134,5\n92#1:144,5\n93#1:154,5\n94#1:164,5\n*E\n"
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
.field final synthetic this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;->this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;->this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    iget-object v0, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1;->this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;

    check-cast p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    .line 90
    iget-object v1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etAccount:Landroid/widget/EditText;

    const-string v2, "etAccount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    const-string v3, "Toast\n        .makeText(\u2026         show()\n        }"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    .line 125
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-object v1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword:Landroid/widget/EditText;

    const-string v5, "etPassword"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    const-string/jumbo v6, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    if-eqz v1, :cond_1

    .line 133
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 135
    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {p1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 136
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_1
    iget-object v1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword2:Landroid/widget/EditText;

    const-string v7, "etPassword2"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 145
    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {p1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_2
    iget-object v1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword:Landroid/widget/EditText;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword2:Landroid/widget/EditText;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v6}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 153
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u5bc6\u7801\u8f93\u5165\u4e0d\u76f8\u540c"

    .line 155
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 156
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_3
    iget-object v1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etVerify:Landroid/widget/EditText;

    const-string v6, "etVerify"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u624b\u673a\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 165
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 166
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_4
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v3, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etAccount:Landroid/widget/EditText;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword:Landroid/widget/EditText;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etVerify:Landroid/widget/EditText;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1$1$6;

    invoke-direct {v4, v0}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initData$1$1$6;-><init>(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/mogu/tv/api/ApiManager;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
