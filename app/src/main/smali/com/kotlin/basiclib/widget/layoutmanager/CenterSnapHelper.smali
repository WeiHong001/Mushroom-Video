.class public Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source "CenterSnapHelper.java"


# instance fields
.field mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private snapToCenter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->snapToCenter:Z

    .line 29
    new-instance v0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper$1;-><init>(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->snapToCenter:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->snapToCenter:Z

    return p1
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->destroyCallbacks()V

    .line 127
    :cond_1
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 130
    instance-of v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;

    if-nez v0, :cond_2

    return-void

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->setupCallbacks()V

    .line 133
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 136
    check-cast p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;

    iget-object v0, p1, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;

    invoke-virtual {p0, p1, v0}, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->snapToCenterView(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;)V

    :cond_3
    return-void
.end method

.method destroyCallbacks()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 175
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method public onFling(II)Z
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getInfinite()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    .line 77
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMaxOffset()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOffset:F

    .line 78
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getMinOffset()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :cond_2
    return v1

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 86
    iget v2, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 87
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p2, v1, :cond_5

    .line 88
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result p1

    .line 89
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getFinalY()I

    move-result p2

    int-to-float p2, p2

    iget v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    div-float/2addr p2, v1

    .line 90
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    .line 91
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_4
    add-int/2addr p1, p2

    :goto_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v3

    .line 94
    :cond_5
    iget p2, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mOrientation:I

    if-nez p2, :cond_7

    .line 95
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v1, :cond_7

    .line 96
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result p1

    .line 97
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getFinalX()I

    move-result p2

    int-to-float p2, p2

    iget v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->mInterval:F

    div-float/2addr p2, v1

    .line 98
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    .line 99
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_6

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_6
    add-int/2addr p1, p2

    :goto_1
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_7
    return v3
.end method

.method setupCallbacks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 167
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method snapToCenterView(Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;)V
    .locals 4

    .line 143
    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getOffsetToCenter()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 147
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 152
    :cond_1
    iput-boolean v1, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterSnapHelper;->snapToCenter:Z

    :goto_0
    if-eqz p2, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager;->getCurrentPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/BannerLayoutManager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    return-void
.end method
