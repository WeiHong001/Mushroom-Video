.class final Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PiankuActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/PiankuActivity;->showBanner()V
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
.field final synthetic $randomAd:Lcom/mogu/tv/model/AllAdsModel$Item;

.field final synthetic this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/PiankuActivity;Lcom/mogu/tv/model/AllAdsModel$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    iput-object p2, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;->$randomAd:Lcom/mogu/tv/model/AllAdsModel$Item;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;->this$0:Lcom/mogu/tv/ui/activity/PiankuActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/ui/activity/PiankuActivity;->getMActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;->$randomAd:Lcom/mogu/tv/model/AllAdsModel$Item;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mogu/tv/model/AllAdsModel$Item;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/mogu/tv/common/arouter/ArouterUtils;->toUrlPraseJump(Landroid/app/Activity;Ljava/lang/String;)V

    .line 123
    sget-object p1, Lcom/mogu/tv/common/arouter/ArouterUtils;->INSTANCE:Lcom/mogu/tv/common/arouter/ArouterUtils;

    iget-object v0, p0, Lcom/mogu/tv/ui/activity/PiankuActivity$showBanner$1;->$randomAd:Lcom/mogu/tv/model/AllAdsModel$Item;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mogu/tv/model/AllAdsModel$Item;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mogu/tv/common/arouter/ArouterUtils;->clickAd(Ljava/lang/String;)V

    return-void
.end method
