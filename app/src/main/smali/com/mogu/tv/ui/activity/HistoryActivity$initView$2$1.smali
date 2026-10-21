.class final Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HistoryActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2;->invoke(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/HistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3, v2}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 33
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    new-instance v1, Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1$1;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1;->this$0:Lcom/mogu/tv/ui/activity/HistoryActivity;

    invoke-direct {v1, v2}, Lcom/mogu/tv/ui/activity/HistoryActivity$initView$2$1$1;-><init>(Lcom/mogu/tv/ui/activity/HistoryActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    const-string v2, "0"

    invoke-virtual {v0, v2, v1}, Lcom/mogu/tv/api/ApiManager;->historyDel(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
