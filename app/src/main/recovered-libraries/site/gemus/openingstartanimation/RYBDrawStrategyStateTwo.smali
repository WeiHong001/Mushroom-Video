.class Lsite/gemus/openingstartanimation/RYBDrawStrategyStateTwo;
.super Ljava/lang/Object;
.source "RYBDrawStrategyStateTwo.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 6

    .line 26
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    .line 27
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/lit16 p5, p5, -0x96

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v1, 0x3f266666    # 0.65f

    sub-float/2addr p2, v1

    const v1, 0x3eb33333    # 0.35f

    div-float/2addr p2, v1

    const-string v1, "#e53935"

    .line 31
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p4

    add-int/lit8 v2, p5, -0x32

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    .line 32
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string v2, "#fdd835"

    .line 33
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v2, p4, -0x23

    int-to-float v2, v2

    add-int/lit8 v4, p5, 0x23

    int-to-float v4, v4

    .line 34
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-string v2, "#1e88e5"

    .line 35
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v2, p4, 0x23

    int-to-float v2, v2

    .line 36
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 40
    invoke-static {p3}, Lsite/gemus/openingstartanimation/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 41
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v4, p5

    const v5, 0x3fd9999a    # 1.7f

    .line 42
    invoke-virtual {v3, v5, v5, v1, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 43
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 44
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v3, v3, v5

    mul-float v3, v3, p2

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v3, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 45
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 46
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    int-to-float p2, p4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p4

    int-to-float p4, p5

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
