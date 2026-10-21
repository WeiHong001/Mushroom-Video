.class public final Lcom/mogu/tv/view/ShareVipVIdeoDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "ShareVipVIdeoDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020*H\u0002J\u0008\u0010,\u001a\u00020*H\u0002J\u000e\u0010-\u001a\u00020*2\u0006\u0010.\u001a\u00020/J\u0008\u00100\u001a\u00020*H\u0002J\u0008\u00101\u001a\u00020*H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R\u001c\u0010 \u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0017\"\u0004\u0008\"\u0010\u0019R\u001c\u0010#\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0017\"\u0004\u0008%\u0010\u0019R\u001c\u0010&\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0017\"\u0004\u0008(\u0010\u0019\u00a8\u00062"
    }
    d2 = {
        "Lcom/mogu/tv/view/ShareVipVIdeoDialog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "flRoot",
        "Landroid/widget/FrameLayout;",
        "getFlRoot",
        "()Landroid/widget/FrameLayout;",
        "setFlRoot",
        "(Landroid/widget/FrameLayout;)V",
        "ivItem",
        "Landroid/widget/ImageView;",
        "getIvItem",
        "()Landroid/widget/ImageView;",
        "setIvItem",
        "(Landroid/widget/ImageView;)V",
        "ivQrCode",
        "getIvQrCode",
        "setIvQrCode",
        "tvAddressTitle",
        "Landroid/widget/TextView;",
        "getTvAddressTitle",
        "()Landroid/widget/TextView;",
        "setTvAddressTitle",
        "(Landroid/widget/TextView;)V",
        "tvHint",
        "getTvHint",
        "setTvHint",
        "tvSaveLink",
        "getTvSaveLink",
        "setTvSaveLink",
        "tvSavePhoto",
        "getTvSavePhoto",
        "setTvSavePhoto",
        "tvShareAddress",
        "getTvShareAddress",
        "setTvShareAddress",
        "tvTitle",
        "getTvTitle",
        "setTvTitle",
        "dismiss",
        "",
        "init",
        "initView",
        "refreshData",
        "data",
        "Lcom/mogu/tv/model/VipVideoList$Data;",
        "setLayout",
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
.field private flRoot:Landroid/widget/FrameLayout;

.field private ivItem:Landroid/widget/ImageView;

.field private ivQrCode:Landroid/widget/ImageView;

.field private tvAddressTitle:Landroid/widget/TextView;

.field private tvHint:Landroid/widget/TextView;

.field private tvSaveLink:Landroid/widget/TextView;

.field private tvSavePhoto:Landroid/widget/TextView;

.field private tvShareAddress:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f13014e

    .line 31
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-direct {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->init()V

    .line 56
    invoke-direct {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->setLayout()V

    .line 57
    invoke-direct {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->initView()V

    return-void
.end method

.method private final init()V
    .locals 1

    const v0, 0x7f0d0091

    .line 33
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->setContentView(I)V

    return-void
.end method

.method private final initView()V
    .locals 1

    const v0, 0x7f0a017f

    .line 70
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivItem:Landroid/widget/ImageView;

    const v0, 0x7f0a0185

    .line 71
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivQrCode:Landroid/widget/ImageView;

    const v0, 0x7f0a0368

    .line 72
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0365

    .line 73
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvShareAddress:Landroid/widget/TextView;

    const v0, 0x7f0a013c

    .line 74
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->flRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0353

    .line 75
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvHint:Landroid/widget/TextView;

    const v0, 0x7f0a0364

    .line 76
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSavePhoto:Landroid/widget/TextView;

    const v0, 0x7f0a0363

    .line 77
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSaveLink:Landroid/widget/TextView;

    const v0, 0x7f0a034b

    .line 78
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvAddressTitle:Landroid/widget/TextView;

    return-void
.end method

.method private final setLayout()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 38
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 40
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    invoke-virtual {p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->setCancelable(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public final getFlRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->flRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getIvItem()Landroid/widget/ImageView;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIvQrCode()Landroid/widget/ImageView;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivQrCode:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTvAddressTitle()Landroid/widget/TextView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvAddressTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvHint()Landroid/widget/TextView;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvHint:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvSaveLink()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSaveLink:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvSavePhoto()Landroid/widget/TextView;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSavePhoto:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvShareAddress()Landroid/widget/TextView;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvShareAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public final refreshData(Lcom/mogu/tv/model/VipVideoList$Data;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mogu/tv/model/VipVideoList$Data;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mogu/tv/model/VipVideoList$Data;->getCover()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mogu/tv/utils/ImageUtilKt;->with(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvShareAddress:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getShareLinkWithInvite()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_1
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivQrCode:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/mogu/tv/model/GlobeAppData;->INSTANCE:Lcom/mogu/tv/model/GlobeAppData;

    invoke-virtual {v0}, Lcom/mogu/tv/model/GlobeAppData;->getShareLinkWithInvite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->getQRBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSaveLink:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$1;->INSTANCE:Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSavePhoto:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;

    invoke-direct {v0, p0}, Lcom/mogu/tv/view/ShareVipVIdeoDialog$refreshData$2;-><init>(Lcom/mogu/tv/view/ShareVipVIdeoDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/AndroidutilsKt;->click(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_5
    return-void
.end method

.method public final setFlRoot(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->flRoot:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setIvItem(Landroid/widget/ImageView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivItem:Landroid/widget/ImageView;

    return-void
.end method

.method public final setIvQrCode(Landroid/widget/ImageView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->ivQrCode:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTvAddressTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvAddressTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvHint(Landroid/widget/TextView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvHint:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvSaveLink(Landroid/widget/TextView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSaveLink:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvSavePhoto(Landroid/widget/TextView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvSavePhoto:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvShareAddress(Landroid/widget/TextView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvShareAddress:Landroid/widget/TextView;

    return-void
.end method

.method public final setTvTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mogu/tv/view/ShareVipVIdeoDialog;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public show()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->show()V

    return-void
.end method
