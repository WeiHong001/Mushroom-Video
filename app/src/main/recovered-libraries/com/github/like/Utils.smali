.class public Lcom/github/like/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 0

    .line 29
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static dipToPixels(Landroid/content/Context;F)F
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 77
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 47
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v0, :cond_1

    .line 50
    check-cast p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-static {p0, p1, p2}, Lcom/github/like/Utils;->getBitmap(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v0, :cond_2

    .line 52
    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    invoke-static {p0, p1, p2}, Lcom/github/like/Utils;->getBitmap(Landroid/graphics/drawable/VectorDrawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported drawable type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBitmap(Landroid/graphics/drawable/VectorDrawable;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(IIII)V

    .line 63
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private static getBitmap(Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 68
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 69
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(IIII)V

    .line 71
    invoke-virtual {p0, p2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static getIcons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/like/Icon;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v1, Lcom/github/like/Icon;

    sget v2, Lcom/github/like/view/R$drawable;->heart_on:I

    sget v3, Lcom/github/like/view/R$drawable;->heart_off:I

    sget-object v4, Lcom/github/like/IconType;->Heart:Lcom/github/like/IconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/github/like/Icon;-><init>(IILcom/github/like/IconType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/github/like/Icon;

    sget v2, Lcom/github/like/view/R$drawable;->star_on:I

    sget v3, Lcom/github/like/view/R$drawable;->star_off:I

    sget-object v4, Lcom/github/like/IconType;->Star:Lcom/github/like/IconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/github/like/Icon;-><init>(IILcom/github/like/IconType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/github/like/Icon;

    sget v2, Lcom/github/like/view/R$drawable;->thumb_on:I

    sget v3, Lcom/github/like/view/R$drawable;->thumb_off:I

    sget-object v4, Lcom/github/like/IconType;->Thumb:Lcom/github/like/IconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/github/like/Icon;-><init>(IILcom/github/like/IconType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static mapValueFromRangeToRange(DDDDD)D
    .locals 0

    sub-double/2addr p0, p2

    sub-double/2addr p4, p2

    div-double/2addr p0, p4

    sub-double/2addr p8, p6

    mul-double p0, p0, p8

    add-double/2addr p6, p0

    return-wide p6
.end method

.method public static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 42
    invoke-static {p1, p2, p3}, Lcom/github/like/Utils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 43
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
