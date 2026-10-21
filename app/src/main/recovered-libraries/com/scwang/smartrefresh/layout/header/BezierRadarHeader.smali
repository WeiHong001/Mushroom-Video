.class public Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "BezierRadarHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;
    }
.end annotation


# static fields
.field protected static final PROPERTY_DOT_ALPHA:B = 0x2t

.field protected static final PROPERTY_RADAR_ANGLE:B = 0x4t

.field protected static final PROPERTY_RADAR_SCALE:B = 0x0t

.field protected static final PROPERTY_RIPPLE_RADIUS:B = 0x3t

.field protected static final PROPERTY_WAVE_HEIGHT:B = 0x1t


# instance fields
.field protected mAccentColor:I

.field protected mAnimatorSet:Landroid/animation/Animator;

.field protected mDotAlpha:F

.field protected mDotFraction:F

.field protected mDotRadius:F

.field protected mEnableHorizontalDrag:Z

.field protected mManualAccentColor:Z

.field protected mManualPrimaryColor:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mPrimaryColor:I

.field protected mRadarAngle:I

.field protected mRadarCircle:F

.field protected mRadarRadius:F

.field protected mRadarRect:Landroid/graphics/RectF;

.field protected mRadarScale:F

.field protected mRippleRadius:F

.field protected mWaveHeight:I

.field protected mWaveOffsetX:I

.field protected mWavePulling:Z

.field protected mWaveTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 44
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    .line 57
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    const/4 p3, 0x0

    .line 58
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    .line 59
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarCircle:F

    .line 60
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    .line 78
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 81
    new-instance v1, Lcom/scwang/smartrefresh/layout/util/DensityUtil;

    invoke-direct {v1}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;-><init>()V

    .line 83
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    .line 84
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 85
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 87
    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotRadius:F

    const/high16 v3, 0x41a00000    # 20.0f

    .line 88
    invoke-virtual {v1, v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    .line 89
    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarCircle:F

    .line 90
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 92
    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p3, 0x3e8

    .line 95
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 96
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    const/16 p3, 0x10e

    .line 97
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    goto :goto_0

    .line 99
    :cond_0
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    .line 102
    :goto_0
    sget-object p3, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlEnableHorizontalDrag:I

    iget-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    .line 105
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 106
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlPrimaryColor:I

    const p3, -0xddddde

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 107
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    .line 108
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlPrimaryColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    .line 110
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawWave(Landroid/graphics/Canvas;I)V

    .line 139
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawDot(Landroid/graphics/Canvas;II)V

    .line 140
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawRadar(Landroid/graphics/Canvas;II)V

    .line 141
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawRipple(Landroid/graphics/Canvas;II)V

    .line 142
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawDot(Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v0, p0

    .line 157
    iget v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 158
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-static/range {p3 .. p3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->px2dp(I)F

    move-result v1

    move/from16 v3, p2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    .line 161
    iget v7, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotFraction:F

    mul-float v8, v5, v7

    cmpl-float v9, v7, v4

    if-lez v9, :cond_0

    sub-float v9, v7, v4

    mul-float v9, v9, v5

    div-float/2addr v9, v7

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    sub-float/2addr v8, v9

    move/from16 v5, p3

    int-to-float v5, v5

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v10, v7, v4

    if-lez v10, :cond_1

    sub-float v2, v7, v4

    mul-float v2, v2, v5

    div-float/2addr v2, v9

    div-float/2addr v2, v7

    :cond_1
    sub-float/2addr v5, v2

    const/4 v2, 0x0

    :goto_1
    const/4 v7, 0x7

    if-ge v2, v7, :cond_2

    int-to-float v7, v2

    add-float/2addr v7, v4

    const/high16 v10, 0x40800000    # 4.0f

    sub-float/2addr v7, v10

    const/high16 v10, 0x437f0000    # 255.0f

    .line 165
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    div-float/2addr v11, v6

    mul-float v11, v11, v9

    sub-float v11, v4, v11

    mul-float v11, v11, v10

    .line 166
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    mul-float v12, v12, v11

    float-to-double v11, v12

    float-to-double v13, v1

    const-wide/high16 v15, 0x4089000000000000L    # 800.0

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v15

    move/from16 p3, v7

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v15, v6

    sub-double/2addr v15, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    double-to-int v6, v11

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    iget v6, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotRadius:F

    const/high16 v7, 0x41200000    # 10.0f

    div-float v7, v1, v7

    add-float/2addr v7, v4

    div-float v7, v4, v7

    sub-float v7, v4, v7

    mul-float v6, v6, v7

    div-float v7, v3, v9

    div-float v10, v6, v9

    sub-float/2addr v7, v10

    mul-float v10, v8, p3

    add-float/2addr v7, v10

    div-float v10, v5, v9

    .line 168
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    invoke-virtual {v12, v7, v10, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    const/high16 v6, 0x40e00000    # 7.0f

    goto :goto_1

    .line 170
    :cond_2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method protected drawRadar(Landroid/graphics/Canvas;II)V
    .locals 12

    .line 176
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    mul-float v0, v0, v1

    .line 178
    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarCircle:F

    mul-float v2, v2, v1

    .line 180
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    int-to-float p3, p3

    div-float/2addr p3, v1

    .line 182
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v0

    .line 185
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPrimaryColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x55000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    sub-float v3, p2, v0

    sub-float v4, p3, v0

    add-float v5, p2, v0

    add-float/2addr v0, p3

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    iget-object v7, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    int-to-float v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 193
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    sub-float v1, p2, v2

    sub-float v3, p3, v2

    add-float/2addr p2, v2

    add-float/2addr p3, v2

    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    const/high16 v6, 0x43870000    # 270.0f

    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    int-to-float v7, p2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 197
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method protected drawRipple(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 203
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 205
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected drawWave(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 149
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    if-ltz v1, :cond_0

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    int-to-float v1, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    :goto_0
    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float p2, p2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, p2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 151
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPrimaryColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public isSupportHorizontalDrag()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onDetachedFromWindow()V

    .line 123
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 125
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    .line 281
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 283
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 291
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 292
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 294
    new-instance p2, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 295
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x190

    return p1
.end method

.method public onHorizontalDrag(FII)V
    .locals 0

    .line 336
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    if-nez p1, :cond_0

    .line 215
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    .line 217
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    const p1, 0x3ff33333    # 1.9f

    const/4 p5, 0x0

    sub-int/2addr p3, p4

    .line 218
    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    .line 219
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotFraction:F

    :cond_1
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 8

    .line 240
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 243
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x2d0

    .line 244
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    .line 245
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 246
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-array v2, p2, [F

    .line 251
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    new-instance v3, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    invoke-direct {v3, p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, p2, [F

    .line 255
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 256
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    new-instance v4, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    invoke-direct {v4, p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/animation/Animator;

    aput-object v2, v6, p1

    const/4 v2, 0x1

    aput-object v3, v6, v2

    aput-object p3, v6, p2

    .line 260
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 261
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    const/4 p3, 0x6

    new-array p3, p3, [I

    .line 263
    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    aput v3, p3, p1

    aput p1, p3, v2

    int-to-float v6, v3

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    float-to-int v6, v6

    neg-int v6, v6

    aput v6, p3, p2

    aput p1, p3, v5

    int-to-float p2, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v3

    float-to-int p2, p2

    neg-int p2, p2

    aput p2, p3, v1

    const/4 p2, 0x5

    aput p1, p3, p2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 267
    new-instance p2, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    invoke-direct {p2, p0, v2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x320

    .line 269
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 272
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0

    .line 301
    sget-object p1, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 304
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    const/4 p1, 0x0

    .line 305
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    .line 306
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    :goto_0
    return-void
.end method

.method public setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0

    .line 354
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    const/4 p1, 0x1

    .line 355
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    return-object p0
.end method

.method public setAccentColorId(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 1

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    return-object p0
.end method

.method public setEnableHorizontalDrag(Z)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 374
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    :cond_0
    return-object p0
.end method

.method public setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0

    .line 348
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPrimaryColor:I

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    return-object p0
.end method

.method public setPrimaryColorId(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 1

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    if-nez v0, :cond_0

    .line 314
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 315
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    .line 317
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    if-nez v0, :cond_1

    .line 318
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 319
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    :cond_1
    return-void
.end method
