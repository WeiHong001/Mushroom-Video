.class final Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RegistFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/frag/RegistFragment;->initData()V
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
    value = "SMAP\nRegistFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistFragment.kt\ncom/mogu/tv/ui/frag/RegistFragment$initData$1\n+ 2 Androidutils.kt\ncom/kotlin/basiclib/AndroidutilsKt\n+ 3 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,73:1\n107#2,2:74\n109#2,3:81\n107#2,2:84\n109#2,3:91\n107#2,2:94\n109#2,3:101\n68#3,5:76\n68#3,5:86\n68#3,5:96\n*S KotlinDebug\n*F\n+ 1 RegistFragment.kt\ncom/mogu/tv/ui/frag/RegistFragment$initData$1\n*L\n54#1:74,2\n54#1:81,3\n55#1:84,2\n55#1:91,3\n56#1:94,2\n56#1:101,3\n54#1:76,5\n55#1:86,5\n56#1:96,5\n*E\n"
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
.field final synthetic this$0:Lcom/mogu/tv/ui/frag/RegistFragment;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/frag/RegistFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/FragRegistBinding;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1;->this$0:Lcom/mogu/tv/ui/frag/RegistFragment;

    .line 54
    iget-object v1, p1, Lcom/mogu/tv/databinding/FragRegistBinding;->etAccount:Landroid/widget/EditText;

    const-string v2, "etAccount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    const-string v3, "Toast\n        .makeText(\u2026         show()\n        }"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 75
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    .line 77
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    iget-object v1, p1, Lcom/mogu/tv/databinding/FragRegistBinding;->etPassword:Landroid/widget/EditText;

    const-string v5, "etPassword"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 87
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_1
    iget-object v1, p1, Lcom/mogu/tv/databinding/FragRegistBinding;->etImgverify:Landroid/widget/EditText;

    const-string v6, "etImgverify"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->isEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo v0, "\u56fe\u7247\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 97
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_2
    sget-object v1, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v3, p1, Lcom/mogu/tv/databinding/FragRegistBinding;->etAccount:Landroid/widget/EditText;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/mogu/tv/databinding/FragRegistBinding;->etPassword:Landroid/widget/EditText;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1$1$4;

    invoke-direct {v3, v0}, Lcom/mogu/tv/ui/frag/RegistFragment$initData$1$1$4;-><init>(Lcom/mogu/tv/ui/frag/RegistFragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, v2, p1, v3}, Lcom/mogu/tv/api/ApiManager;->registUser(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :cond_3
    return-void
.end method
