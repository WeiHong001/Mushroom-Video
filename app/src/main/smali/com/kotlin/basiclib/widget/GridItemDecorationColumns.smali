.class public Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridItemDecorationColumns.java"


# instance fields
.field private mGridSize:I

.field private mNeedLeftSpacing:Z

.field private mSizeGridSpacingPx:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    .line 22
    iput p1, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    .line 23
    iput p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mGridSize:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 28
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mGridSize:I

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr p4, v0

    int-to-float v0, v1

    div-float/2addr p4, v0

    float-to-int p4, p4

    .line 29
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    iget v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mGridSize:I

    div-int/2addr p3, v0

    sub-int/2addr p3, p4

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    .line 31
    iget p4, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mGridSize:I

    const/4 v0, 0x0

    if-ge p2, p4, :cond_0

    .line 32
    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 34
    :cond_0
    iget p4, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 36
    :goto_0
    iget p4, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mGridSize:I

    rem-int v1, p2, p4

    if-nez v1, :cond_1

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 38
    iput p3, p1, Landroid/graphics/Rect;->right:I

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 40
    rem-int/2addr v1, p4

    if-nez v1, :cond_2

    .line 41
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    .line 42
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 43
    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 44
    :cond_2
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    if-eqz v1, :cond_4

    .line 45
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    .line 46
    iget p4, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x2

    .line 47
    iget p4, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mGridSize:I

    rem-int/2addr p2, p4

    if-nez p2, :cond_3

    .line 48
    iget p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 50
    :cond_3
    iget p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    add-int/lit8 p2, p2, 0x2

    .line 52
    rem-int/2addr p2, p4

    if-nez p2, :cond_5

    .line 53
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    .line 54
    iget p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 55
    iget p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 57
    :cond_5
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mNeedLeftSpacing:Z

    .line 58
    iget p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 59
    iget p2, p0, Lcom/kotlin/basiclib/widget/GridItemDecorationColumns;->mSizeGridSpacingPx:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 61
    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
