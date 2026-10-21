.class public Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RVDividerHeightMargin.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I

.field private margin:I

.field private needDraw:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 3

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->margin:I

    .line 21
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    .line 32
    iput p2, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->margin:I

    .line 34
    iput-boolean p4, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    float-to-double p1, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    if-ge p1, v0, :cond_0

    .line 37
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    const p2, -0x222223

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZI)V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->margin:I

    .line 21
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    .line 45
    iput p2, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->margin:I

    .line 47
    iput-boolean p4, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    float-to-double p1, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    if-ge p1, v0, :cond_0

    .line 50
    iput v0, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 58
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 59
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    const/4 p4, 0x0

    const/16 v0, 0x555

    if-ne p3, v0, :cond_0

    .line 61
    iput-boolean p4, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 64
    iput-boolean p3, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "skip"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 66
    iget p2, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mStrokeWidth:I

    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    .line 72
    iget-boolean p3, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->needDraw:Z

    if-eqz p3, :cond_0

    .line 73
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    .line 74
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->margin:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 76
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 77
    iget v3, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->margin:I

    int-to-float v5, v3

    int-to-float v8, v2

    int-to-float v7, v0

    iget-object v9, p0, Lcom/kotlin/basiclib/widget/RVDividerHeightMargin;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
