.class public Lsite/gemus/openingstartanimation/RedYellowBlueDrawStrategy;
.super Ljava/lang/Object;
.source "RedYellowBlueDrawStrategy.java"

# interfaces
.implements Lsite/gemus/openingstartanimation/DrawStrategy;


# instance fields
.field private mRYBDrawStrategyStateController:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;

    invoke-direct {v0}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;-><init>()V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/RedYellowBlueDrawStrategy;->mRYBDrawStrategyStateController:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;

    return-void
.end method


# virtual methods
.method public drawAppIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 6

    .line 38
    iget-object v0, p0, Lsite/gemus/openingstartanimation/RedYellowBlueDrawStrategy;->mRYBDrawStrategyStateController:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->choseStateDrawIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V

    return-void
.end method

.method public drawAppName(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result p2

    .line 26
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 p4, 0x42480000    # 50.0f

    .line 30
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, 0x32

    int-to-float p4, p5

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAppStatement(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 7

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getWidth()I

    move-result v0

    .line 46
    invoke-virtual {p5}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->getHeight()I

    move-result p5

    .line 47
    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 48
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p4, 0x42340000    # 45.0f

    .line 50
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    const p4, -0x41b33333    # -0.2f

    .line 51
    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 52
    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    new-instance p4, Landroid/graphics/RectF;

    div-int/lit8 v1, v0, 0x4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v2, p5, 0x7

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

    .line 56
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    mul-float p2, p2, p5

    const p5, 0x3fd5c28f    # 1.67f

    mul-float p2, p2, p5

    .line 57
    invoke-virtual {p3, p4, v0, p2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 58
    invoke-virtual {p1, p3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 61
    invoke-virtual {v3, p4, v0, p5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 62
    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    .line 63
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
