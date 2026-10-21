.class public Lsite/gemus/openingstartanimation/OpeningStartAnimation;
.super Landroid/view/View;
.source "OpeningStartAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsite/gemus/openingstartanimation/OpeningStartAnimation$Builder;
    }
.end annotation


# static fields
.field private static final FINISHANIMATION:I = 0x1


# instance fields
.field private animationFinishTime:J

.field private animationInterval:J

.field private appName:Ljava/lang/String;

.field private appStatement:Ljava/lang/String;

.field private colorOfAppIcon:I

.field private colorOfAppName:I

.field private colorOfAppStatement:I

.field private colorOfBackground:I

.field private fraction:F

.field private mDelegateRecycleView:Lsite/gemus/openingstartanimation/DelegateRecycleView;

.field private mDrawStrategy:Lsite/gemus/openingstartanimation/DrawStrategy;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidthAndHeightOfView:Lsite/gemus/openingstartanimation/WidthAndHeightOfView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x5dc

    .line 30
    iput-wide v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationInterval:J

    const-wide/16 v0, 0x15e

    .line 31
    iput-wide v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationFinishTime:J

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfBackground:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#00897b"

    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppIcon:I

    const-string v2, ""

    .line 37
    iput-object v2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appName:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppName:I

    .line 39
    iput-object v2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appStatement:Ljava/lang/String;

    const-string v1, "#607D8B"

    .line 40
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppStatement:I

    .line 42
    new-instance v1, Lsite/gemus/openingstartanimation/NormalDrawStrategy;

    invoke-direct {v1}, Lsite/gemus/openingstartanimation/NormalDrawStrategy;-><init>()V

    iput-object v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawStrategy:Lsite/gemus/openingstartanimation/DrawStrategy;

    .line 65
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {p0, v1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;

    invoke-direct {v0}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;-><init>()V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mWidthAndHeightOfView:Lsite/gemus/openingstartanimation/WidthAndHeightOfView;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appName:Ljava/lang/String;

    const-string p1, "Sample Statement"

    .line 50
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appStatement:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->moveAnimation(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1002(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I
    .locals 0

    .line 28
    iput p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppStatement:I

    return p1
.end method

.method static synthetic access$1102(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I
    .locals 0

    .line 28
    iput p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfBackground:I

    return p1
.end method

.method static synthetic access$1202(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Lsite/gemus/openingstartanimation/DrawStrategy;)Lsite/gemus/openingstartanimation/DrawStrategy;
    .locals 0

    .line 28
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawStrategy:Lsite/gemus/openingstartanimation/DrawStrategy;

    return-object p1
.end method

.method static synthetic access$202(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Lsite/gemus/openingstartanimation/DelegateRecycleView;)Lsite/gemus/openingstartanimation/DelegateRecycleView;
    .locals 0

    .line 28
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDelegateRecycleView:Lsite/gemus/openingstartanimation/DelegateRecycleView;

    return-object p1
.end method

.method static synthetic access$302(Lsite/gemus/openingstartanimation/OpeningStartAnimation;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationInterval:J

    return-wide p1
.end method

.method static synthetic access$402(Lsite/gemus/openingstartanimation/OpeningStartAnimation;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationFinishTime:J

    return-wide p1
.end method

.method static synthetic access$502(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 28
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$602(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I
    .locals 0

    .line 28
    iput p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppIcon:I

    return p1
.end method

.method static synthetic access$702(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lsite/gemus/openingstartanimation/OpeningStartAnimation;I)I
    .locals 0

    .line 28
    iput p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppName:I

    return p1
.end method

.method static synthetic access$902(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appStatement:Ljava/lang/String;

    return-object p1
.end method

.method private moveAnimation(Landroid/app/Activity;)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationFinishTime:J

    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 154
    iget-object p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDelegateRecycleView:Lsite/gemus/openingstartanimation/DelegateRecycleView;

    invoke-interface {p1}, Lsite/gemus/openingstartanimation/DelegateRecycleView;->finishAnimation()V

    return-void
.end method

.method private setFraction(F)V
    .locals 0

    .line 59
    iput p1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->fraction:F

    .line 60
    invoke-virtual {p0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 75
    iget v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfBackground:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mWidthAndHeightOfView:Lsite/gemus/openingstartanimation/WidthAndHeightOfView;

    invoke-virtual {p0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->setHeight(I)V

    .line 78
    iget-object v0, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mWidthAndHeightOfView:Lsite/gemus/openingstartanimation/WidthAndHeightOfView;

    invoke-virtual {p0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lsite/gemus/openingstartanimation/WidthAndHeightOfView;->setWidth(I)V

    .line 79
    iget-object v2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawStrategy:Lsite/gemus/openingstartanimation/DrawStrategy;

    iget v4, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->fraction:F

    iget-object v5, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppIcon:I

    iget-object v7, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mWidthAndHeightOfView:Lsite/gemus/openingstartanimation/WidthAndHeightOfView;

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lsite/gemus/openingstartanimation/DrawStrategy;->drawAppIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V

    .line 81
    iget-object v8, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mDrawStrategy:Lsite/gemus/openingstartanimation/DrawStrategy;

    iget v10, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->fraction:F

    iget-object v11, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->appName:Ljava/lang/String;

    iget v12, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->colorOfAppName:I

    iget-object v13, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->mWidthAndHeightOfView:Lsite/gemus/openingstartanimation/WidthAndHeightOfView;

    move-object v9, p1

    invoke-interface/range {v8 .. v13}, Lsite/gemus/openingstartanimation/DrawStrategy;->drawAppName(Landroid/graphics/Canvas;FLjava/lang/String;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 5

    .line 92
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 105
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 107
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 108
    fill-array-data v0, :array_0

    const-string v1, "fraction"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 109
    iget-wide v1, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationInterval:J

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 110
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;

    invoke-direct {v1, p0, p1}, Lsite/gemus/openingstartanimation/OpeningStartAnimation$1;-><init>(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 122
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lsite/gemus/openingstartanimation/OpeningStartAnimation$2;

    invoke-direct {v1, p0, v0}, Lsite/gemus/openingstartanimation/OpeningStartAnimation$2;-><init>(Lsite/gemus/openingstartanimation/OpeningStartAnimation;Landroid/os/Handler;)V

    iget-wide v2, p0, Lsite/gemus/openingstartanimation/OpeningStartAnimation;->animationInterval:J

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
