.class final Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ForgetPassWordActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/ForgetPassWordActivity;->initView()V
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
    value = "SMAP\nForgetPassWordActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPassWordActivity.kt\ncom/mogu/tv/ui/ForgetPassWordActivity$initView$4\n+ 2 Androidutils.kt\ncom/kotlin/basiclib/AndroidutilsKt\n+ 3 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,121:1\n107#2,2:122\n109#2,3:129\n107#2,2:132\n109#2,3:139\n68#3,5:124\n68#3,5:134\n*S KotlinDebug\n*F\n+ 1 ForgetPassWordActivity.kt\ncom/mogu/tv/ui/ForgetPassWordActivity$initView$4\n*L\n62#1:122,2\n62#1:129,3\n63#1:132,2\n63#1:139,3\n62#1:124,5\n63#1:134,5\n*E\n"
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

    iput-object p1, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;->this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;->this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    iget-object v0, p0, Lcom/mogu/tv/ui/ForgetPassWordActivity$initView$4;->this$0:Lcom/mogu/tv/ui/ForgetPassWordActivity;

    check-cast p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    .line 62
    iget-object v1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etAccount:Landroid/widget/EditText;

    const-string v2, "etAccount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    const-string v2, "Toast\n        .makeText(\u2026         show()\n        }"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    .line 125
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 126
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    iget-object p1, p1, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etImgverify:Landroid/widget/EditText;

    const-string v1, "etImgverify"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u56fe\u7247\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 135
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 136
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_1
    invoke-static {v0}, Lcom/mogu/tv/ui/ForgetPassWordActivity;->access$senSms(Lcom/mogu/tv/ui/ForgetPassWordActivity;)V

    return-void
.end method
