.class final Lcom/mogu/tv/ui/activity/QiuPianActivity$refreshVerify$1;
.super Lkotlin/jvm/internal/Lambda;
.source "QiuPianActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/QiuPianActivity;->refreshVerify()V
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
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "msg",
        "",
        "response",
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

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/QiuPianActivity$refreshVerify$1;->this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/activity/QiuPianActivity$refreshVerify$1;->invoke(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/mogu/tv/ui/activity/QiuPianActivity$refreshVerify$1;->this$0:Lcom/mogu/tv/ui/activity/QiuPianActivity;

    invoke-virtual {p1}, Lcom/mogu/tv/ui/activity/QiuPianActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/databinding/ActQiupianBinding;

    iget-object p1, p1, Lcom/mogu/tv/databinding/ActQiupianBinding;->ivVerify:Landroid/widget/ImageView;

    const-string p2, "binding.ivVerify"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
