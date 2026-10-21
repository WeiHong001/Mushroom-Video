.class public Lcom/mogu/tv/utils/ScreenShotUtils;
.super Ljava/lang/Object;
.source "ScreenShotUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitmapFile(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 93
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 94
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 95
    new-instance p1, Lcom/kotlin/basiclib/utils/SingleMediaScanner;

    sget-object v0, Lcom/kotlin/basiclib/base/BaseApplicaiton;->Companion:Lcom/kotlin/basiclib/base/BaseApplicaiton$Companion;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/base/BaseApplicaiton$Companion;->getApplication()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mogu/tv/utils/ScreenShotUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mogu/tv/utils/ScreenShotUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p0, v1}, Lcom/kotlin/basiclib/utils/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kotlin/basiclib/utils/SingleMediaScanner$ScanListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic lambda$getBitmapFile$0()V
    .locals 0

    return-void
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static setViewLayoutParams(Landroid/view/View;II)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_1

    .line 46
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
