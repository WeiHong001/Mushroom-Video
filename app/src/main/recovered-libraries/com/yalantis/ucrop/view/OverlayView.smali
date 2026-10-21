.class public Lcom/yalantis/ucrop/view/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# static fields
.field public static final DEFAULT_CIRCLE_DIMMED_LAYER:Z = false

.field public static final DEFAULT_CROP_GRID_COLUMN_COUNT:I = 0x2

.field public static final DEFAULT_CROP_GRID_ROW_COUNT:I = 0x2

.field public static final DEFAULT_DRAG_FRAME:Z = true

.field public static final DEFAULT_FREESTYLE_CROP_ENABLED:Z = false

.field public static final DEFAULT_SHOW_CROP_FRAME:Z = true

.field public static final DEFAULT_SHOW_CROP_GRID:Z = true


# instance fields
.field private mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;

.field private mCircleDimmedLayer:Z

.field private mCircularPath:Landroid/graphics/Path;

.field private mCropFrameCornersPaint:Landroid/graphics/Paint;

.field private mCropFramePaint:Landroid/graphics/Paint;

.field protected mCropGridCenter:[F

.field private mCropGridColumnCount:I

.field protected mCropGridCorners:[F

.field private mCropGridPaint:Landroid/graphics/Paint;

.field private mCropGridRowCount:I

.field private mCropRectCornerTouchAreaLineLength:I

.field private mCropRectMinSize:I

.field private final mCropViewRect:Landroid/graphics/RectF;

.field private mCurrentTouchCornerIndex:I

.field private mDimmedColor:I

.field private mDimmedStrokePaint:Landroid/graphics/Paint;

.field private mGridPoints:[F

.field private mIsDragFrame:Z

.field private mIsFreestyleCropEnabled:Z

.field private mPreviousTouchX:F

.field private mPreviousTouchY:F

.field private mShouldSetupCropBounds:Z

.field private mShowCropFrame:Z

.field private mShowCropGrid:Z

.field private mTargetAspectRatio:F

.field private final mTempRect:Landroid/graphics/RectF;

.field protected mThisHeight:I

.field protected mThisWidth:I

.field private mTouchPointThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    .line 37
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 38
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    .line 46
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    .line 47
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 48
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    .line 50
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 57
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I

    .line 68
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_threshold:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTouchPointThreshold:I

    .line 69
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_min_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectMinSize:I

    .line 70
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_rect_corner_touch_area_line_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectCornerTouchAreaLineLength:I

    .line 83
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->init()V

    return-void
.end method

.method private getCurrentTouchIndex(FF)I
    .locals 10

    .line 400
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTouchPointThreshold:I

    int-to-double v0, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 402
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCorners:[F

    aget v4, v4, v3

    sub-float v4, p1, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v8, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCorners:[F

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    sub-float v8, p2, v8

    float-to-double v8, v8

    .line 403
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 402
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    .line 406
    div-int/lit8 v0, v3, 0x2

    move v2, v0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    .line 409
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    return v2
.end method

.method private initCropFrameStyle(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 531
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_stroke_size:I

    .line 532
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 531
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 533
    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_frame_color:I

    .line 534
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 533
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 535
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 539
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 540
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initCropGridStyle(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 549
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_stroke_size:I

    .line 550
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 549
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 551
    sget v1, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_color:I

    .line 552
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 551
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 553
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 554
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_row_count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I

    .line 557
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_grid_column_count:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I

    return-void
.end method

.method private updateCropViewRect(FF)V
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 336
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 365
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getLeft()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getTop()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 366
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getBottom()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 368
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/OverlayView;->updateGridPoints()V

    .line 369
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->postInvalidate()V

    :cond_1
    return-void

    .line 358
    :cond_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    if-eqz v0, :cond_6

    .line 359
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, p1, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 352
    :cond_3
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    if-eqz v0, :cond_6

    .line 353
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 346
    :cond_4
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, p2, p1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 340
    :cond_5
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    if-eqz v0, :cond_6

    .line 341
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 374
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectMinSize:I

    int-to-float p2, p2

    const/4 v0, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 375
    :goto_1
    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectMinSize:I

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 376
    :goto_2
    iget-object p2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_9
    iget v0, p2, Landroid/graphics/RectF;->left:F

    :goto_3
    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    :goto_4
    iget v2, v2, Landroid/graphics/RectF;->top:F

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    goto :goto_5

    :cond_b
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    :goto_5
    iget v3, v3, Landroid/graphics/RectF;->right:F

    if-eqz p1, :cond_c

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    goto :goto_6

    :cond_c
    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    :goto_6
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez p1, :cond_d

    if-eqz v1, :cond_e

    .line 383
    :cond_d
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/OverlayView;->updateGridPoints()V

    .line 384
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->postInvalidate()V

    :cond_e
    return-void
.end method

.method private updateGridPoints()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/yalantis/ucrop/util/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCorners:[F

    .line 238
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/yalantis/ucrop/util/RectUtils;->getCenterFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridCenter:[F

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    .line 241
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 242
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 243
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 242
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method protected drawCropGrid(Landroid/graphics/Canvas;)V
    .locals 8

    .line 459
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropGrid:Z

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    :goto_0
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_0

    .line 466
    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    aput v6, v3, v2

    .line 467
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v3, v5, 0x1

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v7, v1

    add-float/2addr v7, v4

    iget v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v4, v7, v4

    mul-float v6, v6, v4

    iget-object v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v4

    aput v6, v2, v5

    .line 468
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    aput v5, v2, v3

    .line 469
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v3, v4, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr v7, v6

    mul-float v5, v5, v7

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 472
    :cond_0
    :goto_1
    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v6, v4

    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float v7, v6, v7

    mul-float v5, v5, v7

    iget-object v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    aput v5, v1, v2

    .line 474
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v2, v3, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    aput v5, v1, v3

    .line 475
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v7, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    iget-object v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    aput v5, v1, v2

    .line 476
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    add-int/lit8 v2, v3, 0x1

    iget-object v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    aput v5, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    if-eqz v0, :cond_2

    .line 481
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 485
    :cond_2
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropFrame:Z

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 489
    :cond_3
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z

    if-eqz v0, :cond_4

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 492
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 493
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectCornerTouchAreaLineLength:I

    int-to-float v2, v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 494
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 496
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 497
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropRectCornerTouchAreaLineLength:I

    neg-int v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 498
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTempRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 500
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFrameCornersPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method protected drawDimmedLayer(Landroid/graphics/Canvas;)V
    .locals 4

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 438
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircularPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 443
    :goto_0
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 446
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    .line 448
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    .line 447
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getCropViewRect()Landroid/graphics/RectF;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOverlayViewChangeListener()Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0, v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public isFreestyleCropEnabled()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z

    return v0
.end method

.method public ismIsDragFrame()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->drawDimmedLayer(Landroid/graphics/Canvas;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->drawCropGrid(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 255
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result p1

    .line 258
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result p2

    .line 259
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 260
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p3, p1

    .line 261
    iput p3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I

    sub-int/2addr p4, p2

    .line 262
    iput p4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisHeight:I

    .line 264
    iget-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShouldSetupCropBounds:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShouldSetupCropBounds:Z

    .line 266
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTargetAspectRatio:F

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->setTargetAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 289
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    .line 290
    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F

    .line 291
    iput v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F

    .line 293
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/yalantis/ucrop/view/OverlayView;->getCurrentTouchIndex(FF)I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I

    if-eq p1, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 297
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I

    if-eq v3, v4, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 301
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 303
    invoke-direct {p0, p1, v0}, Lcom/yalantis/ucrop/view/OverlayView;->updateCropViewRect(FF)V

    .line 305
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F

    .line 306
    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F

    return v5

    .line 312
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v5, :cond_5

    const/high16 p1, -0x40800000    # -1.0f

    .line 313
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchX:F

    .line 314
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mPreviousTouchY:F

    .line 315
    iput v4, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCurrentTouchCornerIndex:I

    .line 317
    iget-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;

    if-eqz p1, :cond_5

    .line 318
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;->onCropRectUpdated(Landroid/graphics/RectF;)V

    :cond_5
    :goto_0
    return v1
.end method

.method protected processStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 512
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_circle_dimmed_layer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z

    .line 513
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_dimmed_color:I

    .line 514
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 513
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedColor:I

    .line 515
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 517
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 519
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->initCropFrameStyle(Landroid/content/res/TypedArray;)V

    .line 520
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_frame:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropFrame:Z

    .line 522
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/OverlayView;->initCropGridStyle(Landroid/content/res/TypedArray;)V

    .line 523
    sget v0, Lcom/yalantis/ucrop/R$styleable;->ucrop_UCropView_ucrop_show_grid:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropGrid:Z

    return-void
.end method

.method public setCircleDimmedLayer(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCircleDimmedLayer:Z

    return-void
.end method

.method public setCropFrameColor(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropFrameStrokeWidth(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropFramePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setCropGridColor(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCropGridColumnCount(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridColumnCount:I

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    return-void
.end method

.method public setCropGridRowCount(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridRowCount:I

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mGridPoints:[F

    return-void
.end method

.method public setCropGridStrokeWidth(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropGridPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setDimmedColor(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mDimmedColor:I

    return-void
.end method

.method public setDragFrame(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsDragFrame:Z

    return-void
.end method

.method public setFreestyleCropEnabled(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mIsFreestyleCropEnabled:Z

    return-void
.end method

.method public setOverlayViewChangeListener(Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;

    return-void
.end method

.method public setShowCropFrame(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropFrame:Z

    return-void
.end method

.method public setShowCropGrid(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShowCropGrid:Z

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTargetAspectRatio:F

    .line 204
    iget p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I

    if-lez p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->setupCropBounds()V

    .line 206
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->postInvalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mShouldSetupCropBounds:Z

    :goto_0
    return-void
.end method

.method public setupCropBounds()V
    .locals 7

    .line 217
    iget v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mTargetAspectRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 218
    iget v3, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisHeight:I

    if-le v1, v3, :cond_0

    int-to-float v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 220
    div-int/lit8 v0, v0, 0x2

    .line 221
    iget-object v2, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    .line 222
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v1

    iget v5, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisHeight:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    .line 221
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v1

    .line 224
    div-int/lit8 v3, v3, 0x2

    .line 225
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    .line 226
    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/yalantis/ucrop/view/OverlayView;->mThisWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/OverlayView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    int-to-float v1, v6

    .line 225
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCallback:Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;

    if-eqz v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/yalantis/ucrop/view/OverlayView;->mCropViewRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/yalantis/ucrop/callback/OverlayViewChangeListener;->onCropRectUpdated(Landroid/graphics/RectF;)V

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/OverlayView;->updateGridPoints()V

    return-void
.end method
