.class public Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MsgView.java"


# instance fields
.field private backgroundColor:I

.field private context:Landroid/content/Context;

.field private cornerRadius:I

.field private gd_background:Landroid/graphics/drawable/GradientDrawable;

.field private isRadiusHalfHeight:Z

.field private isWidthHeightEqual:Z

.field private strokeColor:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->gd_background:Landroid/graphics/drawable/GradientDrawable;

    .line 33
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->context:Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/kotlin/basiclib/R$styleable;->MsgView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/kotlin/basiclib/R$styleable;->MsgView_mv_backgroundColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->backgroundColor:I

    .line 40
    sget p2, Lcom/kotlin/basiclib/R$styleable;->MsgView_mv_cornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->cornerRadius:I

    .line 41
    sget p2, Lcom/kotlin/basiclib/R$styleable;->MsgView_mv_strokeWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeWidth:I

    .line 42
    sget p2, Lcom/kotlin/basiclib/R$styleable;->MsgView_mv_strokeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeColor:I

    .line 43
    sget p2, Lcom/kotlin/basiclib/R$styleable;->MsgView_mv_isRadiusHalfHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isRadiusHalfHeight:Z

    .line 44
    sget p2, Lcom/kotlin/basiclib/R$styleable;->MsgView_mv_isWidthHeightEqual:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isWidthHeightEqual:Z

    .line 46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/GradientDrawable;II)V
    .locals 0

    .line 137
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 138
    iget p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->cornerRadius:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 139
    iget p2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->backgroundColor:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->cornerRadius:I

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeWidth:I

    return v0
.end method

.method public isRadiusHalfHeight()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isRadiusHalfHeight:Z

    return v0
.end method

.method public isWidthHeightEqual()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isWidthHeightEqual:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 63
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 64
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isRadiusHalfHeight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setCornerRadius(I)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isWidthHeightEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 53
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 54
    invoke-super {p0, p1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->backgroundColor:I

    .line 74
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setBgSelector()V
    .locals 4

    .line 143
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->gd_background:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->backgroundColor:I

    iget v3, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeColor:I

    invoke-direct {p0, v1, v2, v3}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setDrawable(Landroid/graphics/drawable/GradientDrawable;II)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x10100a7

    aput v3, v1, v2

    .line 146
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->gd_background:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    int-to-float p1, p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->cornerRadius:I

    .line 79
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setIsRadiusHalfHeight(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isRadiusHalfHeight:Z

    .line 94
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setIsWidthHeightEqual(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->isWidthHeightEqual:Z

    .line 99
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeColor:I

    .line 89
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    int-to-float p1, p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->strokeWidth:I

    .line 84
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setBgSelector()V

    return-void
.end method

.method protected sp2px(F)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
