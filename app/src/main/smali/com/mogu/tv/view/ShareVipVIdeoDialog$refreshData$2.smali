.class final Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShareVipVIdeoDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/view/ShareVipVIdeoDialog;->refreshData(Lcom/mogu/tv/model/VipVideoList$Data;)V
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
.field final synthetic this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;


# direct methods
.method public static synthetic $r8$lambda$OBk8PY-qU1BvpB2rEQ-I4LzuR4I(Lcom/mogu/tv/view/ShareVipVIdeoDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->invoke$lambda-0(Lcom/mogu/tv/view/ShareVipVIdeoDialog;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/view/ShareVipVIdeoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/mogu/tv/view/ShareVipVIdeoDialog;)V
    .locals 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u8611\u83c7\u5206\u4eab\u56fe\u7247.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getFlRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 97
    invoke-static {v0}, Lcom/mogu/tv/utils/ScreenShotUtils;->loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v0, "loadBitmapFromView"

    .line 100
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/mogu/tv/utils/FileImageUtilKt;->saveToAlbum$default(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v2, Lcom/qushare/news/utils/ShareUtils;->INSTANCE:Lcom/qushare/news/utils/ShareUtils;

    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/qushare/news/utils/ShareUtils;->shareImg(Landroid/content/Context;Landroid/net/Uri;)V

    .line 104
    :cond_0
    sget-object v0, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v1, "\u4fdd\u5b58\u6210\u529f,\u524d\u53bb\u5206\u4eab!\u53ef\u5728\u76f8\u518c\u67e5\u770b\u9080\u8bf7\u6d77\u62a5"

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.mogu.tv.MainActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/mogu/tv/MainActivity;

    invoke-virtual {v0}, Lcom/mogu/tv/MainActivity;->dissmissLoading()V

    .line 106
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvSavePhoto()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvSaveLink()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvHint()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvAddressTitle()Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "\u5206\u4eab\u5730\u5740"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvSavePhoto()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvSaveLink()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvHint()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->setVisible(Landroid/view/View;Z)V

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvAddressTitle()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\u4e0b\u8f7d\u5730\u5740"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kotlin/basiclib/base/AcManage;->currentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.mogu.tv.MainActivity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/mogu/tv/MainActivity;

    check-cast p1, Lcom/kotlin/basiclib/base/CommonBaseActivity;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->showLoadingDialog$default(Lcom/kotlin/basiclib/base/CommonBaseActivity;ZLjava/lang/String;ILjava/lang/Object;)Landroid/app/Dialog;

    .line 95
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getTvAddressTitle()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;->this$0:Lcom/mogu/tv/view/ShareVipVIdeoDialog;

    new-instance v1, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/view/ShareVipVIdeoDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
