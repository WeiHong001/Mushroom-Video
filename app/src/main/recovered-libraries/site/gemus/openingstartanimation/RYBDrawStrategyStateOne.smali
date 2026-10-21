.class Lsite/gemus/openingstartanimation/RYBDrawStrategyStateOne;
.super Ljava/lang/Object;
.source "RYBDrawStrategyStateOne.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 6

    const p3, 0x3f266666    # 0.65f

    div-float/2addr p2, p3

    .line 20
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 21
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/lit16 p4, p4, -0x96

    .line 22
    new-instance p5, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p5, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const-string v0, "#e53935"

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x3ea8f5c3    # 0.33f

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v2, p2, v0

    if-gtz v2, :cond_0

    int-to-float v2, p3

    add-int/lit8 v3, p4, -0x32

    int-to-float v3, v3

    div-float v4, p2, v0

    mul-float v4, v4, v1

    .line 26
    invoke-virtual {p1, v2, v3, v4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v2, p3

    add-int/lit8 v3, p4, -0x32

    int-to-float v3, v3

    .line 28
    invoke-virtual {p1, v2, v3, v1, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v3, p2, v0

    if-lez v3, :cond_2

    const-string v3, "#fdd835"

    .line 31
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColor(I)V

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_1

    add-int/lit8 v3, p3, -0x23

    int-to-float v3, v3

    add-int/lit8 v4, p4, 0x23

    int-to-float v4, v4

    sub-float v5, p2, v0

    div-float/2addr v5, v0

    mul-float v5, v5, v1

    .line 33
    invoke-virtual {p1, v3, v4, v5, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p3, -0x23

    int-to-float v0, v0

    add-int/lit8 v3, p4, 0x23

    int-to-float v3, v3

    .line 35
    invoke-virtual {p1, v0, v3, v1, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    const-string v0, "#1e88e5"

    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    add-int/lit8 p3, p3, 0x23

    int-to-float p3, p3

    add-int/lit8 p4, p4, 0x23

    int-to-float p4, p4

    sub-float/2addr p2, v2

    const v0, 0x3eae147b    # 0.34f

    div-float/2addr p2, v0

    mul-float p2, p2, v1

    .line 40
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x23

    int-to-float p2, p3

    add-int/lit8 p4, p4, 0x23

    int-to-float p3, p4

    .line 42
    invoke-virtual {p1, p2, p3, v1, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
