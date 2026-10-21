.class final Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CommentNewsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/CommentNewsActivity;->toComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/mogu/tv/model/JustReturnMsg;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommentNewsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentNewsActivity.kt\ncom/mogu/tv/ui/CommentNewsActivity$toComment$2\n+ 2 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,89:1\n68#2,5:90\n68#2,5:95\n*S KotlinDebug\n*F\n+ 1 CommentNewsActivity.kt\ncom/mogu/tv/ui/CommentNewsActivity$toComment$2\n*L\n71#1:90,5\n76#1:95,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
        "Lcom/mogu/tv/model/JustReturnMsg;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/CommentNewsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/CommentNewsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->this$0:Lcom/mogu/tv/ui/CommentNewsActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/JustReturnMsg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/JustReturnMsg;)V
    .locals 2

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p3, p0, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->this$0:Lcom/mogu/tv/ui/CommentNewsActivity;

    invoke-virtual {p3}, Lcom/mogu/tv/ui/CommentNewsActivity;->dissmissLoading()V

    const-string p3, "Toast\n        .makeText(\u2026         show()\n        }"

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->this$0:Lcom/mogu/tv/ui/CommentNewsActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/CommentNewsActivity;->setSend(Z)V

    .line 71
    iget-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->this$0:Lcom/mogu/tv/ui/CommentNewsActivity;

    check-cast p1, Landroid/content/Context;

    const-string/jumbo p2, "\u8bc4\u8bba\u6210\u529f"

    check-cast p2, Ljava/lang/CharSequence;

    .line 91
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object p2, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {p2}, Lcom/mogu/tv/common/cache/CacheKey;->getCACHECOMMENTKEY()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/kotlin/basiclib/utils/SpUtil;->saveValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lcom/kotlin/basiclib/utils/EventBusUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/EventBusUtil;

    new-instance p2, Lcom/mogu/tv/model/CommentSuccess;

    invoke-direct {p2}, Lcom/mogu/tv/model/CommentSuccess;-><init>()V

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->this$0:Lcom/mogu/tv/ui/CommentNewsActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/CommentNewsActivity;->finish()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/CommentNewsActivity$toComment$2;->this$0:Lcom/mogu/tv/ui/CommentNewsActivity;

    check-cast p1, Landroid/content/Context;

    .line 96
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
