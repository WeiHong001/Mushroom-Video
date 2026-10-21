.class final Lcom/mogu/tv/ui/LoadingActivity$startGetData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LoadingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/LoadingActivity;->startGetData()V
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
.method public static synthetic $r8$lambda$w0wLPB-QmtjLkVpVvk96kvMYrec(Lcom/mogu/tv/ui/LoadingActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/ui/LoadingActivity$startGetData$1;->invoke$lambda-0(Lcom/mogu/tv/ui/LoadingActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/ui/LoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$startGetData$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/mogu/tv/ui/LoadingActivity;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/kotlin/basiclib/utils/SpUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/SpUtil;

    sget-object v1, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    invoke-virtual {v1}, Lcom/mogu/tv/common/cache/CacheKey;->getLOCK()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/kotlin/basiclib/utils/SpUtil;->getString$default(Lcom/kotlin/basiclib/utils/SpUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rlPhoto:Landroid/widget/RelativeLayout;

    const-string v2, "binding.rlPhoto"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 121
    invoke-static {p0}, Lcom/mogu/tv/ui/LoadingActivity;->access$initServerData(Lcom/mogu/tv/ui/LoadingActivity;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/mogu/tv/ui/LoadingActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->llLock:Landroid/widget/LinearLayout;

    const-string v2, "binding.llLock"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 124
    invoke-static {p0}, Lcom/mogu/tv/ui/LoadingActivity;->access$initLock(Lcom/mogu/tv/ui/LoadingActivity;)V

    .line 126
    :goto_0
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getTypes()Lcom/mogu/tv/model/VideoTypes;

    .line 127
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->initFirst()V

    .line 128
    invoke-static {p0}, Lcom/mogu/tv/ui/LoadingActivity;->access$getShareLink(Lcom/mogu/tv/ui/LoadingActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/AllAdsModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/ui/LoadingActivity$startGetData$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/AllAdsModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/AllAdsModel;)V
    .locals 0

    const-string p3, "msg"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    .line 115
    sget-object p1, Lcom/mogu/tv/api/ApiClient;->INSTANCE:Lcom/mogu/tv/api/ApiClient;

    sget-object p2, Lcom/mogu/tv/api/ApiClient;->INSTANCE:Lcom/mogu/tv/api/ApiClient;

    invoke-virtual {p2}, Lcom/mogu/tv/api/ApiClient;->getDefaltApi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/api/ApiClient;->setRetrofit(Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/ui/LoadingActivity$startGetData$1;->this$0:Lcom/mogu/tv/ui/LoadingActivity;

    new-instance p2, Lcom/mogu/tv/ui/LoadingActivity$startGetData$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/mogu/tv/ui/LoadingActivity$startGetData$1$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/ui/LoadingActivity;)V

    invoke-virtual {p1, p2}, Lcom/mogu/tv/ui/LoadingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
