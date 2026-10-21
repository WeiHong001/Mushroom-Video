.class public Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;
.super Landroid/view/ViewGroup;
.source "SpecifyHeightLayout.java"


# instance fields
.field private mGraity:I

.field private mHeight:I

.field private mOright:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x80000000

    .line 17
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mHeight:I

    const/16 p1, 0x30

    .line 18
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mGraity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x80000000

    .line 17
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mHeight:I

    const/16 p1, 0x30

    .line 18
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mGraity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x80000000

    .line 17
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mHeight:I

    const/16 p1, 0x30

    .line 18
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mGraity:I

    return-void
.end method


# virtual methods
.method public getHeightX()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mHeight:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int/2addr p5, p3

    .line 73
    iget p3, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mGraity:I

    const/16 v1, 0x50

    if-ne p3, v1, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    sub-int/2addr p4, p2

    invoke-virtual {v0, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    const/16 p5, 0x30

    if-ne p3, p5, :cond_1

    sub-int/2addr p4, p2

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v0, p1, p1, p4, p2}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 64
    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetOrightHeight()V
    .locals 1

    .line 37
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mOright:I

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->setHeight(I)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mGraity:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mHeight:I

    .line 42
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->requestLayout()V

    return-void
.end method

.method public setOriginHeight(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->mOright:I

    return-void
.end method
