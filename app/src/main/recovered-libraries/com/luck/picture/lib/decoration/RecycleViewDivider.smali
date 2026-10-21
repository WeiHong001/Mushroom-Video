.class public Lcom/luck/picture/lib/decoration/RecycleViewDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RecycleViewDivider.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDividerHeight:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u53c2\u6570\uff01"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    iput p2, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mOrientation:I

    .line 42
    sget-object p2, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->ATTRS:[I

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/decoration/RecycleViewDivider;-><init>(Landroid/content/Context;I)V

    .line 56
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDividerHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/decoration/RecycleViewDivider;-><init>(Landroid/content/Context;I)V

    .line 70
    iput p3, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDividerHeight:I

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mPaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 97
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 98
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 99
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 101
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 103
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 104
    iget v5, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDividerHeight:I

    add-int/2addr v5, v4

    .line 105
    iget-object v6, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    iget-object v6, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    :cond_0
    iget-object v12, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_1

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    int-to-float v11, v5

    move-object v7, p1

    .line 110
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 117
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 118
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 119
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 121
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 124
    iget v5, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDividerHeight:I

    add-int/2addr v5, v4

    .line 125
    iget-object v6, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v6, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 127
    iget-object v6, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    :cond_0
    iget-object v12, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_1

    int-to-float v8, v4

    int-to-float v9, v0

    int-to-float v10, v5

    int-to-float v11, v1

    move-object v7, p1

    .line 130
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 81
    iget p2, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mDividerHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 88
    iget p3, p0, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->mOrientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/decoration/RecycleViewDivider;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method
