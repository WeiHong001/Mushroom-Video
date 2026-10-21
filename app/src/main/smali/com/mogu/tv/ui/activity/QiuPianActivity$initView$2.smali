.class final Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QiuPianActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/QiuPianActivity;->initView()V
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
    value = "SMAP\nQiuPianActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QiuPianActivity.kt\ncom/mogu/tv/ui/activity/QiuPianActivity$initView$2\n+ 2 Androidutils.kt\ncom/kotlin/basiclib/AndroidutilsKt\n+ 3 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,56:1\n107#2,2:57\n109#2,3:64\n107#2,2:67\n109#2,3:74\n68#3,5:59\n68#3,5:69\n*S KotlinDebug\n*F\n+ 1 QiuPianActivity.kt\ncom/mogu/tv/ui/activity/QiuPianActivity$initView$2\n*L\n25#1:57,2\n25#1:64,3\n28#1:67,2\n28#1:74,3\n25#1:59,5\n28#1:69,5\n*E\n"
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/QiuPianActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActQiupianBinding;->etPassword:Landroid/widget/EditText;

    const-string v0, "binding.etPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "Toast\n        .makeText(\u2026         show()\n        }"

    if-eqz p1, :cond_1

    .line 58
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 60
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 61
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActQiupianBinding;->etVerify:Landroid/widget/EditText;

    const-string v3, "binding.etVerify"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 68
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 70
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/QiuPianActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->save()V

    return-void
.end method
