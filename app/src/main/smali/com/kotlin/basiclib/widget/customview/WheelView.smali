.class public Lcom/kotlin/basiclib/widget/customview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;,
        Lcom/kotlin/basiclib/widget/customview/WheelView$Space;,
        Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;,
        Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_HEIGHT:I = 0xc8

.field public static final DEFAULT_WIDTH:I = 0x64


# instance fields
.field private isConfigChange:Z

.field private isLoop:Z

.field private isPressStatus:Z

.field private isSlideBlurEnable:Z

.field private isSlideTabUp:Z

.field private isTouch:Z

.field private mCenterIndex:I

.field private mCenterTxtColor:I

.field private mCenterTxtScale:F

.field private mCenterX:I

.field private mDataSize:I

.field private mDataSource:Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDistanceY:F

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHalfSize:Landroid/graphics/Point;

.field private mHalfSpaceHeight:I

.field private mHightLightTxtPaint:Landroid/text/TextPaint;

.field private mItemChangeListener:Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;

.field private mItemOffsetY:F

.field private mNormalTxtPaint:Landroid/text/TextPaint;

.field private mPosition:I

.field private mPressSlide:I

.field private mPressStatus:Landroid/graphics/Paint;

.field private mPreviewColor:I

.field private mPreviewCount:I

.field private mScrollY:F

.field private mScroller:Landroid/widget/OverScroller;

.field private mSize:Landroid/graphics/Point;

.field private mSlideBlur:Landroid/graphics/Paint;

.field private mSlideBlurColor:I

.field private mSlidePressColor:I

.field private mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

.field private mSpaceCount:I

.field private mSpaceHeight:I

.field private mSuffix:Ljava/lang/String;

.field private mTxtSize:I

.field private mUnit:Ljava/lang/String;

.field private mUnitBaseLine:F

.field private mUnitColor:I

.field private mUnitOffset:I

.field private mUnitPaint:Landroid/text/TextPaint;

.field private mUnitTextSize:I

.field private mXScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideBlurEnable:Z

    .line 82
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 88
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    .line 90
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    .line 431
    new-instance v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/customview/WheelView$1;-><init>(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideBlurEnable:Z

    .line 82
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 88
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    .line 90
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    .line 431
    new-instance v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/customview/WheelView$1;-><init>(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 106
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideBlurEnable:Z

    .line 82
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 88
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    .line 90
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    .line 431
    new-instance v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/customview/WheelView$1;-><init>(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 111
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideBlurEnable:Z

    .line 82
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 88
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    .line 89
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    .line 90
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    .line 431
    new-instance v0, Lcom/kotlin/basiclib/widget/customview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/customview/WheelView$1;-><init>(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kotlin/basiclib/widget/customview/WheelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/kotlin/basiclib/widget/customview/WheelView;)Landroid/widget/OverScroller;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kotlin/basiclib/widget/customview/WheelView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->onUpSingleTabUp()V

    return-void
.end method

.method static synthetic access$1100(Lcom/kotlin/basiclib/widget/customview/WheelView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->onDownSigleTabUp()V

    return-void
.end method

.method static synthetic access$116(Lcom/kotlin/basiclib/widget/customview/WheelView;F)F
    .locals 1

    .line 21
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDistanceY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDistanceY:F

    return v0
.end method

.method static synthetic access$1202(Lcom/kotlin/basiclib/widget/customview/WheelView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isTouch:Z

    return p1
.end method

.method static synthetic access$202(Lcom/kotlin/basiclib/widget/customview/WheelView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isPressStatus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kotlin/basiclib/widget/customview/WheelView;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->isOverScroll()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/kotlin/basiclib/widget/customview/WheelView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    return p0
.end method

.method static synthetic access$500(Lcom/kotlin/basiclib/widget/customview/WheelView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/kotlin/basiclib/widget/customview/WheelView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/kotlin/basiclib/widget/customview/WheelView;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    return p0
.end method

.method static synthetic access$800(Lcom/kotlin/basiclib/widget/customview/WheelView;)[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    return-object p0
.end method

.method static synthetic access$900(Lcom/kotlin/basiclib/widget/customview/WheelView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterIndex:I

    return p0
.end method

.method private calculatePosition()V
    .locals 7

    .line 280
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 282
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    if-eqz v1, :cond_0

    .line 283
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDistanceY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    .line 284
    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v3, v2

    rem-float v3, v1, v3

    iput v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 285
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    goto :goto_0

    .line 287
    :cond_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDistanceY:F

    add-float/2addr v1, v2

    .line 288
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v4, v3

    div-float v4, v1, v4

    float-to-int v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    if-gez v4, :cond_1

    const/4 v1, 0x0

    .line 291
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 292
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v2, v2, v1

    mul-float v2, v2, v5

    .line 293
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    .line 294
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    goto :goto_0

    .line 295
    :cond_1
    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    if-lt v4, v6, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 296
    iput v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 297
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v2, v2, v1

    mul-float v2, v2, v5

    .line 298
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    .line 299
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    goto :goto_0

    .line 301
    :cond_2
    iput v4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 302
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    int-to-float v2, v3

    rem-float/2addr v1, v2

    .line 303
    iput v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    .line 307
    :goto_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemChangeListener:Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->noticeItemChange()V

    :cond_3
    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDistanceY:F

    return-void
.end method

.method private drawItemPressStatis(Landroid/graphics/Canvas;)V
    .locals 7

    .line 375
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isPressStatus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideTabUp:Z

    if-eqz v0, :cond_2

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 377
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressSlide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterIndex:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 379
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget v0, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->top:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    .line 381
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideTabUp:Z

    :cond_2
    return-void
.end method

.method private drawSlideBlur(Landroid/graphics/Canvas;)V
    .locals 9

    .line 365
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideBlurEnable:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 366
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x43340000    # 180.0f

    .line 368
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 369
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 370
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method private drawSpace(Landroid/graphics/Canvas;Lcom/kotlin/basiclib/widget/customview/WheelView$Space;Ljava/lang/String;FF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p4, v0

    if-ltz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    sub-float/2addr v0, p5

    iget p5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewColor:I

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterTxtColor:I

    invoke-virtual {p0, v0, p5, v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->evaluateColor(FII)I

    move-result p5

    invoke-virtual {v1, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    float-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p5, v0, v2

    if-lez p5, :cond_0

    .line 356
    iget p5, p2, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->centerX:I

    int-to-float p5, p5

    iget v0, p2, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->centerY:I

    int-to-float v0, v0

    invoke-virtual {p1, p4, p4, p5, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 357
    :cond_0
    iget p4, p2, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->centerX:I

    int-to-float p4, p4

    iget p2, p2, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->baseline:F

    iget-object p5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 360
    :cond_1
    iget p4, p2, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->centerX:I

    int-to-float p4, p4

    iget p2, p2, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->baseline:F

    iget-object p5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 13

    .line 315
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    if-gtz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->calculatePosition()V

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 323
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterIndex:I

    aget-object v0, v0, v2

    .line 324
    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v3, v3

    div-float v8, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v8

    .line 325
    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mXScale:F

    mul-float v3, v3, v4

    add-float v7, v3, v2

    .line 326
    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    invoke-direct {p0, v3}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItem(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawSpace(Landroid/graphics/Canvas;Lcom/kotlin/basiclib/widget/customview/WheelView$Space;Ljava/lang/String;FF)V

    const/4 v3, 0x1

    .line 329
    :goto_0
    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterIndex:I

    if-gt v3, v4, :cond_7

    .line 330
    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    sub-int/2addr v5, v3

    .line 331
    iget-boolean v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    if-nez v6, :cond_1

    if-ltz v5, :cond_3

    .line 332
    :cond_1
    iget-object v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    sub-int/2addr v4, v3

    aget-object v9, v6, v4

    .line 333
    iget v4, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->top:I

    int-to-float v4, v4

    iget v6, v9, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    sub-float/2addr v6, v7

    sub-float/2addr v4, v6

    .line 334
    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v7, v6

    div-float v12, v4, v7

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    sub-float v4, v2, v12

    .line 335
    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mXScale:F

    mul-float v4, v4, v6

    add-float/2addr v4, v2

    move v11, v4

    .line 336
    :goto_1
    invoke-direct {p0, v5}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItem(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawSpace(Landroid/graphics/Canvas;Lcom/kotlin/basiclib/widget/customview/WheelView$Space;Ljava/lang/String;FF)V

    .line 339
    :cond_3
    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    add-int/2addr v4, v3

    .line 340
    iget-boolean v5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    if-ge v4, v5, :cond_6

    .line 341
    :cond_4
    iget-object v5, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterIndex:I

    add-int/2addr v6, v3

    aget-object v9, v5, v6

    .line 342
    iget v5, v9, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 343
    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v7, v6

    div-float v12, v5, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    sub-float v5, v2, v12

    .line 344
    iget v6, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mXScale:F

    mul-float v5, v5, v6

    add-float/2addr v5, v2

    move v11, v5

    .line 345
    :goto_2
    invoke-direct {p0, v4}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItem(I)Ljava/lang/String;

    move-result-object v10

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawSpace(Landroid/graphics/Canvas;Lcom/kotlin/basiclib/widget/customview/WheelView$Space;Ljava/lang/String;FF)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawUnit(Landroid/graphics/Canvas;)V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnit:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 387
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterX:I

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitBaseLine:F

    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getItem(I)Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSuffix:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItemText(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItemText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getItemText(I)Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSource:Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;

    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->processPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 121
    sget-object v0, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, p1, v1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDefaultWidth:I

    .line 122
    sget-object v0, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, p1, v1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDefaultHeight:I

    .line 124
    sget-object v0, Lcom/kotlin/basiclib/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 125
    sget p3, Lcom/kotlin/basiclib/R$styleable;->WheelView_item_suffix:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSuffix:Ljava/lang/String;

    .line 126
    sget p3, Lcom/kotlin/basiclib/R$styleable;->WheelView_unit_offset:I

    sget-object p4, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p4, p1, v0}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitOffset:I

    .line 127
    sget p3, Lcom/kotlin/basiclib/R$styleable;->WheelView_unit_txt_color:I

    const p4, -0xe55e79

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitColor:I

    .line 128
    sget p3, Lcom/kotlin/basiclib/R$styleable;->WheelView_unit_txt_size:I

    sget-object v0, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1, v1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitTextSize:I

    .line 129
    sget p3, Lcom/kotlin/basiclib/R$styleable;->WheelView_unit:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnit:Ljava/lang/String;

    .line 130
    sget p3, Lcom/kotlin/basiclib/R$styleable;->WheelView_txt_size:I

    sget-object v0, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1, v1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mTxtSize:I

    .line 131
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_select_txt_color:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterTxtColor:I

    .line 132
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_select_txt_scale:I

    const p3, 0x3fb33333    # 1.4f

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterTxtScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p1, p3

    .line 133
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mXScale:F

    .line 134
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_preview_txt_color:I

    const p3, -0x99999a

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewColor:I

    .line 135
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_preview_count:I

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewCount:I

    .line 136
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_preview_blur_color:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlurColor:I

    .line 137
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_preview_press_color:I

    const p3, 0x44888888

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlidePressColor:I

    .line 138
    sget p1, Lcom/kotlin/basiclib/R$styleable;->WheelView_loop:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    .line 139
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mTxtSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 143
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewColor:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 144
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 145
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlidePressColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 148
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 149
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitColor:I

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 151
    new-instance p1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    .line 153
    iput-boolean p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    .line 155
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDetector:Landroid/view/GestureDetector;

    const/4 p2, 0x0

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private isOverScroll()Z
    .locals 5

    .line 405
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 406
    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v0, :cond_1

    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    cmpg-float v4, v4, v2

    if-ltz v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    sub-int/2addr v4, v3

    if-lt v0, v4, :cond_3

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private onDownSigleTabUp()V
    .locals 1

    .line 498
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private onUpSingleTabUp()V
    .locals 1

    .line 502
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private reCompute()V
    .locals 20

    move-object/from16 v0, p0

    .line 171
    iget v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewCount:I

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceCount:I

    .line 172
    iput v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterIndex:I

    .line 174
    new-array v1, v2, [Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    iput-object v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    .line 176
    iget-object v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iput v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitBaseLine:F

    .line 179
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getHeight()I

    move-result v3

    iget v4, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceCount:I

    div-int/2addr v3, v4

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getWidth()I

    move-result v4

    int-to-float v5, v3

    .line 184
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v5, v6

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v2

    div-float v1, v5, v1

    .line 188
    div-int/lit8 v2, v4, 0x2

    .line 189
    div-int/lit8 v14, v3, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 191
    :goto_0
    iget v5, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceCount:I

    if-ge v15, v5, :cond_0

    .line 192
    new-instance v12, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    invoke-direct {v12, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;-><init>(Lcom/kotlin/basiclib/widget/customview/WheelView;)V

    add-int v16, v13, v3

    add-int v17, v13, v14

    const/4 v6, 0x0

    move-object v5, v12

    move v7, v13

    move v8, v4

    move/from16 v9, v16

    move v10, v4

    move v11, v3

    move-object/from16 v18, v12

    move v12, v2

    move/from16 v19, v2

    move v2, v13

    move/from16 v13, v17

    .line 193
    invoke-virtual/range {v5 .. v13}, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->set(IIIIIIII)V

    int-to-float v2, v2

    add-float/2addr v2, v1

    move-object/from16 v5, v18

    .line 194
    iput v2, v5, Lcom/kotlin/basiclib/widget/customview/WheelView$Space;->baseline:F

    .line 195
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpace:[Lcom/kotlin/basiclib/widget/customview/WheelView$Space;

    aput-object v5, v2, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    move/from16 v2, v19

    goto :goto_0

    .line 199
    :cond_0
    iput v3, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    .line 200
    iput v14, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSpaceHeight:I

    .line 201
    iget v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    mul-int v1, v1, v3

    int-to-float v1, v1

    :goto_1
    iput v1, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    .line 203
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v6, v2

    iget v7, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlurColor:I

    const v8, 0xffffff

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 204
    iget-object v2, v0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlur:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->noticeItemChange()V

    return-void
.end method


# virtual methods
.method public centerSpace()V
    .locals 4

    .line 410
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 413
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    float-to-int v1, v1

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    neg-float v3, v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 415
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    goto :goto_1

    .line 418
    :cond_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSpaceHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->isOverScroll()Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    int-to-float v3, v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 420
    iget-object v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    float-to-int v0, v0

    invoke-virtual {v3, v2, v0, v2, v1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 421
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    float-to-int v1, v1

    iget v3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    neg-float v3, v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 426
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    :goto_1
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    .line 163
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDistanceY:F

    .line 164
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    goto :goto_0

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isTouch:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->centerSpace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public evaluateColor(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method public getPosition()I
    .locals 1

    .line 641
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    return v0
.end method

.method public getRealPosition()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->processPosition(I)I

    move-result v0

    return v0
.end method

.method public getSelectData()Ljava/lang/String;
    .locals 1

    .line 652
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    if-gtz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 653
    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    invoke-direct {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noticeItemChange()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSource:Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemChangeListener:Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;

    if-eqz v0, :cond_0

    .line 211
    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    invoke-virtual {p0, v1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->processPosition(I)I

    move-result v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    invoke-direct {p0, v2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getItemText(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;->onItemChange(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->reCompute()V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    .line 398
    :cond_0
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawText(Landroid/graphics/Canvas;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawItemPressStatis(Landroid/graphics/Canvas;)V

    .line 400
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawSlideBlur(Landroid/graphics/Canvas;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView;->drawUnit(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 225
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 233
    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, -0x1

    if-ne v2, v1, :cond_1

    .line 234
    iget p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDefaultWidth:I

    goto :goto_0

    .line 235
    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v4, :cond_2

    .line 236
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 238
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 241
    :cond_3
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 245
    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v1, :cond_4

    .line 246
    iget p2, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDefaultHeight:I

    goto :goto_1

    .line 247
    :cond_4
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v4, :cond_5

    .line 248
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 250
    :cond_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 251
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 253
    :cond_6
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/widget/customview/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 217
    div-int/lit8 p3, p1, 0x2

    iput p3, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterX:I

    .line 218
    iget-object p4, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSize:Landroid/graphics/Point;

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 219
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHalfSize:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Point;->set(II)V

    const/4 p1, 0x1

    .line 220
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->centerSpace()V

    :cond_1
    const/4 p1, 0x0

    .line 511
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isTouch:Z

    .line 512
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isPressStatus:Z

    :cond_2
    return v1
.end method

.method public processPosition(I)I
    .locals 2

    .line 261
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    if-gtz v0, :cond_0

    return p1

    :cond_0
    if-gez p1, :cond_1

    .line 263
    div-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, v0

    sub-int/2addr p1, v1

    rem-int/2addr p1, v0

    goto :goto_0

    .line 265
    :cond_1
    rem-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public setCenterTextColor(I)V
    .locals 0

    .line 599
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterTxtColor:I

    .line 600
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setCenterTxtScale(F)V
    .locals 1

    .line 610
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mCenterTxtScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 611
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mXScale:F

    .line 612
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setDataSet([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 622
    :cond_0
    new-instance v0, Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;

    invoke-direct {v0, p0, p1}, Lcom/kotlin/basiclib/widget/customview/WheelView$DefaultDataSource;-><init>(Lcom/kotlin/basiclib/widget/customview/WheelView;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->setDataSource(Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;)V

    return-void
.end method

.method public setDataSource(Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;)V
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getRealPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->setPosition(I)V

    .line 627
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSource:Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;

    .line 628
    invoke-interface {p1}, Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;->getCount()I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    .line 629
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setEnableSlideBlur(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isSlideBlurEnable:Z

    .line 564
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setItemChangListener(Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemChangeListener:Lcom/kotlin/basiclib/widget/customview/WheelView$ItemChangeListener;

    .line 688
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->noticeItemChange()V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 666
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    if-eq p1, v0, :cond_0

    .line 667
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    .line 668
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    mul-int v0, v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    const/4 p1, 0x0

    .line 669
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    .line 670
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->noticeItemChange()V

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 657
    :goto_0
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSource:Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;

    invoke-interface {v1}, Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSource:Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;

    invoke-interface {v1, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView$DataSource;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->setPosition(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreviewCount(I)V
    .locals 0

    .line 582
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewCount:I

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    .line 584
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setPreviewTextColor(I)V
    .locals 1

    .line 604
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPreviewColor:I

    .line 605
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 606
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setSlideBlurColor(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSlideBlurColor:I

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    .line 575
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setSlidePressColor(I)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPressStatus:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSuffix:Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setSupportLoop(Z)V
    .locals 0

    .line 616
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    .line 617
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 591
    sget-object v0, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mTxtSize:I

    .line 592
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mNormalTxtPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 593
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mHightLightTxtPaint:Landroid/text/TextPaint;

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mTxtSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    .line 594
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isConfigChange:Z

    .line 595
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnit:Ljava/lang/String;

    .line 522
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setUnitColor(I)V
    .locals 1

    .line 537
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitColor:I

    .line 538
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setUnitOffset(I)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitOffset:I

    .line 530
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    return-void
.end method

.method public setUnitTextSize(I)V
    .locals 2

    .line 545
    sget-object v0, Lcom/kotlin/basiclib/utils/ScreenUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ScreenUtils;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/kotlin/basiclib/utils/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitTextSize:I

    .line 546
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mUnitPaint:Landroid/text/TextPaint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 3

    .line 677
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    if-eq p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->isLoop:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mDataSize:I

    if-ge p1, v0, :cond_2

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 679
    :cond_1
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mPosition:I

    sub-int/2addr p1, v0

    .line 680
    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mSpaceHeight:I

    mul-int p1, p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mItemOffsetY:F

    add-float/2addr p1, v0

    .line 681
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/kotlin/basiclib/widget/customview/WheelView;->mScrollY:F

    float-to-int v1, v1

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 682
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/WheelView;->invalidate()V

    :cond_2
    return-void
.end method
