.class public Lcom/uuzuche/lib_zxing/ZApplication;
.super Landroid/app/Application;
.source "ZApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initDisplayOpinion()V
    .locals 3

    .line 22
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/ZApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 23
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->density:F

    .line 24
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->densityDPI:I

    .line 25
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenWidthPx:I

    .line 26
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenhightPx:I

    .line 27
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/ZApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/uuzuche/lib_zxing/DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenWidthDip:F

    .line 28
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/ZApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/uuzuche/lib_zxing/DisplayUtil;->px2dip(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/uuzuche/lib_zxing/DisplayUtil;->screenHightDip:F

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/ZApplication;->initDisplayOpinion()V

    return-void
.end method
