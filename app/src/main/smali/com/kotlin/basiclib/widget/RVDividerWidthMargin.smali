.class public Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RVDividerWidthMargin.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private mWidth:I

.field private margin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 4

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->margin:I

    .line 20
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mStrokeWidth:I

    .line 21
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mWidth:I

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mPaint:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p3, p3

    .line 26
    iput p3, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->margin:I

    .line 27
    iput p2, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mWidth:I

    float-to-double p1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    int-to-double p3, p4

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mStrokeWidth:I

    if-ge p1, v1, :cond_0

    .line 29
    iput v1, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mStrokeWidth:I

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 37
    iget p2, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mStrokeWidth:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 42
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 44
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v2

    .line 48
    iget v4, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->margin:I

    add-int/2addr v3, v4

    int-to-float v6, v3

    iget v3, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mStrokeWidth:I

    add-int/2addr v2, v3

    int-to-float v7, v2

    sub-int/2addr v1, v4

    int-to-float v8, v1

    iget-object v9, p0, Lcom/kotlin/basiclib/widget/RVDividerWidthMargin;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
