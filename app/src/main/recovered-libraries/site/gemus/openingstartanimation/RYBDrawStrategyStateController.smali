.class Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;
.super Ljava/lang/Object;
.source "RYBDrawStrategyStateController.java"


# instance fields
.field private mRYBDrawStrategyStateInterface:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;

.field private mRYBDrawStrategyStateOne:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateOne;

.field private mRYBDrawStrategyStateTwo:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateTwo;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateOne;

    invoke-direct {v0}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateOne;-><init>()V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->mRYBDrawStrategyStateOne:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateOne;

    .line 15
    new-instance v0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateTwo;

    invoke-direct {v0}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateTwo;-><init>()V

    iput-object v0, p0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->mRYBDrawStrategyStateTwo:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateTwo;

    return-void
.end method

.method private setState(Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->mRYBDrawStrategyStateInterface:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;

    return-void
.end method


# virtual methods
.method choseStateDrawIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V
    .locals 7

    const v0, 0x3f266666    # 0.65f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    .line 39
    iget-object v0, p0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->mRYBDrawStrategyStateOne:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateOne;

    invoke-direct {p0, v0}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->setState(Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;)V

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 41
    iget-object v0, p0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->mRYBDrawStrategyStateTwo:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateTwo;

    invoke-direct {p0, v0}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->setState(Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;)V

    .line 43
    :cond_1
    :goto_0
    iget-object v1, p0, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateController;->mRYBDrawStrategyStateInterface:Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lsite/gemus/openingstartanimation/RYBDrawStrategyStateInterface;->drawIcon(Landroid/graphics/Canvas;FLandroid/graphics/drawable/Drawable;ILsite/gemus/openingstartanimation/WidthAndHeightOfView;)V

    return-void
.end method
