.class public Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "OverFlyingLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;,
        Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;
    }
.end annotation


# static fields
.field public static final DETERMINE_BY_MAX_AND_MIN:I = -0x1

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private angle:F

.field private itemSpace:I

.field protected mDecoratedMeasurement:I

.field protected mDecoratedMeasurementInOther:I

.field private mEnableBringCenterToFront:Z

.field private mInfinite:Z

.field private mIntegerDy:Z

.field protected mInterval:F

.field private mLeftItems:I

.field private mMaxVisibleItemCount:I

.field protected mOffset:F

.field mOrientation:I

.field protected mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field private mRightItems:I

.field private mSmoothScrollbarEnabled:Z

.field protected mSpaceInOther:I

.field protected mSpaceMain:I

.field private minScale:F

.field onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;


# direct methods
.method public constructor <init>(FII)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p3, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;-><init>(IZ)V

    .line 187
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minScale:F

    .line 188
    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->itemSpace:I

    .line 189
    iput p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 177
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 25
    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minScale:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 26
    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->angle:F

    const/16 v0, 0x181

    .line 27
    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->itemSpace:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    .line 93
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, -0x1

    .line 99
    iput v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingScrollPosition:I

    const/4 v3, 0x0

    .line 101
    iput-object v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    .line 115
    iput-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mIntegerDy:Z

    .line 124
    iput v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    .line 178
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setOrientation(I)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setReverseLayout(Z)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setEnableBringCenterToFront(Z)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setIntegerDy(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 170
    invoke-direct {p0, p1, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;-><init>(IZ)V

    return-void
.end method

.method private calRotation(F)F
    .locals 2

    .line 149
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->angle:F

    neg-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    return v0
.end method

.method private calculateScale(F)F
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 154
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    div-float/2addr v0, p1

    add-float/2addr v0, v2

    return v0
.end method

.method private computeScrollExtent()I
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 533
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    float-to-int v0, v0

    return v0
.end method

.method private computeScrollOffset()I
    .locals 3

    .line 511
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 516
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getOffsetOfRightAdapterPosition()F

    move-result v0

    .line 521
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_3

    float-to-int v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    :goto_1
    return v0
.end method

.method private computeScrollRange()I
    .locals 2

    .line 537
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 541
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    return v0

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentPositionOffset()I
    .locals 2

    .line 755
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getMaxOffset()F
    .locals 2

    .line 686
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getMinOffset()F
    .locals 2

    .line 690
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    :goto_0
    return v0
.end method

.method private getOffsetOfRightAdapterPosition()F
    .locals 4

    .line 763
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 764
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 765
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 766
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    rem-float/2addr v0, v1

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    neg-float v2, v1

    mul-float v0, v0, v2

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_0

    .line 768
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    :goto_0
    return v0

    .line 770
    :cond_2
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_4

    .line 771
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 772
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    rem-float/2addr v0, v1

    goto :goto_1

    .line 773
    :cond_3
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_1

    .line 774
    :cond_4
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    :goto_1
    return v0
.end method

.method private getProperty(I)F
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    int-to-float p1, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    :goto_0
    mul-float p1, p1, v0

    return p1
.end method

.method private layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 9

    .line 606
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 609
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 611
    :goto_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mLeftItems:I

    sub-int v1, v0, v1

    .line 612
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mRightItems:I

    add-int/2addr v2, v0

    .line 615
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->useMaxVisibleCount()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 616
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 618
    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    add-int/2addr v2, v3

    goto :goto_2

    :cond_2
    sub-int/2addr v1, v3

    .line 622
    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    :goto_2
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    move v1, v2

    move v2, v0

    .line 628
    :cond_3
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v0

    .line 629
    iget-boolean v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-nez v3, :cond_6

    if-gez v1, :cond_5

    .line 632
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->useMaxVisibleCount()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    :cond_4
    const/4 v1, 0x0

    :cond_5
    if-le v2, v0, :cond_6

    move v2, v0

    :cond_6
    const/4 v3, 0x1

    :goto_3
    if-ge v1, v2, :cond_e

    .line 639
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->useMaxVisibleCount()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getProperty(I)F

    move-result v5

    iget v6, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeCondition(F)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_7
    if-lt v1, v0, :cond_8

    .line 644
    rem-int v5, v1, v0

    goto :goto_4

    :cond_8
    if-gez v1, :cond_a

    neg-int v5, v1

    .line 646
    rem-int/2addr v5, v0

    if-nez v5, :cond_9

    move v5, v0

    :cond_9
    sub-int v5, v0, v5

    goto :goto_4

    :cond_a
    move v5, v1

    .line 650
    :goto_4
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v6

    .line 651
    invoke-virtual {p0, v6, v4, v4}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 652
    invoke-direct {p0, v6}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->resetViewProperty(Landroid/view/View;)V

    .line 654
    invoke-direct {p0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getProperty(I)F

    move-result v7

    iget v8, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    sub-float/2addr v7, v8

    .line 655
    invoke-direct {p0, v6, v7}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->layoutScrap(Landroid/view/View;F)V

    .line 656
    iget-boolean v8, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mEnableBringCenterToFront:Z

    if-eqz v8, :cond_b

    .line 657
    invoke-virtual {p0, v6, v7}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setViewElevation(Landroid/view/View;F)F

    move-result v5

    goto :goto_5

    :cond_b
    int-to-float v5, v5

    :goto_5
    cmpl-float v3, v5, v3

    if-lez v3, :cond_c

    .line 659
    invoke-virtual {p0, v6}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 661
    :cond_c
    invoke-virtual {p0, v6, v4}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->addView(Landroid/view/View;I)V

    :goto_6
    move v3, v5

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method

.method private layoutScrap(Landroid/view/View;F)V
    .locals 9

    .line 694
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->calItemLeft(Landroid/view/View;F)I

    move-result v0

    .line 695
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->calItemTop(Landroid/view/View;F)I

    move-result v1

    .line 696
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 697
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceInOther:I

    add-int v5, v2, v0

    iget v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    add-int v6, v3, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v7, v2, v0

    add-int/2addr v3, v1

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    add-int v8, v3, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_0

    .line 700
    :cond_0
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    add-int v5, v2, v0

    iget v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceInOther:I

    add-int v6, v3, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    add-int v7, v2, v0

    add-int/2addr v3, v1

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v8, v3, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 703
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setItemViewProperty(Landroid/view/View;F)V

    return-void
.end method

.method private removeCondition(F)Z
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->maxRemoveOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minRemoveOffset()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private resetViewProperty(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 680
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 681
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 682
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 342
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 343
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    :cond_0
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 565
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->ensureLayoutState()V

    int-to-float p3, p1

    .line 571
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float v1, p3, v1

    .line 572
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v0

    .line 575
    :cond_1
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    add-float/2addr v2, v1

    .line 578
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getMinOffset()F

    move-result v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_2

    .line 579
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getMinOffset()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result p1

    mul-float v2, v2, p1

    sub-float/2addr p3, v2

    float-to-int p1, p3

    goto :goto_0

    .line 580
    :cond_2
    iget-boolean p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-nez p3, :cond_3

    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getMaxOffset()F

    move-result p3

    cmpl-float p3, v2, p3

    if-lez p3, :cond_3

    .line 581
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getMaxOffset()F

    move-result p1

    iget p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    sub-float/2addr p1, p3

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 584
    :cond_3
    :goto_0
    iget-boolean p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mIntegerDy:Z

    if-eqz p3, :cond_4

    int-to-float p3, p1

    .line 585
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p3, p3

    goto :goto_1

    :cond_4
    int-to-float p3, p1

    .line 587
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float/2addr p3, v1

    .line 590
    :goto_1
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    add-float/2addr v1, p3

    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    .line 593
    :goto_2
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 594
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 595
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->propertyChangeWhenScroll(Landroid/view/View;)F

    move-result v2

    sub-float/2addr v2, p3

    .line 596
    invoke-direct {p0, v1, v2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->layoutScrap(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 600
    :cond_5
    invoke-direct {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return p1

    :cond_6
    :goto_3
    return v0
.end method

.method private useMaxVisibleCount()Z
    .locals 2

    .line 669
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected calItemLeft(Landroid/view/View;F)I
    .locals 1

    .line 707
    iget p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    float-to-int p1, p2

    :goto_0
    return p1
.end method

.method protected calItemTop(Landroid/view/View;F)I
    .locals 1

    .line 711
    iget p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    float-to-int p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 260
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 268
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 492
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->computeScrollExtent()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->computeScrollOffset()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->computeScrollRange()I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 382
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 386
    :cond_1
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    xor-int/2addr p1, v2

    if-ne v0, p1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 387
    :goto_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result v0

    div-float/2addr p1, v0

    .line 388
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 389
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 391
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->computeScrollExtent()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->computeScrollOffset()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->computeScrollRange()I

    move-result p1

    return p1
.end method

.method ensureLayoutState()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 452
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_0
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 194
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAngle()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->angle:F

    return v0
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 741
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 742
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 743
    :cond_0
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_2

    if-ltz v0, :cond_1

    .line 746
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 749
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    sub-int v0, v1, v0

    goto :goto_0

    :cond_3
    neg-int v0, v0

    .line 750
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getItemCount()I

    move-result v1

    rem-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected getDistanceRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getEnableBringCenterToFront()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mEnableBringCenterToFront:Z

    return v0
.end method

.method public getInfinite()Z
    .locals 1

    .line 801
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    return v0
.end method

.method public getItemSpace()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->itemSpace:I

    return v0
.end method

.method public getMaxVisibleItemCount()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minScale:F

    return v0
.end method

.method public getOffsetToCenter()I
    .locals 2

    .line 781
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result v1

    :goto_0
    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    .line 784
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    neg-float v1, v1

    :goto_1
    mul-float v0, v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getDistanceRatio()F

    move-result v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getSmoothScrollbarEnabled()Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public getTotalSpaceInOther()I
    .locals 2

    .line 434
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 436
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getPaddingBottom()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 439
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getPaddingRight()I

    move-result v1

    goto :goto_0
.end method

.method public isIntegerDy()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mIntegerDy:Z

    return v0
.end method

.method protected maxRemoveOffset()F
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method protected minRemoveOffset()F
    .locals 2

    .line 727
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 469
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeAllViews()V

    const/4 p1, 0x0

    .line 470
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 228
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 229
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 231
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 397
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 398
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    .line 399
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->ensureLayoutState()V

    .line 404
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->resolveShouldLayoutReverse()V

    const/4 p2, 0x0

    .line 407
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0, p2, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 409
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    .line 410
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurementInOther:I

    .line 411
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    .line 412
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getTotalSpaceInOther()I

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceInOther:I

    .line 413
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setInterval()F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    .line 414
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->setUp()V

    .line 415
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minRemoveOffset()F

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mLeftItems:I

    .line 416
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->maxRemoveOffset()F

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mRightItems:I

    .line 418
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    if-eqz p2, :cond_1

    .line 419
    iget-boolean p2, p2, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->isReverseLayout:Z

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    .line 420
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    iget p2, p2, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->position:I

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingScrollPosition:I

    .line 421
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    iget p2, p2, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->offset:F

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    .line 424
    :cond_1
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingScrollPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 425
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-eqz v0, :cond_2

    int-to-float p2, p2

    .line 426
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_0

    :cond_2
    int-to-float p2, p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    :goto_0
    mul-float p2, p2, v0

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    .line 429
    :cond_3
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 445
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 446
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 447
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingScrollPosition:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 249
    instance-of v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    check-cast p1, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;-><init>(Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    .line 251
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;-><init>(Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;)V

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;-><init>()V

    .line 241
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingScrollPosition:I

    iput v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->position:I

    .line 242
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    iput v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->offset:F

    .line 243
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$SavedState;->isReverseLayout:Z

    return-object v0
.end method

.method protected propertyChangeWhenScroll(Landroid/view/View;)F
    .locals 2

    .line 731
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    :goto_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    return p1

    .line 733
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    goto :goto_0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 550
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 553
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 475
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mPendingScrollPosition:I

    .line 476
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    int-to-float p1, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInterval:F

    :goto_0
    mul-float p1, p1, v0

    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOffset:F

    .line 477
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 558
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 561
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setAngle(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->angle:F

    return-void
.end method

.method public setEnableBringCenterToFront(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 825
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 826
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mEnableBringCenterToFront:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 829
    :cond_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mEnableBringCenterToFront:Z

    .line 830
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->requestLayout()V

    return-void
.end method

.method public setInfinite(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 792
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 793
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 796
    :cond_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mInfinite:Z

    .line 797
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->requestLayout()V

    return-void
.end method

.method public setIntegerDy(Z)V
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mIntegerDy:Z

    return-void
.end method

.method protected setInterval()F
    .locals 2

    .line 130
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mDecoratedMeasurement:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->itemSpace:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public setItemSpace(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->itemSpace:I

    return-void
.end method

.method protected setItemViewProperty(Landroid/view/View;F)V
    .locals 2

    .line 134
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSpaceMain:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->calculateScale(F)F

    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 140
    :cond_0
    invoke-direct {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->calRotation(F)F

    move-result p2

    .line 141
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_1
    neg-float p2, p2

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    :goto_0
    return-void
.end method

.method public setMaxVisibleItemCount(I)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 317
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 318
    :cond_0
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mMaxVisibleItemCount:I

    .line 319
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->minScale:F

    return-void
.end method

.method public setOnPageChangeListener(Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 291
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    return-void

    .line 294
    :cond_2
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientation:I

    .line 295
    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 296
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 370
    :cond_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mReverseLayout:Z

    .line 371
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .line 821
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method protected setUp()V
    .locals 0

    return-void
.end method

.method protected setViewElevation(Landroid/view/View;F)F
    .locals 0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float p1, p1, p2

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 376
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 378
    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
