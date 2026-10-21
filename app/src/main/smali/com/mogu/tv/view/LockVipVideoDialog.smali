.class public final Lcom/mogu/tv/view/LockVipVideoDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "LockVipVideoDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002J?\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00172!\u0010\u0018\u001a\u001d\u0012\u0013\u0012\u00110\u001a\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u000f0\u0019J\u0008\u0010\u001e\u001a\u00020\u000fH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/mogu/tv/view/LockVipVideoDialog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "ivGoShare",
        "Landroid/widget/ImageView;",
        "getIvGoShare",
        "()Landroid/widget/ImageView;",
        "setIvGoShare",
        "(Landroid/widget/ImageView;)V",
        "ivUnlock",
        "getIvUnlock",
        "setIvUnlock",
        "dismiss",
        "",
        "init",
        "initView",
        "setLayout",
        "setUnLockData",
        "data",
        "Lcom/mogu/tv/model/VipVideoList$Data;",
        "goShare",
        "Lkotlin/Function0;",
        "unlockData",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "vipId",
        "show",
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
.field private ivGoShare:Landroid/widget/ImageView;

.field private ivUnlock:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f13014e

    .line 33
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-direct {p0}, Lcom/mogu/tv/view/LockVipVideoDialog;->init()V

    .line 58
    invoke-direct {p0}, Lcom/mogu/tv/view/LockVipVideoDialog;->setLayout()V

    .line 59
    invoke-direct {p0}, Lcom/mogu/tv/view/LockVipVideoDialog;->initView()V

    return-void
.end method

.method private final init()V
    .locals 1

    const v0, 0x7f0d0052

    .line 35
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/LockVipVideoDialog;->setContentView(I)V

    return-void
.end method

.method private final initView()V
    .locals 1

    const v0, 0x7f0a0187

    .line 66
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/LockVipVideoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivUnlock:Landroid/widget/ImageView;

    const v0, 0x7f0a017d

    .line 67
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/LockVipVideoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivGoShare:Landroid/widget/ImageView;

    return-void
.end method

.method private final setLayout()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/mogu/tv/view/LockVipVideoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 40
    invoke-virtual {p0}, Lcom/mogu/tv/view/LockVipVideoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 41
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/view/LockVipVideoDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/LockVipVideoDialog;->setCancelable(Z)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/LockVipVideoDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final getIvGoShare()Landroid/widget/ImageView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivGoShare:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIvUnlock()Landroid/widget/ImageView;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivUnlock:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final setIvGoShare(Landroid/widget/ImageView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivGoShare:Landroid/widget/ImageView;

    return-void
.end method

.method public final setIvUnlock(Landroid/widget/ImageView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivUnlock:Landroid/widget/ImageView;

    return-void
.end method

.method public final setUnLockData(Lcom/mogu/tv/model/VipVideoList$Data;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mogu/tv/model/VipVideoList$Data;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goShare"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unlockData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivUnlock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;

    invoke-direct {v1, p1, p0, p3}, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$1;-><init>(Lcom/mogu/tv/model/VipVideoList$Data;Lcom/mogu/tv/view/LockVipVideoDialog;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/mogu/tv/main/UserManagerKt;->LoginClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/view/LockVipVideoDialog;->ivGoShare:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/view/View;

    new-instance p3, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$2;

    invoke-direct {p3, p2, p0}, Lcom/mogu/tv/view/LockVipVideoDialog$setUnLockData$2;-><init>(Lkotlin/jvm/functions/Function0;Lcom/mogu/tv/view/LockVipVideoDialog;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p3}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    return-void
.end method
