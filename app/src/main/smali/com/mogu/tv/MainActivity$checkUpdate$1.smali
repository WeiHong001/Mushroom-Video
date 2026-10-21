.class final Lcom/mogu/tv/MainActivity$checkUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/MainActivity;->checkUpdate()V
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
        "Lcom/mogu/tv/model/MoguConfig;",
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
        "Lcom/mogu/tv/model/MoguConfig;",
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
.field final synthetic this$0:Lcom/mogu/tv/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$LWJg40VZe9USh_zuh0BbC1VU0Os(Lcom/mogu/tv/MainActivity;Lcom/mogu/tv/model/UpdateModol;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mogu/tv/MainActivity$checkUpdate$1;->invoke$lambda-1(Lcom/mogu/tv/MainActivity;Lcom/mogu/tv/model/UpdateModol;)V

    return-void
.end method

.method constructor <init>(Lcom/mogu/tv/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1;->this$0:Lcom/mogu/tv/MainActivity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/mogu/tv/MainActivity;Lcom/mogu/tv/model/UpdateModol;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/mogu/tv/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    sget-object v0, Lcom/mogu/tv/utils/DialogUtils;->INSTANCE:Lcom/mogu/tv/utils/DialogUtils;

    invoke-virtual {p1}, Lcom/mogu/tv/model/UpdateModol;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mogu/tv/utils/DialogUtils;->parseVersionCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;-><init>(Landroid/app/Activity;)V

    .line 252
    invoke-virtual {p1}, Lcom/mogu/tv/model/UpdateModol;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkUrl(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kotlin/basiclib/base/BaseApplicaiton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkName(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    const/high16 p0, 0x7f0f0000

    .line 256
    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->smallIcon(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    const p0, 0x7fffffff

    .line 258
    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionCode(I)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    .line 259
    invoke-virtual {p1}, Lcom/mogu/tv/model/UpdateModol;->getForce()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->forcedUpgrade(Z)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    .line 260
    invoke-virtual {p1}, Lcom/mogu/tv/model/UpdateModol;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkVersionName(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    .line 261
    invoke-virtual {p1}, Lcom/mogu/tv/model/UpdateModol;->getApksize()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkSize(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    .line 262
    invoke-virtual {p1}, Lcom/mogu/tv/model/UpdateModol;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->apkDescription(Ljava/lang/String;)Lcom/azhon/appupdate/manager/DownloadManager$Builder;

    .line 264
    invoke-virtual {v0}, Lcom/azhon/appupdate/manager/DownloadManager$Builder;->build()Lcom/azhon/appupdate/manager/DownloadManager;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Lcom/azhon/appupdate/manager/DownloadManager;->download()V

    goto :goto_1

    .line 268
    :cond_1
    invoke-static {p0}, Lcom/mogu/tv/MainActivity;->access$showNotice(Lcom/mogu/tv/MainActivity;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/mogu/tv/model/MoguConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mogu/tv/MainActivity$checkUpdate$1;->invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;Lcom/mogu/tv/model/MoguConfig;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 247
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lcom/mogu/tv/model/MoguConfig;->getValue()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/mogu/tv/model/UpdateModol;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/model/UpdateModol;

    .line 248
    iget-object p2, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1;->this$0:Lcom/mogu/tv/MainActivity;

    invoke-virtual {p2}, Lcom/mogu/tv/MainActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/mogu/tv/databinding/ActivityMainBinding;

    iget-object p2, p2, Lcom/mogu/tv/databinding/ActivityMainBinding;->tabLayout:Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;

    iget-object p3, p0, Lcom/mogu/tv/MainActivity$checkUpdate$1;->this$0:Lcom/mogu/tv/MainActivity;

    new-instance v0, Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p1}, Lcom/mogu/tv/MainActivity$checkUpdate$1$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/MainActivity;Lcom/mogu/tv/model/UpdateModol;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p2, v0, v1, v2}, Lcom/kotlin/basiclib/widget/commontab/CommonTabLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
