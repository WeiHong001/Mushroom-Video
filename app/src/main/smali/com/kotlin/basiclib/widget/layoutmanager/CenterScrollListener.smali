.class public Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CenterScrollListener.java"


# instance fields
.field private mAutoSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;->mAutoSet:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    .line 15
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;

    iget-object v1, v0, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->onPageChangeListener:Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v1, p2}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_6

    .line 24
    iget-boolean p2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;->mAutoSet:Z

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPosition()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;->onPageSelected(I)V

    .line 28
    :cond_1
    iput-boolean v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;->mAutoSet:Z

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getOffsetToCenter()I

    move-result p2

    if-eqz p2, :cond_4

    .line 33
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 34
    invoke-virtual {p1, v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1, p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 37
    :goto_0
    iput-boolean v2, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;->mAutoSet:Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 40
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager;->getCurrentPosition()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/kotlin/basiclib/widget/layoutmanager/OverFlyingLayoutManager$OnPageChangeListener;->onPageSelected(I)V

    .line 42
    :cond_5
    iput-boolean v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;->mAutoSet:Z

    goto :goto_1

    :cond_6
    if-eq p2, v2, :cond_7

    const/4 p1, 0x2

    if-ne p2, p1, :cond_8

    .line 46
    :cond_7
    iput-boolean v3, p0, Lcom/kotlin/basiclib/widget/layoutmanager/CenterScrollListener;->mAutoSet:Z

    :cond_8
    :goto_1
    return-void
.end method
