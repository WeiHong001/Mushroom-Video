.class public Lcom/github/like/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# static fields
.field public static final INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/like/CircleView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/like/CircleView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private END_COLOR:I

.field private START_COLOR:I

.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private circlePaint:Landroid/graphics/Paint;

.field private height:I

.field private innerCircleRadiusProgress:F

.field private maskPaint:Landroid/graphics/Paint;

.field private maxCircleSize:I

.field private outerCircleRadiusProgress:F

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Lcom/github/like/CircleView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "innerCircleRadiusProgress"

    invoke-direct {v0, v1, v2}, Lcom/github/like/CircleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/github/like/CircleView;->INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    .line 134
    new-instance v0, Lcom/github/like/CircleView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "outerCircleRadiusProgress"

    invoke-direct {v0, v1, v2}, Lcom/github/like/CircleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/github/like/CircleView;->OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0xa8de

    .line 21
    iput p1, p0, Lcom/github/like/CircleView;->START_COLOR:I

    const/16 p1, -0x3ef9

    .line 22
    iput p1, p0, Lcom/github/like/CircleView;->END_COLOR:I

    .line 24
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->maskPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    .line 33
    iput p1, p0, Lcom/github/like/CircleView;->innerCircleRadiusProgress:F

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/github/like/CircleView;->width:I

    .line 36
    iput p1, p0, Lcom/github/like/CircleView;->height:I

    .line 42
    invoke-direct {p0}, Lcom/github/like/CircleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xa8de

    .line 21
    iput p1, p0, Lcom/github/like/CircleView;->START_COLOR:I

    const/16 p1, -0x3ef9

    .line 22
    iput p1, p0, Lcom/github/like/CircleView;->END_COLOR:I

    .line 24
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->maskPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    .line 33
    iput p1, p0, Lcom/github/like/CircleView;->innerCircleRadiusProgress:F

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/github/like/CircleView;->width:I

    .line 36
    iput p1, p0, Lcom/github/like/CircleView;->height:I

    .line 47
    invoke-direct {p0}, Lcom/github/like/CircleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, -0xa8de

    .line 21
    iput p1, p0, Lcom/github/like/CircleView;->START_COLOR:I

    const/16 p1, -0x3ef9

    .line 22
    iput p1, p0, Lcom/github/like/CircleView;->END_COLOR:I

    .line 24
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/github/like/CircleView;->maskPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    .line 33
    iput p1, p0, Lcom/github/like/CircleView;->innerCircleRadiusProgress:F

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/github/like/CircleView;->width:I

    .line 36
    iput p1, p0, Lcom/github/like/CircleView;->height:I

    .line 52
    invoke-direct {p0}, Lcom/github/like/CircleView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/github/like/CircleView;->maskPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 60
    iget-object v0, p0, Lcom/github/like/CircleView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private updateCircleColor()V
    .locals 11

    .line 112
    iget v0, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v1 .. v6}, Lcom/github/like/Utils;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, v0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 113
    invoke-static/range {v1 .. v10}, Lcom/github/like/Utils;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 114
    iget-object v1, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/github/like/CircleView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/github/like/CircleView;->START_COLOR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/github/like/CircleView;->END_COLOR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getInnerCircleRadiusProgress()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/github/like/CircleView;->innerCircleRadiusProgress:F

    return v0
.end method

.method public getOuterCircleRadiusProgress()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v0, p0, Lcom/github/like/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const v2, 0xffffff

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 91
    iget-object v0, p0, Lcom/github/like/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/github/like/CircleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/like/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    iget v4, p0, Lcom/github/like/CircleView;->maxCircleSize:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/github/like/CircleView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/github/like/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/github/like/CircleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/like/CircleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/like/CircleView;->innerCircleRadiusProgress:F

    iget v4, p0, Lcom/github/like/CircleView;->maxCircleSize:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/github/like/CircleView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcom/github/like/CircleView;->tempBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    iget p1, p0, Lcom/github/like/CircleView;->width:I

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/github/like/CircleView;->height:I

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/github/like/CircleView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 82
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/github/like/CircleView;->maxCircleSize:I

    .line 83
    invoke-virtual {p0}, Lcom/github/like/CircleView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/github/like/CircleView;->getWidth()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/CircleView;->tempBitmap:Landroid/graphics/Bitmap;

    .line 84
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/github/like/CircleView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/github/like/CircleView;->tempCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setEndColor(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/github/like/CircleView;->END_COLOR:I

    .line 154
    invoke-virtual {p0}, Lcom/github/like/CircleView;->invalidate()V

    return-void
.end method

.method public setInnerCircleRadiusProgress(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/github/like/CircleView;->innerCircleRadiusProgress:F

    .line 98
    invoke-virtual {p0}, Lcom/github/like/CircleView;->postInvalidate()V

    return-void
.end method

.method public setOuterCircleRadiusProgress(F)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/github/like/CircleView;->outerCircleRadiusProgress:F

    .line 107
    invoke-direct {p0}, Lcom/github/like/CircleView;->updateCircleColor()V

    .line 108
    invoke-virtual {p0}, Lcom/github/like/CircleView;->postInvalidate()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/github/like/CircleView;->width:I

    .line 65
    iput p2, p0, Lcom/github/like/CircleView;->height:I

    .line 66
    invoke-virtual {p0}, Lcom/github/like/CircleView;->invalidate()V

    return-void
.end method

.method public setStartColor(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/github/like/CircleView;->START_COLOR:I

    .line 149
    invoke-virtual {p0}, Lcom/github/like/CircleView;->invalidate()V

    return-void
.end method
