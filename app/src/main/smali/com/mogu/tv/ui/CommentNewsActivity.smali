.class public final Lcom/mogu/tv/ui/CommentNewsActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "CommentNewsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/DialogCommentBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentNewsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentNewsActivity.kt\ncom/mogu/tv/ui/CommentNewsActivity\n+ 2 Androidutils.kt\ncom/kotlin/basiclib/AndroidutilsKt\n+ 3 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,89:1\n107#2,2:90\n109#2,3:97\n68#3,5:92\n*S KotlinDebug\n*F\n+ 1 CommentNewsActivity.kt\ncom/mogu/tv/ui/CommentNewsActivity\n*L\n59#1:90,2\n59#1:97,3\n59#1:92,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u0017H\u0014J\u0006\u0010\u001a\u001a\u00020\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/mogu/tv/ui/CommentNewsActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/DialogCommentBinding;",
        "()V",
        "isSend",
        "",
        "()Z",
        "setSend",
        "(Z)V",
        "newsId",
        "",
        "getNewsId",
        "()Ljava/lang/String;",
        "setNewsId",
        "(Ljava/lang/String;)V",
        "type",
        "",
        "getType",
        "()Ljava/lang/Integer;",
        "setType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "initData",
        "",
        "initView",
        "onDestroy",
        "toComment",
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
.field private isSend:Z

.field private newsId:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->newsId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->type:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getNewsId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public initData()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->newsId:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->type:Ljava/lang/Integer;

    return-void
.end method

.method public initView()V
    .locals 5

    .line 30
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->fullScreen()V

    .line 31
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->setOrientationPro()V

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/DialogCommentBinding;

    .line 33
    iget-object v1, v0, Lcom/mogu/tv/databinding/DialogCommentBinding;->vExit:Landroid/view/View;

    const-string/jumbo v2, "vExit"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/mogu/tv/ui/CommentNewsActivity$initView$1$1;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/CommentNewsActivity$initView$1$1;-><init>(Lcom/mogu/tv/ui/CommentNewsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 36
    iget-object v1, v0, Lcom/mogu/tv/databinding/DialogCommentBinding;->tvSend:Landroid/widget/TextView;

    const-string/jumbo v2, "tvSend"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/mogu/tv/ui/CommentNewsActivity$initView$1$2;

    invoke-direct {v2, p0}, Lcom/mogu/tv/ui/CommentNewsActivity$initView$1$2;-><init>(Lcom/mogu/tv/ui/CommentNewsActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 39
    iget-object v0, v0, Lcom/mogu/tv/databinding/DialogCommentBinding;->editContent:Landroid/widget/EditText;

    sget-object v1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v2, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v2}, Lcom/mogu/tv/common/cache/CacheKey;->getCACHECOMMENTKEY()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcom/kotlin/basiclib/utils/SpUtil;->getString$default(Lcom/kotlin/basiclib/utils/SpUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final isSend()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->isSend:Z

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .line 45
    iget-boolean v0, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->isSend:Z

    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/DialogCommentBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/DialogCommentBinding;->editContent:Landroid/widget/EditText;

    const-string v1, "binding.editContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getCACHECOMMENTKEY()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    :cond_1
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v2, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v2}, Lcom/mogu/tv/common/cache/CacheKey;->getCACHECOMMENTKEY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/databinding/DialogCommentBinding;

    iget-object v3, v3, Lcom/mogu/tv/databinding/DialogCommentBinding;->editContent:Landroid/widget/EditText;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    return-void
.end method

.method public final setNewsId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->newsId:Ljava/lang/String;

    return-void
.end method

.method public final setSend(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->isSend:Z

    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->type:Ljava/lang/Integer;

    return-void
.end method

.method public final toComment()V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/DialogCommentBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/DialogCommentBinding;->editContent:Landroid/widget/EditText;

    const-string v1, "binding.editContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    .line 93
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v1, "Toast\n        .makeText(\u2026         show()\n        }"

    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2, v4}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 63
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    .line 64
    iget-object v2, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->newsId:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/mogu/tv/ui/CommentNewsActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/databinding/DialogCommentBinding;

    iget-object v4, v4, Lcom/mogu/tv/databinding/DialogCommentBinding;->editContent:Landroid/widget/EditText;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Lcom/kotlin/basiclib/AndroidutilsKt;->content(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-object v4, p0, Lcom/mogu/tv/ui/CommentNewsActivity;->type:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 63
    :cond_3
    new-instance v4, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;

    invoke-direct {v4, p0}, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;-><init>(Lcom/mogu/tv/ui/CommentNewsActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/mogu/tv/api/ApiManager;->saveComment(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function3;)V

    return-void
.end method
