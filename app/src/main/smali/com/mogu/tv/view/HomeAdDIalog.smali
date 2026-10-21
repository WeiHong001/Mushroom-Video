.class public final Lcom/mogu/tv/view/HomeAdDIalog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "HomeAdDIalog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J$\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0019R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/mogu/tv/view/HomeAdDIalog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "ivAd",
        "Landroid/widget/ImageView;",
        "getIvAd",
        "()Landroid/widget/ImageView;",
        "setIvAd",
        "(Landroid/widget/ImageView;)V",
        "ivClose",
        "getIvClose",
        "setIvClose",
        "dismiss",
        "",
        "init",
        "initView",
        "setLayout",
        "show",
        "showAdData",
        "Landroid/app/Activity;",
        "data",
        "Lcom/mogu/tv/model/AllAdsModel$Item;",
        "dissmisscall",
        "Lkotlin/Function0;",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private ivAd:Landroid/widget/ImageView;

.field private ivClose:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f13014e

    .line 36
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    invoke-direct {p0}, Lcom/mogu/tv/view/HomeAdDIalog;->init()V

    .line 61
    invoke-direct {p0}, Lcom/mogu/tv/view/HomeAdDIalog;->setLayout()V

    .line 62
    invoke-direct {p0}, Lcom/mogu/tv/view/HomeAdDIalog;->initView()V

    return-void
.end method

.method private final init()V
    .locals 1

    const v0, 0x7f0d0050

    .line 38
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/HomeAdDIalog;->setContentView(I)V

    return-void
.end method

.method private final initView()V
    .locals 1

    const v0, 0x7f0a017a

    .line 69
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/HomeAdDIalog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivAd:Landroid/widget/ImageView;

    const v0, 0x7f0a017b

    .line 70
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/HomeAdDIalog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivClose:Landroid/widget/ImageView;

    return-void
.end method

.method private final setLayout()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/mogu/tv/view/HomeAdDIalog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/view/HomeAdDIalog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    invoke-virtual {p0}, Lcom/mogu/tv/view/HomeAdDIalog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/HomeAdDIalog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/HomeAdDIalog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final getIvAd()Landroid/widget/ImageView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivAd:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIvClose()Landroid/widget/ImageView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final setIvAd(Landroid/widget/ImageView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivAd:Landroid/widget/ImageView;

    return-void
.end method

.method public final setIvClose(Landroid/widget/ImageView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivClose:Landroid/widget/ImageView;

    return-void
.end method

.method public show()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    return-void
.end method

.method public final showAdData(Landroid/app/Activity;Lcom/mogu/tv/model/AllAdsModel$Item;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/mogu/tv/model/AllAdsModel$Item;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dissmisscall"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivAd:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mogu/tv/model/AllAdsModel$Item;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivAd:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/view/HomeAdDIalog$showAdData$1;

    invoke-direct {v1, p1, p2}, Lcom/mogu/tv/view/HomeAdDIalog$showAdData$1;-><init>(Landroid/app/Activity;Lcom/mogu/tv/model/AllAdsModel$Item;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/view/HomeAdDIalog;->ivClose:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    new-instance p2, Lcom/mogu/tv/view/HomeAdDIalog$showAdData$2;

    invoke-direct {p2, p3, p0}, Lcom/mogu/tv/view/HomeAdDIalog$showAdData$2;-><init>(Lkotlin/jvm/functions/Function0;Lcom/mogu/tv/view/HomeAdDIalog;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    return-void
.end method
