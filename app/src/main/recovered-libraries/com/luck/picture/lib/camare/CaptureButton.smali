.class public Lcom/luck/picture/lib/camare/CaptureButton;
.super Landroid/view/View;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;,
        Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;
    }
.end annotation


# static fields
.field public static final STATE_BAN:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_LONG_PRESS:I = 0x3

.field public static final STATE_PRESS:I = 0x2

.field public static final STATE_RECORDERING:I = 0x4


# instance fields
.field private button_inside_radius:F

.field private button_outside_radius:F

.field private button_radius:F

.field private button_size:I

.field private button_state:I

.field private captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

.field private center_X:F

.field private center_Y:F

.field private duration:I

.field private event_Y:F

.field private inside_color:I

.field private inside_reduce_size:I

.field private longPressRunnable:Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;

.field private mPaint:Landroid/graphics/Paint;

.field private min_duration:I

.field private outside_add_size:I

.field private outside_color:I

.field private progress:F

.field private progress_color:I

.field private recorded_time:I

.field private rectF:Landroid/graphics/RectF;

.field private state:I

.field private strokeWidth:F

.field private timer:Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x11e951ea

    .line 34
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress_color:I

    const p1, -0x11232324

    .line 35
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_color:I

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->inside_color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x11e951ea

    .line 34
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress_color:I

    const p1, -0x11232324

    .line 35
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_color:I

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->inside_color:I

    .line 76
    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_size:I

    int-to-float p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 77
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_radius:F

    .line 79
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_outside_radius:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float p1, p1, v1

    .line 80
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_inside_radius:F

    .line 82
    div-int/lit8 p1, p2, 0xf

    int-to-float p1, p1

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->strokeWidth:F

    .line 83
    div-int/lit8 p1, p2, 0x5

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_add_size:I

    .line 84
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->inside_reduce_size:I

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress:F

    .line 90
    new-instance p1, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;Lcom/luck/picture/lib/camare/CaptureButton$1;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->longPressRunnable:Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;

    .line 92
    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    const/16 p1, 0x103

    .line 93
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_state:I

    const-string p1, "CaptureButtom start"

    .line 94
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    const/16 p1, 0x2710

    .line 95
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->duration:I

    const-string p1, "CaptureButtom end"

    .line 96
    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    const/16 p1, 0x5dc

    .line 97
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->min_duration:I

    .line 99
    iget p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_size:I

    iget p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_add_size:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_X:F

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 100
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_Y:F

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_X:F

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_radius:F

    iget v2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_add_size:I

    int-to-float v3, v2

    add-float/2addr v3, v1

    iget v4, p0, Lcom/luck/picture/lib/camare/CaptureButton;->strokeWidth:F

    div-float v5, v4, v0

    sub-float/2addr v3, v5

    sub-float v3, p2, v3

    iget v5, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_Y:F

    int-to-float v6, v2

    add-float/2addr v6, v1

    div-float v7, v4, v0

    sub-float/2addr v6, v7

    sub-float v6, v5, v6

    int-to-float v7, v2

    add-float/2addr v7, v1

    div-float v8, v4, v0

    sub-float/2addr v7, v8

    add-float/2addr p2, v7

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v4, v0

    sub-float/2addr v1, v4

    add-float/2addr v5, v1

    invoke-direct {p1, v3, v6, p2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->rectF:Landroid/graphics/RectF;

    .line 108
    new-instance p1, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    iget p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->duration:I

    int-to-long v9, p2

    div-int/lit16 p2, p2, 0x168

    int-to-long v11, p2

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;JJ)V

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->timer:Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/camare/CaptureButton;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_inside_radius:F

    return p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/camare/CaptureButton;FFFF)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/camare/CaptureButton;->startRecordAnimation(FFFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/luck/picture/lib/camare/CaptureButton;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_inside_radius:F

    return p1
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/listener/CaptureListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/camare/CaptureButton;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    return p0
.end method

.method static synthetic access$302(Lcom/luck/picture/lib/camare/CaptureButton;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/camare/CaptureButton;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_outside_radius:F

    return p0
.end method

.method static synthetic access$402(Lcom/luck/picture/lib/camare/CaptureButton;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_outside_radius:F

    return p1
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/camare/CaptureButton;)Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->timer:Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/camare/CaptureButton;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/camare/CaptureButton;->updateProgress(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/camare/CaptureButton;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/CaptureButton;->recordEnd()V

    return-void
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/camare/CaptureButton;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_add_size:I

    return p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/camare/CaptureButton;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->inside_reduce_size:I

    return p0
.end method

.method private handlerUnpressByState()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->longPressRunnable:Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camare/CaptureButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 172
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->timer:Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;->cancel()V

    .line 185
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/CaptureButton;->recordEnd()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_state:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    const/16 v1, 0x103

    if-ne v0, v1, :cond_3

    .line 177
    :cond_2
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_inside_radius:F

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/camare/CaptureButton;->startCaptureAnimation(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 179
    iput v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    :goto_0
    return-void
.end method

.method private recordEnd()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    if-eqz v0, :cond_1

    .line 193
    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->recorded_time:I

    iget v2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->min_duration:I

    if-ge v1, v2, :cond_0

    int-to-long v1, v1

    .line 194
    invoke-interface {v0, v1, v2}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordShort(J)V

    goto :goto_0

    :cond_0
    int-to-long v1, v1

    .line 196
    invoke-interface {v0, v1, v2}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordEnd(J)V

    .line 198
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/CaptureButton;->resetRecordAnim()V

    return-void
.end method

.method private resetRecordAnim()V
    .locals 4

    const/4 v0, 0x5

    .line 203
    iput v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress:F

    .line 205
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureButton;->invalidate()V

    .line 207
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_outside_radius:F

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_radius:F

    iget v2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_inside_radius:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v3, v3, v1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/luck/picture/lib/camare/CaptureButton;->startRecordAnimation(FFFF)V

    return-void
.end method

.method private startCaptureAnimation(F)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 217
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 218
    new-instance v0, Lcom/luck/picture/lib/camare/CaptureButton$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camare/CaptureButton$1;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    new-instance v0, Lcom/luck/picture/lib/camare/CaptureButton$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camare/CaptureButton$2;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x64

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRecordAnimation(FFFF)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 240
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array v1, v0, [F

    aput p3, v1, v2

    aput p4, v1, p1

    .line 241
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 243
    new-instance p4, Lcom/luck/picture/lib/camare/CaptureButton$3;

    invoke-direct {p4, p0}, Lcom/luck/picture/lib/camare/CaptureButton$3;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 251
    new-instance p4, Lcom/luck/picture/lib/camare/CaptureButton$4;

    invoke-direct {p4, p0}, Lcom/luck/picture/lib/camare/CaptureButton$4;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 260
    new-instance v1, Lcom/luck/picture/lib/camare/CaptureButton$5;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/CaptureButton$5;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;)V

    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object p3, v0, p1

    .line 273
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x64

    .line 274
    invoke-virtual {p4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 275
    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateProgress(J)V
    .locals 3

    .line 281
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->duration:I

    int-to-long v1, v0

    sub-long/2addr v1, p1

    long-to-int v2, v1

    iput v2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->recorded_time:I

    long-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float p1, p1, p2

    sub-float/2addr p2, p1

    .line 282
    iput p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress:F

    .line 283
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CaptureButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 2

    .line 354
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_X:F

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_Y:F

    iget v2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_outside_radius:F

    iget-object v3, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->inside_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_X:F

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->center_Y:F

    iget v2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_inside_radius:F

    iget-object v3, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v3, p0, Lcom/luck/picture/lib/camare/CaptureButton;->rectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    iget v5, p0, Lcom/luck/picture/lib/camare/CaptureButton;->progress:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/luck/picture/lib/camare/CaptureButton;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 113
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 114
    iget p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_size:I

    iget p2, p0, Lcom/luck/picture/lib/camare/CaptureButton;->outside_add_size:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/camare/CaptureButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x103

    const/16 v2, 0x102

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    iget v3, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_state:I

    if-eq v3, v2, :cond_1

    if-ne v3, v1, :cond_6

    .line 157
    :cond_1
    iget v1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->event_Y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/camare/listener/CaptureListener;->recordZoom(F)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/CaptureButton;->handlerUnpressByState()V

    goto :goto_0

    .line 142
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v4, :cond_6

    iget v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    if-eq v0, v4, :cond_4

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->event_Y:F

    .line 146
    iput v3, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    .line 149
    iget p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_state:I

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_6

    .line 150
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->longPressRunnable:Lcom/luck/picture/lib/camare/CaptureButton$LongPressRunnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/luck/picture/lib/camare/CaptureButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return v4
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x1

    .line 359
    iput v0, p0, Lcom/luck/picture/lib/camare/CaptureButton;->state:I

    return-void
.end method

.method public setButtonFeatures(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->button_state:I

    return-void
.end method

.method public setCaptureLisenter(Lcom/luck/picture/lib/camare/listener/CaptureListener;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camare/listener/CaptureListener;

    return-void
.end method

.method public setDuration(I)V
    .locals 7

    .line 333
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->duration:I

    .line 334
    new-instance v6, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    int-to-long v2, p1

    div-int/lit16 p1, p1, 0x168

    int-to-long v4, p1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;-><init>(Lcom/luck/picture/lib/camare/CaptureButton;JJ)V

    iput-object v6, p0, Lcom/luck/picture/lib/camare/CaptureButton;->timer:Lcom/luck/picture/lib/camare/CaptureButton$RecordCountDownTimer;

    return-void
.end method

.method public setMinDuration(I)V
    .locals 0

    .line 339
    iput p1, p0, Lcom/luck/picture/lib/camare/CaptureButton;->min_duration:I

    return-void
.end method
