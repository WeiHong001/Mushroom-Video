.class public Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;
.super Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;
.source "RefreshFooterLayout.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;
    }
.end annotation


# static fields
.field private static final TXT_CLICK_RETRY:Ljava/lang/String; = "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u70b9\u6211\u91cd\u8bd5"

.field private static final TXT_LOADING:Ljava/lang/String; = "\u6b63\u5728\u52a0\u8f7d\u4e2d..."


# instance fields
.field private hasMore:Z

.field private isError:Z

.field private isLoading:Z

.field private mChild:Landroid/view/View;

.field private mListener:Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/kotlin/basiclib/R$layout;->layout_refresh_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mChild:Landroid/view/View;

    .line 51
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mChild:Landroid/view/View;

    sget v1, Lcom/kotlin/basiclib/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mProgress:Landroid/widget/ProgressBar;

    .line 54
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mChild:Landroid/view/View;

    sget v1, Lcom/kotlin/basiclib/R$id;->refresh_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mState:Landroid/widget/TextView;

    .line 56
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 61
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->setHeight(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->setOriginHeight(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->load()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/widget/customview/SpecifyHeightLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public load()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->hasMore:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isLoading:Z

    .line 110
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->resetOrightHeight()V

    .line 111
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mState:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mListener:Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;

    invoke-interface {v0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 123
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isError:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isLoading:Z

    .line 125
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->hasMore:Z

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isError:Z

    .line 127
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mState:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mListener:Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;

    invoke-interface {v0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;->onRefresh()V

    .line 129
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onLoadComplete()V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 92
    invoke-virtual {p0, p0, v0, v1}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isLoading:Z

    return-void
.end method

.method public setError()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->hasMore:Z

    .line 85
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isLoading:Z

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->isError:Z

    .line 87
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mState:Landroid/widget/TextView;

    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u70b9\u6211\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->hasMore:Z

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->resetOrightHeight()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->setHeight(I)V

    :goto_0
    return-void
.end method

.method public setRefreshListener(Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout;->mListener:Lcom/kotlin/basiclib/widget/customview/RefreshFooterLayout$RefreshListener;

    return-void
.end method
