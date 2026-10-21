.class public Lcom/uuzuche/lib_zxing/activity/ZXingLibrary;
.super Ljava/lang/Object;
.source "ZXingLibrary.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDisplayOpinion(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 19
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->density:F

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->densityDPI:I

    .line 21
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenWidthPx:I

    .line 22
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenhightPx:I

    .line 23
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/uuzuche/lib_zxing/DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenWidthDip:F

    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/uuzuche/lib_zxing/DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    sput p0, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenHightDip:F

    return-void
.end method
