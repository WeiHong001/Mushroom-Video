.class public Lcom/mogu/tv/view/QsEmptyView;
.super Landroid/widget/RelativeLayout;
.source "QsEmptyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/view/QsEmptyView$EmptyOnclickListner;
    }
.end annotation


# static fields
.field public static final EMPTY:I = 0x0

.field public static final ERROR:I = 0x1

.field public static final LIST:I = 0x2

.field public static final LOADING:I = 0x3

.field public static final NORMAL:I = -0x1


# instance fields
.field private content_loading:Landroidx/core/widget/ContentLoadingProgressBar;

.field private defaltState:I

.field private empty_layout:Landroid/widget/LinearLayout;

.field private empty_text:Landroid/widget/TextView;

.field private iv_empty:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mEmprtyText:Ljava/lang/String;

.field private mResIcon:I

.field onclickListner:Lcom/mogu/tv/view/QsEmptyView$EmptyOnclickListner;

.field rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/mogu/tv/view/QsEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/mogu/tv/view/QsEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/mogu/tv/view/QsEmptyView;->defaltState:I

    .line 55
    iput-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/mogu/tv/view/QsEmptyView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/mogu/tv/R$styleable;->qushare_empty:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mogu/tv/view/QsEmptyView;->mEmprtyText:Ljava/lang/String;

    const p2, 0x7f0f001d

    .line 58
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/mogu/tv/view/QsEmptyView;->mResIcon:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    invoke-direct {p0}, Lcom/mogu/tv/view/QsEmptyView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    iget-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0104

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->rootView:Landroid/view/View;

    const v2, 0x7f0a0192

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->iv_empty:Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->rootView:Landroid/view/View;

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->content_loading:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 69
    iget-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->rootView:Landroid/view/View;

    const v2, 0x7f0a00e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_layout:Landroid/widget/LinearLayout;

    .line 70
    iget-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->rootView:Landroid/view/View;

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_text:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/mogu/tv/view/QsEmptyView;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/view/QsEmptyView;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/view/QsEmptyView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$showState$0$com-mogu-tv-view-QsEmptyView(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->onclickListner:Lcom/mogu/tv/view/QsEmptyView$EmptyOnclickListner;

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/mogu/tv/view/QsEmptyView$EmptyOnclickListner;->onEmptyClick()V

    :cond_0
    return-void
.end method

.method public setEmprtyText(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->mEmprtyText:Ljava/lang/String;

    return-void
.end method

.method public setEmptyOnclickListner(Lcom/mogu/tv/view/QsEmptyView$EmptyOnclickListner;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->onclickListner:Lcom/mogu/tv/view/QsEmptyView$EmptyOnclickListner;

    return-void
.end method

.method public setResIcon(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/mogu/tv/view/QsEmptyView;->mResIcon:I

    return-void
.end method

.method public showState(I)V
    .locals 3

    .line 81
    iput p1, p0, Lcom/mogu/tv/view/QsEmptyView;->defaltState:I

    const/4 v0, -0x1

    const/16 v1, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->content_loading:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mogu/tv/view/QsEmptyView;->mEmprtyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->content_loading:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Lcom/mogu/tv/view/QsEmptyView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kotlin/basiclib/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    const v0, 0x7f0f001d

    if-nez p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_text:Landroid/widget/TextView;

    const-string/jumbo v1, "\u8fde\u63a5\u5931\u8d25\uff0c\u68c0\u67e5\u7f51\u7edc\u5e76\u91cd\u8bd5~~~"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->iv_empty:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_text:Landroid/widget/TextView;

    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25\u4e86\u54e6\uff0c\u8bf7\u91cd\u8bd5~~~"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->iv_empty:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->content_loading:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mogu/tv/view/QsEmptyView;->mEmprtyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->iv_empty:Landroid/widget/ImageView;

    iget v0, p0, Lcom/mogu/tv/view/QsEmptyView;->mResIcon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mogu/tv/view/QsEmptyView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mogu/tv/view/QsEmptyView$$ExternalSyntheticLambda0;-><init>(Lcom/mogu/tv/view/QsEmptyView;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/mogu/tv/view/QsEmptyView;->content_loading:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
