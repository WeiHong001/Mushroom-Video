.class public Lcom/github/like/LikeButton;
.super Landroid/widget/RelativeLayout;
.source "LikeButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private static final DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private animationEndListener:Lcom/github/like/OnAnimationEndListener;

.field private animationScaleFactor:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private circleEndColor:I

.field private circleStartColor:I

.field private circleView:Lcom/github/like/CircleView;

.field private currentIcon:Lcom/github/like/Icon;

.field private dotsView:Lcom/github/like/DotsView;

.field private icon:Landroid/widget/ImageView;

.field private iconSize:I

.field private isChecked:Z

.field private isEnabled:Z

.field private likeDrawable:Landroid/graphics/drawable/Drawable;

.field private likeListener:Lcom/github/like/OnLikeListener;

.field private unLikeDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/github/like/LikeButton;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 31
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/github/like/LikeButton;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 32
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/github/like/LikeButton;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/github/like/LikeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/github/like/LikeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/github/like/LikeButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/github/like/LikeButton;)Lcom/github/like/CircleView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/github/like/LikeButton;)Lcom/github/like/DotsView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/github/like/LikeButton;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/github/like/LikeButton;)Lcom/github/like/OnAnimationEndListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/github/like/LikeButton;->animationEndListener:Lcom/github/like/OnAnimationEndListener;

    return-object p0
.end method

.method private getDrawableFromResource(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    .line 143
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/github/like/view/R$layout;->likeview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    sget v0, Lcom/github/like/view/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/github/like/LikeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    .line 82
    sget v0, Lcom/github/like/view/R$id;->dots:I

    invoke-virtual {p0, v0}, Lcom/github/like/LikeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/like/DotsView;

    iput-object v0, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    .line 83
    sget v0, Lcom/github/like/view/R$id;->circle:I

    invoke-virtual {p0, v0}, Lcom/github/like/LikeButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/like/CircleView;

    iput-object v0, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    .line 85
    sget-object v0, Lcom/github/like/view/R$styleable;->LikeButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_icon_size:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/github/like/LikeButton;->iconSize:I

    if-ne p2, p3, :cond_0

    const/16 p2, 0x28

    .line 89
    iput p2, p0, Lcom/github/like/LikeButton;->iconSize:I

    .line 91
    :cond_0
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_icon_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 93
    sget p3, Lcom/github/like/view/R$styleable;->LikeButton_like_drawable:I

    invoke-direct {p0, p1, p3}, Lcom/github/like/LikeButton;->getDrawableFromResource(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 96
    invoke-virtual {p0, p3}, Lcom/github/like/LikeButton;->setLikeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_1
    sget p3, Lcom/github/like/view/R$styleable;->LikeButton_unlike_drawable:I

    invoke-direct {p0, p1, p3}, Lcom/github/like/LikeButton;->getDrawableFromResource(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    .line 101
    invoke-virtual {p0, p3}, Lcom/github/like/LikeButton;->setUnlikeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 105
    invoke-direct {p0, p2}, Lcom/github/like/LikeButton;->parseIconType(Ljava/lang/String;)Lcom/github/like/Icon;

    move-result-object p2

    iput-object p2, p0, Lcom/github/like/LikeButton;->currentIcon:Lcom/github/like/Icon;

    .line 108
    :cond_3
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_circle_start_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/like/LikeButton;->circleStartColor:I

    if-eqz p2, :cond_4

    .line 111
    iget-object p3, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {p3, p2}, Lcom/github/like/CircleView;->setStartColor(I)V

    .line 113
    :cond_4
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_circle_end_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/github/like/LikeButton;->circleEndColor:I

    if-eqz p2, :cond_5

    .line 116
    iget-object p3, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {p3, p2}, Lcom/github/like/CircleView;->setEndColor(I)V

    .line 118
    :cond_5
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_dots_primary_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 119
    sget p3, Lcom/github/like/view/R$styleable;->LikeButton_dots_secondary_color:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 122
    iget-object v0, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    invoke-virtual {v0, p2, p3}, Lcom/github/like/DotsView;->setColors(II)V

    .line 126
    :cond_6
    iget-object p2, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_8

    .line 127
    iget-object p2, p0, Lcom/github/like/LikeButton;->currentIcon:Lcom/github/like/Icon;

    if-eqz p2, :cond_7

    .line 128
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->setIcon()V

    goto :goto_0

    .line 130
    :cond_7
    sget-object p2, Lcom/github/like/IconType;->Heart:Lcom/github/like/IconType;

    invoke-virtual {p0, p2}, Lcom/github/like/LikeButton;->setIcon(Lcom/github/like/IconType;)V

    .line 134
    :cond_8
    :goto_0
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_is_enabled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/github/like/LikeButton;->setEnabled(Z)V

    .line 135
    sget p2, Lcom/github/like/view/R$styleable;->LikeButton_liked:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 136
    sget p3, Lcom/github/like/view/R$styleable;->LikeButton_anim_scale_factor:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/github/like/LikeButton;->setAnimationScaleFactor(F)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/github/like/LikeButton;->setLiked(Ljava/lang/Boolean;)V

    .line 138
    invoke-virtual {p0, p0}, Lcom/github/like/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private parseIconType(Lcom/github/like/IconType;)Lcom/github/like/Icon;
    .locals 3

    .line 433
    invoke-static {}, Lcom/github/like/Utils;->getIcons()Ljava/util/List;

    move-result-object v0

    .line 435
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/like/Icon;

    .line 436
    invoke-virtual {v1}, Lcom/github/like/Icon;->getIconType()Lcom/github/like/IconType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/github/like/IconType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 441
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Correct icon type not specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private parseIconType(Ljava/lang/String;)Lcom/github/like/Icon;
    .locals 4

    .line 412
    invoke-static {}, Lcom/github/like/Utils;->getIcons()Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/like/Icon;

    .line 415
    invoke-virtual {v1}, Lcom/github/like/Icon;->getIconType()Lcom/github/like/IconType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/like/IconType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 420
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Correct icon type not specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private setEffectsViewSize()V
    .locals 4

    .line 501
    iget v0, p0, Lcom/github/like/LikeButton;->iconSize:I

    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    int-to-float v2, v0

    iget v3, p0, Lcom/github/like/LikeButton;->animationScaleFactor:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/github/like/DotsView;->setSize(II)V

    .line 503
    iget-object v0, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    iget v1, p0, Lcom/github/like/LikeButton;->iconSize:I

    invoke-virtual {v0, v1, v1}, Lcom/github/like/CircleView;->setSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isLiked()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/github/like/LikeButton;->isChecked:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 157
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isEnabled:Z

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/github/like/LikeButton;->likeListener:Lcom/github/like/OnLikeListener;

    if-eqz p1, :cond_1

    .line 160
    invoke-interface {p1}, Lcom/github/like/OnLikeListener;->firstdo()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 164
    :cond_1
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    .line 167
    iget-object v1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object p1, p0, Lcom/github/like/LikeButton;->likeListener:Lcom/github/like/OnLikeListener;

    if-eqz p1, :cond_4

    .line 170
    iget-boolean v1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    if-eqz v1, :cond_3

    .line 171
    invoke-interface {p1, p0}, Lcom/github/like/OnLikeListener;->liked(Lcom/github/like/LikeButton;)V

    goto :goto_1

    .line 173
    :cond_3
    invoke-interface {p1, p0}, Lcom/github/like/OnLikeListener;->unLiked(Lcom/github/like/LikeButton;)V

    .line 177
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/github/like/LikeButton;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    .line 178
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 181
    :cond_5
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    if-eqz p1, :cond_6

    .line 182
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 183
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 184
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 185
    iget-object p1, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {p1, v1}, Lcom/github/like/CircleView;->setInnerCircleRadiusProgress(F)V

    .line 186
    iget-object p1, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {p1, v1}, Lcom/github/like/CircleView;->setOuterCircleRadiusProgress(F)V

    .line 187
    iget-object p1, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    invoke-virtual {p1, v1}, Lcom/github/like/DotsView;->setCurrentProgress(F)V

    .line 189
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/github/like/LikeButton;->animatorSet:Landroid/animation/AnimatorSet;

    .line 191
    iget-object p1, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    sget-object v1, Lcom/github/like/CircleView;->OUTER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v3, 0xfa

    .line 192
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    sget-object v1, Lcom/github/like/LikeButton;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    iget-object v5, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    sget-object v6, Lcom/github/like/CircleView;->INNER_CIRCLE_RADIUS_PROGRESS:Landroid/util/Property;

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    .line 196
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 198
    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    iget-object v1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView;->SCALE_Y:Landroid/util/Property;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x15e

    .line 201
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 202
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 203
    sget-object v8, Lcom/github/like/LikeButton;->OVERSHOOT_INTERPOLATOR:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v9, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView;->SCALE_X:Landroid/util/Property;

    new-array v11, v2, [F

    fill-array-data v11, :array_3

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 206
    invoke-virtual {v9, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    invoke-virtual {v9, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 208
    invoke-virtual {v9, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v3, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    sget-object v4, Lcom/github/like/DotsView;->DOTS_PROGRESS:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_4

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x384

    .line 211
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x32

    .line 212
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 213
    sget-object v4, Lcom/github/like/LikeButton;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object v4, p0, Lcom/github/like/LikeButton;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    aput-object v5, v6, v0

    aput-object v1, v6, v2

    const/4 p1, 0x3

    aput-object v9, v6, p1

    const/4 p1, 0x4

    aput-object v3, v6, p1

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    iget-object p1, p0, Lcom/github/like/LikeButton;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/github/like/LikeButton$1;

    invoke-direct {v0, p0}, Lcom/github/like/LikeButton$1;-><init>(Lcom/github/like/LikeButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object p1, p0, Lcom/github/like/LikeButton;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 253
    iget-boolean v0, p0, Lcom/github/like/LikeButton;->isEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/like/LikeButton;->setPressed(Z)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    cmpl-float v0, p1, v3

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 v2, 0x1

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->isPressed()Z

    move-result p1

    if-eq p1, v2, :cond_6

    .line 272
    invoke-virtual {p0, v2}, Lcom/github/like/LikeButton;->setPressed(Z)V

    goto :goto_0

    .line 277
    :cond_4
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x96

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/github/like/LikeButton;->DECCELERATE_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 278
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 279
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 280
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->performClick()Z

    .line 281
    invoke-virtual {p0, v2}, Lcom/github/like/LikeButton;->setPressed(Z)V

    goto :goto_0

    .line 264
    :cond_5
    invoke-virtual {p0, v1}, Lcom/github/like/LikeButton;->setPressed(Z)V

    :cond_6
    :goto_0
    return v1
.end method

.method public setAnimationScaleFactor(F)V
    .locals 0

    .line 541
    iput p1, p0, Lcom/github/like/LikeButton;->animationScaleFactor:F

    .line 543
    invoke-direct {p0}, Lcom/github/like/LikeButton;->setEffectsViewSize()V

    return-void
.end method

.method public setCircleEndColorRes(I)V
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/github/like/LikeButton;->circleEndColor:I

    .line 492
    iget-object v0, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {v0, p1}, Lcom/github/like/CircleView;->setEndColor(I)V

    return-void
.end method

.method public setCircleStartColorInt(I)V
    .locals 1

    .line 486
    iput p1, p0, Lcom/github/like/LikeButton;->circleStartColor:I

    .line 487
    iget-object v0, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {v0, p1}, Lcom/github/like/CircleView;->setStartColor(I)V

    return-void
.end method

.method public setCircleStartColorRes(I)V
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/github/like/LikeButton;->circleStartColor:I

    .line 482
    iget-object v0, p0, Lcom/github/like/LikeButton;->circleView:Lcom/github/like/CircleView;

    invoke-virtual {v0, p1}, Lcom/github/like/CircleView;->setStartColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lcom/github/like/LikeButton;->isEnabled:Z

    return-void
.end method

.method public setExplodingDotColorsInt(II)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    invoke-virtual {v0, p1, p2}, Lcom/github/like/DotsView;->setColors(II)V

    return-void
.end method

.method public setExplodingDotColorsRes(II)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/github/like/LikeButton;->dotsView:Lcom/github/like/DotsView;

    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/github/like/DotsView;->setColors(II)V

    return-void
.end method

.method public setIcon()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/github/like/LikeButton;->currentIcon:Lcom/github/like/Icon;

    invoke-virtual {v0}, Lcom/github/like/Icon;->getOnIconResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/like/LikeButton;->setLikeDrawableRes(I)V

    .line 373
    iget-object v0, p0, Lcom/github/like/LikeButton;->currentIcon:Lcom/github/like/Icon;

    invoke-virtual {v0}, Lcom/github/like/Icon;->getOffIconResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/like/LikeButton;->setUnlikeDrawableRes(I)V

    .line 374
    iget-object v0, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Lcom/github/like/IconType;)V
    .locals 1

    .line 365
    invoke-direct {p0, p1}, Lcom/github/like/LikeButton;->parseIconType(Lcom/github/like/IconType;)Lcom/github/like/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->currentIcon:Lcom/github/like/Icon;

    .line 366
    invoke-virtual {p1}, Lcom/github/like/Icon;->getOnIconResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/like/LikeButton;->setLikeDrawableRes(I)V

    .line 367
    iget-object p1, p0, Lcom/github/like/LikeButton;->currentIcon:Lcom/github/like/Icon;

    invoke-virtual {p1}, Lcom/github/like/Icon;->getOffIconResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/like/LikeButton;->setUnlikeDrawableRes(I)V

    .line 368
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSizeDp(I)V
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/github/like/Utils;->dipToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/github/like/LikeButton;->setIconSizePx(I)V

    return-void
.end method

.method public setIconSizePx(I)V
    .locals 2

    .line 395
    iput p1, p0, Lcom/github/like/LikeButton;->iconSize:I

    .line 396
    invoke-direct {p0}, Lcom/github/like/LikeButton;->setEffectsViewSize()V

    .line 397
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1, p1}, Lcom/github/like/Utils;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 398
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1, p1}, Lcom/github/like/Utils;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLikeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 314
    iput-object p1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    .line 316
    iget v0, p0, Lcom/github/like/LikeButton;->iconSize:I

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/like/LikeButton;->iconSize:I

    invoke-static {v0, p1, v1, v1}, Lcom/github/like/Utils;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_0
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setLikeDrawableRes(I)V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    .line 299
    iget p1, p0, Lcom/github/like/LikeButton;->iconSize:I

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/github/like/LikeButton;->iconSize:I

    invoke-static {p1, v0, v1, v1}, Lcom/github/like/Utils;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    :cond_0
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setLiked(Ljava/lang/Boolean;)V
    .locals 1

    .line 514
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 515
    iput-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    .line 516
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->likeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 518
    iput-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    .line 519
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setOnAnimationEndListener(Lcom/github/like/OnAnimationEndListener;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/github/like/LikeButton;->animationEndListener:Lcom/github/like/OnAnimationEndListener;

    return-void
.end method

.method public setOnLikeListener(Lcom/github/like/OnLikeListener;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/github/like/LikeButton;->likeListener:Lcom/github/like/OnLikeListener;

    return-void
.end method

.method public setUnlikeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 348
    iput-object p1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 350
    iget v0, p0, Lcom/github/like/LikeButton;->iconSize:I

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/like/LikeButton;->iconSize:I

    invoke-static {v0, p1, v1, v1}, Lcom/github/like/Utils;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_0
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    if-nez p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setUnlikeDrawableRes(I)V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 333
    iget p1, p0, Lcom/github/like/LikeButton;->iconSize:I

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/github/like/LikeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/github/like/LikeButton;->iconSize:I

    invoke-static {p1, v0, v1, v1}, Lcom/github/like/Utils;->resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    .line 337
    :cond_0
    iget-boolean p1, p0, Lcom/github/like/LikeButton;->isChecked:Z

    if-nez p1, :cond_1

    .line 338
    iget-object p1, p0, Lcom/github/like/LikeButton;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/github/like/LikeButton;->unLikeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
