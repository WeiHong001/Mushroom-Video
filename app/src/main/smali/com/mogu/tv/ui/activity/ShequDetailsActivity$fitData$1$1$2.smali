.class final Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShequDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->fitData()V
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
.field final synthetic $this_run:Lcom/mogu/tv/model/ShequDetailsModel;

.field final synthetic $this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/model/ShequDetailsModel;Lcom/mogu/tv/ui/activity/ShequDetailsActivity;Lcom/mogu/tv/databinding/ActShequinfoBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    iput-object p2, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    iput-object p3, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    invoke-virtual {v0}, Lcom/mogu/tv/model/ShequDetailsModel;->isZan()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    check-cast v0, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3, v1}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 189
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->getMData()Lcom/mogu/tv/model/ShequDetailsModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mogu/tv/model/ShequDetailsModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$1;

    iget-object v3, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    iget-object v5, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

    invoke-direct {v2, v3, v4, v5}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$1;-><init>(Lcom/mogu/tv/ui/activity/ShequDetailsActivity;Lcom/mogu/tv/model/ShequDetailsModel;Lcom/mogu/tv/databinding/ActShequinfoBinding;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->starDelSqDetails(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    .line 198
    :cond_1
    sget-object v0, Lcom/mogu/tv/api/ApiManager;->INSTANCE:Lcom/mogu/tv/api/ApiManager;

    iget-object v2, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    invoke-virtual {v2}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->getMData()Lcom/mogu/tv/model/ShequDetailsModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mogu/tv/model/ShequDetailsModel;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;

    iget-object v3, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    iget-object v4, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run:Lcom/mogu/tv/model/ShequDetailsModel;

    iget-object v5, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2;->$this_run$1:Lcom/mogu/tv/databinding/ActShequinfoBinding;

    invoke-direct {v2, v3, v4, v5}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$2$2;-><init>(Lcom/mogu/tv/ui/activity/ShequDetailsActivity;Lcom/mogu/tv/model/ShequDetailsModel;Lcom/mogu/tv/databinding/ActShequinfoBinding;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2}, Lcom/mogu/tv/api/ApiManager;->blogStar(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    :goto_0
    return-void
.end method
