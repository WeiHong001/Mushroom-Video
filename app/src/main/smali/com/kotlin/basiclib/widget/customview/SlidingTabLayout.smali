.class public Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;
    }
.end annotation


# static fields
.field private static final STYLE_BLOCK:I = 0x2

.field private static final STYLE_NORMAL:I = 0x0

.field private static final STYLE_TRIANGLE:I = 0x1

.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPositionOffset:F

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mHeight:I

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorGravity:I

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorStyle:I

.field private mIndicatorWidth:F

.field private mIndicatorWidthEqualTitle:Z

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScrollX:I

.field private mListener:Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSnapOnTabClick:Z

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabRect:Landroid/graphics/Rect;

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mUnderlineColor:I

.field private mUnderlineGravity:I

.field private mUnderlineHeight:F

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private margin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 49
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabRect:Landroid/graphics/Rect;

    .line 50
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 52
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mRectPaint:Landroid/graphics/Paint;

    .line 53
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 54
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePaint:Landroid/graphics/Paint;

    .line 55
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    const/4 p3, 0x0

    .line 59
    iput p3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    .line 763
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 764
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    .line 111
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->setFillViewport(Z)V

    .line 112
    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->setWillNotDraw(Z)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->setClipChildren(Z)V

    .line 114
    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->setClipToPadding(Z)V

    .line 116
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mContext:Landroid/content/Context;

    .line 117
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 118
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_height"

    .line 123
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "-2"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    const v1, 0x10100f5

    aput v1, v0, p3

    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x2

    .line 130
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mHeight:I

    .line 131
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mSnapOnTabClick:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mListener:Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    return-object p0
.end method

.method private addTab(ILjava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 255
    sget v0, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 257
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    new-instance p2, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;

    invoke-direct {p2, p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$1;-><init>(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-boolean p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabSpaceEqual:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 286
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    :goto_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 289
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    float-to-int v1, v1

    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calcIndicatorRect()V
    .locals 9

    .line 383
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 385
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 388
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidthEqualTitle:Z

    if-eqz v3, :cond_0

    .line 389
    sget v3, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 390
    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 391
    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float v5, v2, v1

    sub-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 392
    iput v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->margin:F

    .line 395
    :cond_0
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    .line 396
    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    .line 398
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    .line 400
    iget v7, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentPositionOffset:F

    sub-float v8, v5, v1

    mul-float v8, v8, v7

    add-float/2addr v1, v8

    sub-float v8, v6, v2

    mul-float v7, v7, v8

    add-float/2addr v2, v7

    .line 404
    iget v7, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidthEqualTitle:Z

    if-eqz v7, :cond_1

    .line 405
    sget v7, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 406
    iget-object v7, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    iget-object v7, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v6, v5

    sub-float/2addr v6, v3

    div-float/2addr v6, v4

    .line 409
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->margin:F

    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentPositionOffset:F

    sub-float/2addr v6, v3

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    iput v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->margin:F

    .line 413
    :cond_1
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v5, v1

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 414
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v6, v2

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 416
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidthEqualTitle:Z

    if-eqz v3, :cond_2

    .line 417
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->margin:F

    add-float/2addr v1, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 418
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->margin:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabRect:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 422
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabRect:Landroid/graphics/Rect;

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 424
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidth:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 429
    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 430
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 431
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentPositionOffset:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v3, v3, v0

    add-float/2addr v1, v3

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 435
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidth:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-void
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 136
    sget-object v0, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 138
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_style:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    .line 139
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_color:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const-string v2, "#ffffff"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "#4B6A87"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorColor:I

    .line 140
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_height:I

    .line 141
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    int-to-float v1, v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    .line 140
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    .line 142
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_width:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const/high16 v5, -0x40800000    # -1.0f

    if-ne v1, v4, :cond_3

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_3

    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    :goto_3
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidth:F

    .line 143
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_corner_radius:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    .line 144
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v4}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginLeft:F

    .line 145
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_margin_top:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const/high16 v6, 0x40e00000    # 7.0f

    if-ne v1, v3, :cond_5

    const/high16 v1, 0x40e00000    # 7.0f

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    .line 146
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v4}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginRight:F

    .line 147
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_margin_bottom:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    if-ne v1, v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {p0, v6}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginBottom:F

    .line 148
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_gravity:I

    const/16 v1, 0x50

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorGravity:I

    .line 149
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_indicator_width_equal_title:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidthEqualTitle:Z

    .line 151
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_underline_color:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineColor:I

    .line 152
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_underline_height:I

    invoke-virtual {p0, v4}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineHeight:F

    .line 153
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_underline_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineGravity:I

    .line 155
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_divider_color:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerColor:I

    .line 156
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_divider_width:I

    invoke-virtual {p0, v4}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerWidth:F

    .line 157
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_divider_padding:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPadding:F

    .line 159
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_textsize:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->sp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    .line 160
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_textSelectColor:I

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextSelectColor:I

    .line 161
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_textUnselectColor:I

    const-string v1, "#AAffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextUnselectColor:I

    .line 162
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_textBold:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextBold:I

    .line 163
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_textAllCaps:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextAllCaps:Z

    .line 165
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_tab_space_equal:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabSpaceEqual:Z

    .line 166
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_tab_width:I

    invoke-virtual {p0, v5}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    .line 167
    sget p2, Lcom/kotlin/basiclib/R$styleable;->SlidingTabLayout_tl_tab_padding:I

    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabSpaceEqual:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    goto :goto_7

    :cond_7
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v0

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual {p0, v4}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result v0

    :goto_8
    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabPadding:F

    .line 169
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private scrollToCurrentTab()V
    .locals 3

    .line 340
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-gtz v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentPositionOffset:F

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 346
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    .line 348
    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    if-gtz v2, :cond_1

    if-lez v0, :cond_2

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 351
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->calcIndicatorRect()V

    .line 352
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 355
    :cond_2
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mLastScrollX:I

    if-eq v1, v0, :cond_3

    .line 356
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mLastScrollX:I

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 296
    :goto_0
    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    sget v3, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 301
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextSelectColor:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextUnselectColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 303
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabPadding:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 304
    iget-boolean v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextAllCaps:Z

    if-eqz v3, :cond_1

    .line 305
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_1
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextBold:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 309
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 311
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addNewTab(Ljava/lang/String;)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/kotlin/basiclib/R$layout;->layout_tab:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTitles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTitles:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 247
    :goto_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->addTab(ILjava/lang/String;Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTitles:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    .line 250
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method protected dp2px(F)I
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mContext:Landroid/content/Context;

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

.method public getCurrentTab()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 723
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .line 731
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPadding:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 727
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerWidth:F

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 683
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .line 695
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 687
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .line 711
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginBottom:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .line 699
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginLeft:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .line 707
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginRight:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .line 703
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    .line 667
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    .line 691
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidth:F

    return v0
.end method

.method public getMsgView(I)Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;
    .locals 1

    .line 837
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 841
    sget v0, Lcom/kotlin/basiclib/R$id;->rtv_msg_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 659
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .line 671
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabPadding:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .line 679
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    .line 747
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextBold:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .line 739
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextSelectColor:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .line 743
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextUnselectColor:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .line 735
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 756
    sget v0, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 715
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineColor:I

    return v0
.end method

.method public getUnderlineHeight()F
    .locals 1

    .line 719
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineHeight:F

    return v0
.end method

.method public hideMsg(I)V
    .locals 1

    .line 805
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 810
    sget v0, Lcom/kotlin/basiclib/R$id;->rtv_msg_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 812
    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabSpaceEqual:Z

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTitles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    const/4 v0, 0x0

    .line 231
    :goto_1
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-ge v0, v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/kotlin/basiclib/R$layout;->layout_tab:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTitles:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 234
    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->addTab(ILjava/lang/String;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 441
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 443
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->getHeight()I

    move-result v6

    .line 448
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->getPaddingLeft()I

    move-result v7

    .line 450
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerWidth:F

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v1, v0, v9

    if-lez v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 452
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 453
    :goto_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    sub-int/2addr v0, v8

    if-ge v10, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    int-to-float v1, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPadding:F

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    int-to-float v0, v6

    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPadding:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 460
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineHeight:F

    const/16 v10, 0x50

    cmpl-float v0, v0, v9

    if-lez v0, :cond_3

    .line 461
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineGravity:I

    if-ne v0, v10, :cond_2

    int-to-float v1, v7

    int-to-float v4, v6

    .line 463
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineHeight:F

    sub-float v2, v4, v0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    int-to-float v1, v7

    const/4 v2, 0x0

    .line 465
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineHeight:F

    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 471
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->calcIndicatorRect()V

    .line 472
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    const/4 v1, 0x2

    if-ne v0, v8, :cond_4

    .line 473
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_a

    .line 474
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 476
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    int-to-float v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 477
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/2addr v2, v1

    add-int/2addr v2, v7

    iget-object v4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    div-int/2addr v4, v1

    add-int/2addr v2, v4

    int-to-float v1, v2

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    int-to-float v1, v7

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 479
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 480
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_4
    if-ne v0, v1, :cond_8

    .line 483
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_5

    int-to-float v0, v6

    .line 484
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    .line 489
    :cond_5
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    cmpl-float v1, v0, v9

    if-lez v1, :cond_a

    .line 490
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v3, v1, v9

    if-ltz v3, :cond_6

    div-float v3, v0, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    :cond_6
    div-float/2addr v0, v2

    .line 491
    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    .line 494
    :cond_7
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 495
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v3

    int-to-float v3, v7

    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 498
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 499
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 507
    :cond_8
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_a

    .line 508
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 510
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorGravity:I

    if-ne v0, v10, :cond_9

    .line 511
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    float-to-int v2, v2

    sub-int v2, v6, v2

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginBottom:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v3

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginRight:F

    float-to-int v3, v3

    sub-int/2addr v7, v3

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginBottom:F

    float-to-int v3, v3

    sub-int/2addr v6, v3

    invoke-virtual {v0, v1, v2, v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_2

    .line 516
    :cond_9
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v3

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginRight:F

    float-to-int v3, v3

    sub-int/2addr v7, v3

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    float-to-int v3, v3

    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 521
    :goto_2
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 522
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    .line 324
    iput p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentPositionOffset:F

    .line 325
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->scrollToCurrentTab()V

    .line 326
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabSelection(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 898
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 899
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    .line 900
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    const-string v0, "instanceState"

    .line 901
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 902
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 903
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabSelection(I)V

    .line 904
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->scrollToCurrentTab()V

    .line 907
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 890
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 891
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 892
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    const-string v2, "mCurrentTab"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1

    .line 529
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    .line 530
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentTab(IZ)V
    .locals 1

    .line 535
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mCurrentTab:I

    .line 536
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 614
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerColor:I

    .line 615
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerPadding:F

    .line 625
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mDividerWidth:F

    .line 620
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 560
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorColor:I

    .line 561
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    .line 575
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorCornerRadius:F

    .line 576
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0

    .line 580
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorGravity:I

    .line 581
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorHeight:F

    .line 566
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginLeft:F

    .line 587
    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginTop:F

    .line 588
    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginRight:F

    .line 589
    invoke-virtual {p0, p4}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorMarginBottom:F

    .line 590
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 0

    .line 540
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorStyle:I

    .line 541
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0

    .line 570
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidth:F

    .line 571
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorWidthEqualTitle(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mIndicatorWidthEqualTitle:Z

    .line 595
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 5

    .line 818
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 822
    sget v0, Lcom/kotlin/basiclib/R$id;->rtv_msg_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

    if-eqz v0, :cond_3

    .line 824
    sget v1, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 825
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 826
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 827
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    .line 828
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 829
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr p1, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabPadding:F

    :goto_0
    add-float/2addr v3, p1

    invoke-virtual {p0, p2}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 830
    iget p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mHeight:I

    if-lez p1, :cond_2

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p3}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 831
    invoke-virtual {v0, v2}, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setOnTabSelectListener(Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mListener:Lcom/kotlin/basiclib/widget/commontab/listener/OnTabSelectListener;

    return-void
.end method

.method public setSnapOnTabClick(Z)V
    .locals 0

    .line 654
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mSnapOnTabClick:Z

    return-void
.end method

.method public setTabPadding(F)V
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabPadding:F

    .line 546
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabSpaceEqual:Z

    .line 551
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    .line 555
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabWidth:F

    .line 556
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 649
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextAllCaps:Z

    .line 650
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    .line 644
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextBold:I

    .line 645
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 634
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextSelectColor:I

    .line 635
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    .line 639
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextUnselectColor:I

    .line 640
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    .line 629
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextsize:F

    .line 630
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 599
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineColor:I

    .line 600
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0

    .line 609
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineGravity:I

    .line 610
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 0

    .line 604
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mUnderlineHeight:F

    .line 605
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 180
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 181
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->notifyDataSetChanged()V

    return-void

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 195
    array-length v0, p2

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 199
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTitles:Ljava/util/ArrayList;

    .line 201
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 203
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 204
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->notifyDataSetChanged()V

    return-void

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles length must be the same as the page count !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles can not be EMPTY !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager or ViewPager adapter can not be NULL !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;[Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager/widget/ViewPager;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 214
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 218
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 219
    new-instance v0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout$InnerPagerAdapter;-><init>(Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 221
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 222
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->notifyDataSetChanged()V

    return-void

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Titles can not be EMPTY !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager can not be NULL !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showDot(I)V
    .locals 1

    .line 797
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, p1, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->showMsg(II)V

    return-void
.end method

.method public showMsg(II)V
    .locals 3

    .line 773
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 778
    sget v2, Lcom/kotlin/basiclib/R$id;->rtv_msg_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

    if-eqz v0, :cond_2

    .line 780
    invoke-static {v0, p2}, Lcom/kotlin/basiclib/widget/commontab/utils/UnreadMsgUtils;->show(Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;I)V

    .line 782
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/high16 p2, 0x40800000    # 4.0f

    const/high16 v0, 0x40000000    # 2.0f

    .line 786
    invoke-virtual {p0, p1, p2, v0}, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->setMsgMargin(IFF)V

    .line 787
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected sp2px(F)I
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mContext:Landroid/content/Context;

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

.method public updateTabSelection(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 366
    :goto_0
    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabCount:I

    if-ge v1, v2, :cond_3

    .line 367
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 369
    :goto_1
    sget v5, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    if-eqz v4, :cond_1

    .line 372
    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextSelectColor:I

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextUnselectColor:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/SlidingTabLayout;->mTextBold:I

    if-ne v5, v3, :cond_2

    .line 374
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
