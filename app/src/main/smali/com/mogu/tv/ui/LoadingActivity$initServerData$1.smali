.class final Lcom/mogu/tv/ui/LoadingActivity$initServerData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoadingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/LoadingActivity;->initServerData()V
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
        "Lcom/mogu/tv/model/AllAdsModel;",
        "Lkotlin/Unit;",
        ">;"
    }
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
        "Lcom/mogu/tv/model/AllAdsModel;",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/AllAdsModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/AllAdsModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/AllAdsModel;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    if-eqz p3, :cond_6

    .line 220
    sget-object p1, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {p1, p3}, Lcom/mogu/tv/model/GlobeAppData;->setAdConfigData(Lcom/mogu/tv/model/AllAdsModel;)V

    .line 221
    invoke-virtual {p3}, Lcom/mogu/tv/model/AllAdsModel;->getStart()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_5

    .line 222
    invoke-virtual {p3}, Lcom/mogu/tv/model/AllAdsModel;->getStart()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    .line 223
    invoke-static {p1}, Lcom/mogu/tv/model/AllAdsModelKt;->getRandomAd(Ljava/util/List;)Lcom/mogu/tv/model/AllAdsModel$Item;

    move-result-object p1

    .line 224
    invoke-virtual {v1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;->adImg:Landroid/widget/ImageView;

    const-string v3, "binding.adImg"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v2, v4}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;->ivLoading:Landroid/widget/ImageView;

    const-string v4, "binding.ivLoading"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 226
    invoke-virtual {v1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rlLoading:Landroid/widget/LinearLayout;

    const-string v4, "binding.rlLoading"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 227
    invoke-virtual {v1}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object v2, v2, Lcom/mogu/tv/databinding/ActLoadpageBinding;->adImg:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1$1$1;

    invoke-direct {v3, v1, p1}, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1$1$1;-><init>(Lcom/mogu/tv/ui/LoadingActivity;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x6

    .line 233
    invoke-static {v1, p1}, Lcom/mogu/tv/ui/LoadingActivity;->access$showMain(Lcom/mogu/tv/ui/LoadingActivity;I)V

    .line 234
    invoke-virtual {p3}, Lcom/mogu/tv/model/AllAdsModel;->getStart()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_7

    .line 235
    invoke-static {v1, p2}, Lcom/mogu/tv/ui/LoadingActivity;->access$showMain(Lcom/mogu/tv/ui/LoadingActivity;I)V

    goto :goto_3

    .line 239
    :cond_5
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-static {p1, p2}, Lcom/mogu/tv/ui/LoadingActivity;->access$showMain(Lcom/mogu/tv/ui/LoadingActivity;I)V

    goto :goto_3

    .line 242
    :cond_6
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$initServerData$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    invoke-static {p1, p2}, Lcom/mogu/tv/ui/LoadingActivity;->access$showMain(Lcom/mogu/tv/ui/LoadingActivity;I)V

    :cond_7
    :goto_3
    return-void
.end method
