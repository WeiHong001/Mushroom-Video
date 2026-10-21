.class public Lcom/luck/picture/lib/camare/FoucsView;
.super Landroid/view/View;
.source "FoucsView.java"


# instance fields
.field private center_x:I

.field private center_y:I

.field private length:I

.field private mPaint:Landroid/graphics/Paint;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/camare/FoucsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/camare/FoucsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->size:I

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 33
    iget-object p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    const p2, -0x11e951ea

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget v0, p0, Lcom/luck/picture/lib/camare/FoucsView;->center_x:I

    iget v1, p0, Lcom/luck/picture/lib/camare/FoucsView;->length:I

    sub-int v2, v0, v1

    int-to-float v4, v2

    iget v2, p0, Lcom/luck/picture/lib/camare/FoucsView;->center_y:I

    sub-int v3, v2, v1

    int-to-float v5, v3

    add-int/2addr v0, v1

    int-to-float v6, v0

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/luck/picture/lib/camare/FoucsView;->size:I

    div-int/lit8 v0, v0, 0xa

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/luck/picture/lib/camare/FoucsView;->size:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/luck/picture/lib/camare/FoucsView;->size:I

    div-int/lit8 v0, v0, 0xa

    int-to-float v5, v0

    iget-object v6, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/FoucsView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/luck/picture/lib/camare/FoucsView;->size:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/luck/picture/lib/camare/FoucsView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 40
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 41
    iget p1, p0, Lcom/luck/picture/lib/camare/FoucsView;->size:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p0, Lcom/luck/picture/lib/camare/FoucsView;->center_x:I

    int-to-double v0, p1

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p2, v0

    iput p2, p0, Lcom/luck/picture/lib/camare/FoucsView;->center_y:I

    int-to-double v0, p1

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p2, v0

    add-int/lit8 p2, p2, -0x2

    iput p2, p0, Lcom/luck/picture/lib/camare/FoucsView;->length:I

    .line 44
    invoke-virtual {p0, p1, p1}, Lcom/luck/picture/lib/camare/FoucsView;->setMeasuredDimension(II)V

    return-void
.end method
