.class public Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "ClassicsHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshHeader;"
    }
.end annotation


# static fields
.field public static final ID_TEXT_UPDATE:I

.field public static REFRESH_HEADER_FAILED:Ljava/lang/String;

.field public static REFRESH_HEADER_FINISH:Ljava/lang/String;

.field public static REFRESH_HEADER_LOADING:Ljava/lang/String;

.field public static REFRESH_HEADER_PULLING:Ljava/lang/String;

.field public static REFRESH_HEADER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_HEADER_RELEASE:Ljava/lang/String;

.field public static REFRESH_HEADER_SECONDARY:Ljava/lang/String;

.field public static REFRESH_HEADER_UPDATE:Ljava/lang/String;


# instance fields
.field protected KEY_LAST_UPDATE_TIME:Ljava/lang/String;

.field protected mEnableLastTime:Z

.field protected mLastTime:Ljava/util/Date;

.field protected mLastUpdateFormat:Ljava/text/DateFormat;

.field protected mLastUpdateText:Landroid/widget/TextView;

.field protected mShared:Landroid/content/SharedPreferences;

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;

.field protected mTextSecondary:Ljava/lang/String;

.field protected mTextUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget v0, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_update:I

    sput v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->ID_TEXT_UPDATE:I

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    .line 47
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    .line 49
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    .line 50
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    .line 52
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    .line 53
    sput-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "LAST_UPDATE_TIME"

    .line 56
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    .line 85
    sget p3, Lcom/scwang/smartrefresh/layout/R$layout;->srl_classics_header:I

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 91
    sget p3, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_update:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    .line 95
    new-instance v2, Lcom/scwang/smartrefresh/layout/util/DensityUtil;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;-><init>()V

    .line 97
    sget v3, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_title:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    .line 99
    sget-object v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 101
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v6}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 106
    iget v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 108
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 109
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 110
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 111
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 113
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 114
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 118
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlFinishDuration:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mFinishDuration:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mFinishDuration:I

    .line 119
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    .line 120
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values()[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v4}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 122
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const v3, -0x99999a

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 125
    new-instance v2, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 126
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 127
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_1
    :goto_0
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    .line 133
    new-instance v2, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 134
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 135
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_3
    :goto_1
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 139
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    :cond_4
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    :cond_5
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-super {p0, v2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 153
    :cond_6
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 157
    :cond_7
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 158
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 159
    :cond_8
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 160
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_2

    .line 162
    :cond_9
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_pulling:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    .line 164
    :goto_2
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 165
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 166
    :cond_a
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 167
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_3

    .line 169
    :cond_b
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_loading:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    .line 171
    :goto_3
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 172
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 173
    :cond_c
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 174
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_4

    .line 176
    :cond_d
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_release:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    .line 178
    :goto_4
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 179
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 180
    :cond_e
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 181
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_5

    .line 183
    :cond_f
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_finish:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    .line 185
    :goto_5
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 186
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 187
    :cond_10
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 188
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_6

    .line 190
    :cond_11
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_failed:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    .line 192
    :goto_6
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 193
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_7

    .line 194
    :cond_12
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 195
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_7

    .line 197
    :cond_13
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_secondary:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    .line 199
    :goto_7
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 200
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_8

    .line 201
    :cond_14
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 202
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_8

    .line 204
    :cond_15
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    .line 206
    :goto_8
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 207
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_9

    .line 208
    :cond_16
    sget-object v2, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 209
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_9

    .line 211
    :cond_17
    sget v2, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_update:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    .line 213
    :goto_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 215
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 219
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    const/16 v2, 0x8

    if-eqz p2, :cond_18

    const/4 p2, 0x0

    goto :goto_a

    :cond_18
    const/16 p2, 0x8

    :goto_a
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    :goto_b
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 224
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 226
    :cond_1a
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_c
    :try_start_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_1b

    .line 231
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 234
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 235
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1b

    .line 236
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 242
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const-string p2, "ClassicsHeader"

    .line 246
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    .line 247
    new-instance p1, Ljava/util/Date;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 3

    .line 275
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mArrowView:Landroid/widget/ImageView;

    .line 276
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 277
    sget-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 287
    :pswitch_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 279
    :pswitch_4
    iget-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :pswitch_5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-object p1
.end method

.method public bridge synthetic setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    move-result-object p1

    return-object p1
.end method

.method public setEnableLastTime(Z)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 340
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 341
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_1
    return-object p0
.end method

.method public setLastUpdateText(Ljava/lang/CharSequence;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 1

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 329
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 4

    .line 311
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 312
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object p0
.end method

.method public setTextSizeTime(F)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 350
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, p0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public setTextTimeMarginTop(F)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 367
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setTimeFormat(Ljava/text/DateFormat;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .locals 2

    .line 320
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 321
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
