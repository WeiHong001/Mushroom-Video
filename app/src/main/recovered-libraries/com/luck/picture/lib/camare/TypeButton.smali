.class public Lcom/luck/picture/lib/camare/TypeButton;
.super Landroid/view/View;
.source "TypeButton.java"


# static fields
.field public static final TYPE_CANCEL:I = 0x1

.field public static final TYPE_CONFIRM:I = 0x2


# instance fields
.field private button_radius:F

.field private button_size:I

.field private button_type:I

.field private center_X:F

.field private center_Y:F

.field private index:F

.field private mPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rectF:Landroid/graphics/RectF;

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    iput p2, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_type:I

    .line 35
    iput p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    int-to-float p1, p3

    const/high16 p2, 0x40000000    # 2.0f

    div-float p3, p1, p2

    .line 36
    iput p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_radius:F

    .line 37
    iput p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    .line 38
    iput p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    .line 40
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p1, p3

    .line 42
    iput p1, p0, Lcom/luck/picture/lib/camare/TypeButton;->strokeWidth:F

    .line 43
    iget p1, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    int-to-float p1, p1

    const/high16 p3, 0x41400000    # 12.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    .line 44
    new-instance p1, Landroid/graphics/RectF;

    iget p3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    iget v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    sub-float v2, v0, v1

    mul-float p2, p2, v1

    add-float/2addr p2, p3

    add-float/2addr v0, v1

    invoke-direct {p1, p3, v2, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/TypeButton;->rectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    const v2, -0x11232324

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_radius:F

    iget-object v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 63
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->strokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    const/high16 v4, 0x40e00000    # 7.0f

    div-float v4, v3, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    add-float/2addr v2, v3

    iget v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    add-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 71
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    sub-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 75
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    float-to-double v4, v4

    float-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    float-to-double v4, v4

    float-to-double v6, v3

    const-wide v8, 0x4002666666666666L    # 2.3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    float-to-double v2, v2

    iget v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->index:F

    float-to-double v5, v4

    const-wide v7, 0x3ff999999999999aL    # 1.6

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v5

    double-to-float v2, v2

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 79
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_radius:F

    iget-object v4, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff3400

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 94
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    int-to-float v3, v2

    const v4, 0x41a9999a    # 21.2f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    int-to-float v2, v2

    const v5, 0x40f66666    # 7.7f

    div-float/2addr v2, v5

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    int-to-float v3, v2

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    int-to-float v2, v2

    const/high16 v5, 0x41080000    # 8.5f

    div-float/2addr v2, v5

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_X:F

    iget v2, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    int-to-float v3, v2

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/luck/picture/lib/camare/TypeButton;->center_Y:F

    int-to-float v2, v2

    const v4, 0x41166666    # 9.4f

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 97
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 98
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TypeButton;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/luck/picture/lib/camare/TypeButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 50
    iget p1, p0, Lcom/luck/picture/lib/camare/TypeButton;->button_size:I

    invoke-virtual {p0, p1, p1}, Lcom/luck/picture/lib/camare/TypeButton;->setMeasuredDimension(II)V

    return-void
.end method
