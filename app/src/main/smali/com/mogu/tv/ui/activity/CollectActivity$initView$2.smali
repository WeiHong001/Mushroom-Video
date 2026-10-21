.class final Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CollectActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/CollectActivity;->initView()V
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/CollectActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    iget-object p1, p0, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/CollectActivity;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const-string/jumbo p1, "\u786e\u8ba4\u6e05\u7a7a?"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    new-instance p1, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2$1;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2;->this$0:Lcom/mogu/tv/ui/activity/CollectActivity;

    invoke-direct {p1, v0}, Lcom/mogu/tv/ui/activity/CollectActivity$initView$2$1;-><init>(Lcom/mogu/tv/ui/activity/CollectActivity;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/mogu/tv/utils/DialogUtils;->showSimpleDialog$default(Lcom/mogu/tv/utils/DialogUtils;Landroid/app/Activity;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
