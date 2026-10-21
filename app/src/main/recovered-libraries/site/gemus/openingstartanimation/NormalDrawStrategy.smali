.class public Lsite/gemus/openingstartanimation/NormalDrawStrategy;
.super Ljava/lang/Object;
.source "NormalDrawStrategy.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/DrawStrategy;


# instance fields
.field paint:Landroid/graphics/Paint;

.field paint2:Landroid/graphics/Paint;

.field paint3:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint3:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public drawAppIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 9

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result p4

    .line 44
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 46
    invoke-static {p3}, Lsite/gemus/openingstartanimation/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 48
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    .line 50
    div-int/lit8 v2, v2, 0x2

    .line 51
    div-int/lit8 p4, p4, 0x2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr p4, v3

    .line 52
    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, -0x64

    float-to-double v4, p2

    const-wide v6, 0x3fe3333333333333L    # 0.6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    .line 54
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 55
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    sub-int v3, p4, v3

    int-to-float v3, v3

    .line 56
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    int-to-float v6, v6

    const v7, 0x3f8ccccd    # 1.1f

    invoke-virtual {v5, v7, v7, v3, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    int-to-float v3, p4

    int-to-float v6, p5

    int-to-float v2, v2

    const v7, 0x3dcccccd    # 0.1f

    sub-float/2addr p2, v7

    mul-float v2, v2, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v2, v2, p2

    .line 57
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v6, v2, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 58
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 59
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    sub-int/2addr p4, v0

    int-to-float p2, p4

    sub-int/2addr p5, v1

    int-to-float p4, p5

    .line 60
    iget-object p5, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3f19999a    # 0.6f

    sub-float/2addr p2, v5

    mul-float p2, p2, v4

    const v4, 0x3f99999a    # 1.2f

    mul-float p2, p2, v4

    add-float/2addr p2, v4

    sub-int v3, p4, v3

    int-to-float v3, v3

    .line 63
    div-int/lit8 v4, v1, 0x2

    sub-int v4, p5, v4

    int-to-float v4, v4

    invoke-virtual {v2, p2, p2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 66
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    sub-int/2addr p4, v0

    int-to-float p2, p4

    sub-int/2addr p5, v1

    int-to-float p4, p5

    .line 67
    iget-object p5, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAppName(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 1

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result p2

    .line 30
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 32
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p4, 0x42480000    # 50.0f

    .line 34
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x32

    int-to-float p4, p5

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAppStatement(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 6

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v0

    .line 79
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 80
    iget-object v1, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x42aa0000    # 85.0f

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    const v1, -0x41b33333    # -0.2f

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 86
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 87
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 88
    iget-object p4, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    new-instance p4, Landroid/graphics/RectF;

    div-int/lit8 v1, v0, 0x4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v2, p5, 0x6

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    int-to-float p5, p5

    invoke-direct {p4, v1, v2, v0, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p5, 0x42200000    # 40.0f

    const/high16 v0, 0x43410000    # 193.0f

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 92
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    mul-float p2, p2, p5

    const p5, 0x3fd5c28f    # 1.67f

    mul-float p2, p2, p5

    .line 93
    invoke-virtual {p3, p4, v0, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 94
    iget-object p2, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 97
    invoke-virtual {v2, p4, v0, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 98
    iget-object p2, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 99
    iget-object v5, p0, Lsite/gemus/openingstartanimation/NormalDrawStrategy;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 101
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
