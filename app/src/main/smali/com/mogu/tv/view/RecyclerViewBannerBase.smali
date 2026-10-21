.class public abstract Lcom/mogu/tv/view/RecyclerViewBannerBase;
.super Landroid/widget/FrameLayout;
.source "RecyclerViewBannerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;,
        Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "A:",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected WHAT_AUTO_PLAY:I

.field protected adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected autoPlayDuration:I

.field protected bannerSize:I

.field protected currentIndex:I

.field protected hasInit:Z

.field protected indicatorAdapter:Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mogu/tv/view/RecyclerViewBannerBase<",
            "T",
            "L;",
            "TA;>.IndicatorAdapter;"
        }
    .end annotation
.end field

.field protected indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

.field protected indicatorMargin:I

.field protected isAutoPlaying:Z

.field protected isPlaying:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field protected mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

.field protected showIndicator:Z

.field protected tempUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xfa0

    .line 37
    iput p3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->autoPlayDuration:I

    const/16 p3, 0x3e8

    .line 50
    iput p3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->WHAT_AUTO_PLAY:I

    const/4 p3, 0x1

    .line 53
    iput p3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->bannerSize:I

    .line 58
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->tempUrlList:Ljava/util/List;

    .line 61
    new-instance p3, Landroid/os/Handler;

    new-instance v0, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;

    invoke-direct {v0, p0}, Lcom/mogu/tv/view/RecyclerViewBannerBase$1;-><init>(Lcom/mogu/tv/view/RecyclerViewBannerBase;)V

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected compareListDifferent(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 392
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 396
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mogu/tv/model/BannerImg$ResultItem;

    invoke-virtual {v4}, Lcom/mogu/tv/model/BannerImg$ResultItem;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    .line 399
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mogu/tv/model/BannerImg$ResultItem;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    .line 277
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v1
.end method

.method protected dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 381
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 380
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected abstract getAdapter(Landroid/content/Context;Ljava/util/List;Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;",
            "Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;",
            ")TA;"
        }
    .end annotation
.end method

.method protected getColor(I)I
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected abstract getLayoutManager(Landroid/content/Context;I)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)T",
            "L;"
        }
    .end annotation
.end method

.method public initBannerImageView(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->initBannerImageView(Ljava/util/List;Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;)V

    return-void
.end method

.method public initBannerImageView(Ljava/util/List;Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mogu/tv/model/BannerImg$ResultItem;",
            ">;",
            "Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;",
            ")V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->tempUrlList:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->compareListDifferent(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->hasInit:Z

    .line 234
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setVisibility(I)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->getAdapter(Landroid/content/Context;Ljava/util/List;Lcom/mogu/tv/view/RecyclerViewBannerBase$OnBannerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    iput-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 237
    iget-object v2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 238
    iput-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->tempUrlList:Ljava/util/List;

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->bannerSize:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 241
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 242
    iget p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->bannerSize:I

    mul-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->currentIndex:I

    .line 243
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 244
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorAdapter:Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;

    invoke-virtual {p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->notifyDataSetChanged()V

    .line 245
    invoke-virtual {p0, p2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 248
    iput v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->currentIndex:I

    .line 250
    :goto_0
    iput-boolean p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->hasInit:Z

    .line 252
    :cond_1
    iget-boolean p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->showIndicator:Z

    if-nez p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 88
    sget-object v0, Lcom/kotlin/basiclib/R$styleable;->RecyclerViewBannerBase:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->showIndicator:Z

    const/16 v0, 0x8

    const/16 v2, 0xfa0

    .line 90
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->autoPlayDuration:I

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isAutoPlaying:Z

    const/4 v3, 0x5

    .line 92
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x7

    .line 93
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v4, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 97
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v6, -0x10000

    .line 98
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 101
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    new-array v7, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v7, v2

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 105
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 106
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v6, -0x777778

    .line 107
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 110
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v6, v2

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v3, 0x6

    const/4 v4, 0x4

    .line 113
    invoke-virtual {p0, v4}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorMargin:I

    const/4 v3, 0x3

    const/16 v6, 0x10

    .line 114
    invoke-virtual {p0, v6}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 115
    invoke-virtual {p0, v2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v3

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    const/16 v3, 0xb

    .line 116
    invoke-virtual {p0, v3}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->dp2px(I)I

    move-result v3

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 117
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-nez v4, :cond_2

    const v4, 0x800003

    goto :goto_0

    :cond_2
    if-ne v4, v5, :cond_3

    const v4, 0x800005

    goto :goto_0

    :cond_3
    const/16 v4, 0x11

    :goto_0
    const/16 v5, 0x9

    .line 126
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne v5, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 133
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    new-instance p2, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object v5, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 137
    invoke-virtual {p0, p1, v1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->getLayoutManager(Landroid/content/Context;I)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iput-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 138
    iget-object v1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/mogu/tv/view/RecyclerViewBannerBase$2;

    invoke-direct {v1, p0}, Lcom/mogu/tv/view/RecyclerViewBannerBase$2;-><init>(Lcom/mogu/tv/view/RecyclerViewBannerBase;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 152
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    iget-object v1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, p2}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p2, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 159
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 160
    new-instance p1, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;

    invoke-direct {p1, p0}, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;-><init>(Lcom/mogu/tv/view/RecyclerViewBannerBase;)V

    iput-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorAdapter:Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;

    .line 161
    iget-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    or-int/lit8 p2, v4, 0x50

    .line 164
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 165
    invoke-virtual {p1, v2, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    iget-object p2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2, p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-boolean p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->showIndicator:Z

    if-nez p1, :cond_6

    .line 168
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isPlaying:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 308
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    return-void
.end method

.method protected onBannerScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method protected onBannerScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 299
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 288
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 322
    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 324
    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    :goto_0
    return-void
.end method

.method protected declared-synchronized refreshIndicator()V
    .locals 3

    monitor-enter p0

    .line 369
    :try_start_0
    iget-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->showIndicator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->bannerSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorAdapter:Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;

    iget v2, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->currentIndex:I

    rem-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->setPosition(I)V

    .line 371
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorAdapter:Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/mogu/tv/view/RecyclerViewBannerBase$IndicatorAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoPlaying(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isAutoPlaying:Z

    .line 215
    invoke-virtual {p0, p1}, Lcom/mogu/tv/view/RecyclerViewBannerBase;->setPlaying(Z)V

    return-void
.end method

.method public setIndicatorInterval(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->autoPlayDuration:I

    return-void
.end method

.method protected declared-synchronized setPlaying(Z)V
    .locals 3

    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isAutoPlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->hasInit:Z

    if-eqz v0, :cond_1

    .line 200
    iget-boolean v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isPlaying:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->WHAT_AUTO_PLAY:I

    iget v1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->autoPlayDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isPlaying:Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->WHAT_AUTO_PLAY:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->isPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setShowIndicator(Z)V
    .locals 1

    .line 223
    iput-boolean p1, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->showIndicator:Z

    .line 224
    iget-object v0, p0, Lcom/mogu/tv/view/RecyclerViewBannerBase;->indicatorContainer:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method
