.class final Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ShequDetailsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/ShequDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$3;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 209
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance p1, Lcom/mogu/tv/view/SharePopDialog;

    .line 211
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/ShequDetailsActivity$fitData$1$1$3;->this$0:Lcom/mogu/tv/ui/activity/ShequDetailsActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/ShequDetailsActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    .line 213
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getShareLinkWithInvite()Ljava/lang/String;

    move-result-object v4

    const/high16 v3, 0x7f0f0000

    const-string/jumbo v5, "\u8611\u83c7\u89c6\u9891"

    const-string/jumbo v6, "\u6c38\u4e45\u514d\u8d39\uff0c\u65e0\u5f3a\u5236\u5e7f\u544a\uff0c\u7cbe\u5f69\u6210\u4eba\u89c6\u9891\u5e94\u7528"

    move-object v1, p1

    .line 210
    invoke-direct/range {v1 .. v6}, Lcom/mogu/tv/view/SharePopDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/mogu/tv/view/SharePopDialog;->show()V

    return-void
.end method
