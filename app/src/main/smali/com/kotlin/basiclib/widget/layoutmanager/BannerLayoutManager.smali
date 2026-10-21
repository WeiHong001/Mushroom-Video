.class public Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "BannerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;,
        Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;
    }
.end annotation


# static fields
.field public static final DETERMINE_BY_MAX_AND_MIN:I = -0x1

.field private static final DIRECTION_BACKWARD:I = 0x1

.field private static final DIRECTION_FORWARD:I = 0x0

.field private static final DIRECTION_NO_WHERE:I = -0x1

.field public static final HORIZONTAL:I = 0x0

.field protected static final INVALID_SIZE:I = 0x7fffffff

.field public static final VERTICAL:I = 0x1


# instance fields
.field private centerScale:F

.field private currentFocusView:Landroid/view/View;

.field private itemSpace:I

.field protected mDecoratedMeasurement:I

.field protected mDecoratedMeasurementInOther:I

.field private mDistanceToBottom:I

.field private mEnableBringCenterToFront:Z

.field private mInfinite:Z

.field protected mInterval:F

.field private mLeftItems:I

.field private mMaxVisibleItemCount:I

.field protected mOffset:F

.field mOrientation:I

.field protected mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field private mRightItems:I

.field private mShouldReverseLayout:Z

.field private mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mSmoothScrollbarEnabled:Z

.field protected mSpaceInOther:I

.field protected mSpaceMain:I

.field private moveSpeed:F

.field onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;

.field private positionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, v0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

    .line 194
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mReverseLayout:Z

    .line 77
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, -0x1

    .line 89
    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingScrollPosition:I

    const/4 v2, 0x0

    .line 91
    iput-object v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    .line 99
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    .line 110
    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

    const v1, 0x7fffffff

    .line 114
    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    const/16 v1, 0x14

    .line 127
    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->itemSpace:I

    const v1, 0x3f99999a    # 1.2f

    .line 129
    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->centerScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    iput v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->moveSpeed:F

    .line 195
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setEnableBringCenterToFront(Z)V

    const/4 v1, 0x3

    .line 196
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setMaxVisibleItemCount(I)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setOrientation(I)V

    .line 198
    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setReverseLayout(Z)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setItemPrefetchEnabled(Z)V

    return-void
.end method

.method private calculateScale(F)F
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 167
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    int-to-float v1, v0

    sub-float/2addr v1, p1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v1, v0

    sub-float v2, v1, p1

    .line 168
    :cond_0
    iget p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->centerScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    return p1
.end method

.method private computeScrollExtent()I
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 568
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 572
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    float-to-int v0, v0

    return v0
.end method

.method private computeScrollOffset()I
    .locals 3

    .line 550
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 554
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_2

    .line 555
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_1

    .line 556
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    .line 559
    :cond_2
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getOffsetOfRightAdapterPosition()F

    move-result v0

    .line 560
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v1, :cond_3

    float-to-int v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    :goto_1
    return v0
.end method

.method private computeScrollRange()I
    .locals 2

    .line 576
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 580
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    return v0

    .line 584
    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentPositionOffset()I
    .locals 2

    .line 802
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getMovement(I)I
    .locals 3

    .line 476
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 478
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr p1, v2

    return p1

    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 480
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    return p1

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    .line 486
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr p1, v2

    return p1

    :cond_3
    const/16 v0, 0x42

    if-ne p1, v0, :cond_4

    .line 488
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    return p1

    :cond_4
    return v1
.end method

.method private getOffsetOfRightAdapterPosition()F
    .locals 4

    .line 810
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 811
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 812
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 813
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    rem-float/2addr v0, v1

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    neg-float v2, v1

    mul-float v0, v0, v2

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_0

    .line 815
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    :goto_0
    return v0

    .line 817
    :cond_2
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_4

    .line 818
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 819
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    rem-float/2addr v0, v1

    goto :goto_1

    .line 820
    :cond_3
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_1

    .line 821
    :cond_4
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    :goto_1
    return v0
.end method

.method private getProperty(I)F
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    int-to-float p1, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    :goto_0
    mul-float p1, p1, v0

    return p1
.end method

.method private layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 11

    .line 634
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 635
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 637
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_1

    .line 642
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v1

    neg-int v1, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v1

    .line 643
    :goto_0
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mLeftItems:I

    sub-int v2, v1, v2

    .line 644
    iget v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mRightItems:I

    add-int/2addr v3, v1

    .line 647
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->useMaxVisibleCount()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 648
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 650
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    sub-int/2addr v2, v4

    .line 654
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    :goto_2
    add-int/2addr v2, v1

    add-int/2addr v2, v4

    move v10, v3

    move v3, v2

    move v2, v10

    .line 660
    :cond_4
    iget-boolean v4, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-nez v4, :cond_7

    if-gez v2, :cond_6

    .line 663
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->useMaxVisibleCount()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

    :cond_5
    const/4 v2, 0x0

    :cond_6
    if-le v3, v0, :cond_7

    move v3, v0

    :cond_7
    const/4 v4, 0x1

    :goto_3
    if-ge v2, v3, :cond_10

    .line 670
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->useMaxVisibleCount()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, v2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getProperty(I)F

    move-result v6

    iget v7, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeCondition(F)Z

    move-result v6

    if-nez v6, :cond_f

    :cond_8
    if-lt v2, v0, :cond_9

    .line 675
    rem-int v6, v2, v0

    goto :goto_4

    :cond_9
    if-gez v2, :cond_b

    neg-int v6, v2

    .line 677
    rem-int/2addr v6, v0

    if-nez v6, :cond_a

    move v6, v0

    :cond_a
    sub-int v6, v0, v6

    goto :goto_4

    :cond_b
    move v6, v2

    .line 681
    :goto_4
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v7

    .line 682
    invoke-virtual {p0, v7, v5, v5}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 683
    invoke-direct {p0, v7}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->resetViewProperty(Landroid/view/View;)V

    .line 685
    invoke-direct {p0, v2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getProperty(I)F

    move-result v8

    iget v9, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr v8, v9

    .line 686
    invoke-direct {p0, v7, v8}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->layoutScrap(Landroid/view/View;F)V

    .line 687
    iget-boolean v9, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mEnableBringCenterToFront:Z

    if-eqz v9, :cond_c

    .line 688
    invoke-virtual {p0, v7, v8}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setViewElevation(Landroid/view/View;F)F

    move-result v6

    goto :goto_5

    :cond_c
    int-to-float v6, v6

    :goto_5
    cmpl-float v4, v6, v4

    if-lez v4, :cond_d

    .line 690
    invoke-virtual {p0, v7}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 692
    :cond_d
    invoke-virtual {p0, v7, v5}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->addView(Landroid/view/View;I)V

    :goto_6
    if-ne v2, v1, :cond_e

    .line 694
    iput-object v7, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->currentFocusView:Landroid/view/View;

    .line 696
    :cond_e
    iget-object v4, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v6

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 700
    :cond_10
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->currentFocusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private layoutScrap(Landroid/view/View;F)V
    .locals 9

    .line 730
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->calItemLeft(Landroid/view/View;F)I

    move-result v0

    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->calItemTop(Landroid/view/View;F)I

    move-result v1

    .line 732
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 733
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceInOther:I

    add-int v5, v2, v0

    iget v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceMain:I

    add-int v6, v3, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v7, v2, v0

    add-int/2addr v3, v1

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    add-int v8, v3, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_0

    .line 736
    :cond_0
    iget v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceMain:I

    add-int v5, v2, v0

    iget v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceInOther:I

    add-int v6, v3, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    add-int v7, v2, v0

    add-int/2addr v3, v1

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v8, v3, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 739
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setItemViewProperty(Landroid/view/View;F)V

    return-void
.end method

.method private removeCondition(F)Z
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->maxRemoveOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->minRemoveOffset()F

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

    .line 712
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 713
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 714
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 715
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 716
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 717
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 341
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mReverseLayout:Z

    :cond_0
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 604
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->ensureLayoutState()V

    int-to-float p3, p1

    .line 610
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float v1, p3, v1

    .line 611
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v0

    .line 614
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    add-float/2addr v0, v1

    .line 617
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMinOffset()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 618
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMinOffset()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result p1

    mul-float v0, v0, p1

    sub-float/2addr p3, v0

    float-to-int p1, p3

    goto :goto_0

    .line 619
    :cond_2
    iget-boolean p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMaxOffset()F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_3

    .line 620
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMaxOffset()F

    move-result p1

    iget p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr p1, p3

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    :cond_3
    :goto_0
    int-to-float p3, p1

    .line 623
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v0

    div-float/2addr p3, v0

    .line 625
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    .line 628
    invoke-direct {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method private useMaxVisibleCount()Z
    .locals 2

    .line 704
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

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

    .line 743
    iget p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

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

    .line 747
    iget p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

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

    .line 271
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

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

    .line 279
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

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

    .line 531
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->computeScrollExtent()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 521
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->computeScrollOffset()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->computeScrollRange()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->computeScrollExtent()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->computeScrollOffset()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->computeScrollRange()I

    move-result p1

    return p1
.end method

.method ensureLayoutState()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 497
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_0
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 4

    .line 786
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 788
    :goto_0
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 789
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 791
    rem-int/2addr v3, v0

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 793
    :cond_1
    rem-int/2addr v3, v0

    if-nez v3, :cond_2

    neg-int v3, v0

    :cond_2
    add-int/2addr v3, v0

    if-ne v3, p1, :cond_3

    .line 795
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 205
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .line 768
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 770
    :cond_0
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 771
    iget-boolean v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 773
    :cond_1
    iget-boolean v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v2, :cond_3

    if-ltz v0, :cond_2

    .line 776
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v3

    rem-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    .line 779
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v3

    rem-int/2addr v0, v3

    sub-int v0, v2, v0

    goto :goto_0

    :cond_4
    neg-int v0, v0

    .line 780
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    .line 781
    :goto_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    return v1
.end method

.method protected getDistanceRatio()F
    .locals 2

    .line 134
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->moveSpeed:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getDistanceToBottom()I
    .locals 2

    .line 862
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getTotalSpaceInOther()I

    move-result v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method

.method public getEnableBringCenterToFront()Z
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mEnableBringCenterToFront:Z

    return v0
.end method

.method public getInfinite()Z
    .locals 1

    .line 858
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    return v0
.end method

.method getMaxOffset()F
    .locals 2

    .line 721
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxVisibleItemCount()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

    return v0
.end method

.method getMinOffset()F
    .locals 2

    .line 725
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    :goto_0
    return v0
.end method

.method public getOffsetToCenter()I
    .locals 2

    .line 829
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v1

    :goto_0
    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    .line 832
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    neg-float v1, v1

    :goto_1
    mul-float v0, v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v1

    goto :goto_0
.end method

.method public getOffsetToPosition(I)I
    .locals 2

    .line 836
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 837
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 838
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int p1, v1, p1

    :goto_0
    add-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr p1, v0

    .line 839
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v0

    :goto_1
    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    int-to-float p1, p1

    .line 841
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    :goto_2
    mul-float p1, p1, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v0

    goto :goto_1
.end method

.method public getOrientation()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    return v0
.end method

.method public getRecycleChildrenOnDetach()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mRecycleChildrenOnDetach:Z

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getSmoothScrollbarEnabled()Z
    .locals 1

    .line 913
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public getTotalSpaceInOther()I
    .locals 2

    .line 437
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 439
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getPaddingBottom()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 442
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getPaddingRight()I

    move-result v1

    goto :goto_0
.end method

.method protected maxRemoveOffset()F
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method protected minRemoveOffset()F
    .locals 2

    .line 763
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 514
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAllViews()V

    const/4 p1, 0x0

    .line 515
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result v0

    .line 455
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 457
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    invoke-direct {p0, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMovement(I)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    if-ne p2, v2, :cond_1

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 462
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {v1, p2, p3, p4}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_3
    :goto_1
    return v2
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 240
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 242
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 396
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    .line 398
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->ensureLayoutState()V

    .line 403
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->resolveShouldLayoutReverse()V

    const/4 p2, 0x0

    .line 406
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 407
    invoke-virtual {p0, v0, p2, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 408
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    .line 409
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    .line 410
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceMain:I

    .line 411
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getTotalSpaceInOther()I

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceInOther:I

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getTotalSpaceInOther()I

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceInOther:I

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setInterval()F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    .line 418
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->setUp()V

    .line 419
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->minRemoveOffset()F

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mLeftItems:I

    .line 420
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->maxRemoveOffset()F

    move-result p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mRightItems:I

    .line 422
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    if-eqz p2, :cond_2

    .line 423
    iget-boolean p2, p2, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->isReverseLayout:Z

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    .line 424
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    iget p2, p2, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->position:I

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingScrollPosition:I

    .line 425
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    iget p2, p2, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->offset:F

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    .line 428
    :cond_2
    iget p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingScrollPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 429
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    int-to-float p2, p2

    .line 430
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_1

    :cond_3
    int-to-float p2, p2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    :goto_1
    mul-float p2, p2, v0

    iput p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    .line 433
    :cond_4
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 447
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 448
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 449
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingScrollPosition:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 260
    instance-of v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    check-cast p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;-><init>(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    .line 262
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingSavedState:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;-><init>(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;)V

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;-><init>()V

    .line 252
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingScrollPosition:I

    iput v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->position:I

    .line 253
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    iput v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->offset:F

    .line 254
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$SavedState;->isReverseLayout:Z

    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 589
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 592
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    .line 389
    :cond_1
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mPendingScrollPosition:I

    .line 390
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mShouldReverseLayout:Z

    int-to-float p1, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    :goto_0
    mul-float p1, p1, v0

    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    .line 391
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 597
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 600
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setCenterScale(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->centerScale:F

    return-void
.end method

.method public setDistanceToBottom(I)V
    .locals 1

    const/4 v0, 0x0

    .line 867
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 868
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    if-ne v0, p1, :cond_0

    return-void

    .line 869
    :cond_0
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    .line 870
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setEnableBringCenterToFront(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 894
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 895
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mEnableBringCenterToFront:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 898
    :cond_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mEnableBringCenterToFront:Z

    .line 899
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->requestLayout()V

    return-void
.end method

.method public setInfinite(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 849
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 850
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 853
    :cond_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInfinite:Z

    .line 854
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->requestLayout()V

    return-void
.end method

.method protected setInterval()F
    .locals 4

    .line 140
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDecoratedMeasurement:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->centerScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->itemSpace:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public setItemSpace(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->itemSpace:I

    return-void
.end method

.method protected setItemViewProperty(Landroid/view/View;F)V
    .locals 1

    .line 156
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSpaceMain:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->calculateScale(F)F

    move-result p2

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setMaxVisibleItemCount(I)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

    if-ne v0, p1, :cond_0

    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mMaxVisibleItemCount:I

    .line 332
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setMoveSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->moveSpeed:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->moveSpeed:F

    return-void
.end method

.method public setOnPageChangeListener(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 300
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

    .line 302
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 303
    iget v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_2

    return-void

    .line 306
    :cond_2
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    .line 307
    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    const p1, 0x7fffffff

    .line 308
    iput p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mDistanceToBottom:I

    .line 309
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setRecycleChildrenOnDetach(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mRecycleChildrenOnDetach:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 366
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 369
    :cond_0
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mReverseLayout:Z

    .line 370
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->removeAllViews()V

    return-void
.end method

.method public setSmoothScrollInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .line 890
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method protected setUp()V
    .locals 0

    return-void
.end method

.method protected setViewElevation(Landroid/view/View;F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2

    .line 379
    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getOffsetToPosition(I)I

    move-result p2

    .line 380
    iget p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 381
    iget-object p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method
