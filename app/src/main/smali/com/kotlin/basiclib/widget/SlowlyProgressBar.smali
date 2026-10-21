.class public Lcom/kotlin/basiclib/widget/SlowlyProgressBar;
.super Ljava/lang/Object;
.source "SlowlyProgressBar.java"


# static fields
.field private static final StartAnimation:I = 0x12


# instance fields
.field private handler:Landroid/os/Handler;

.field private height:I

.field private i:I

.field private isStart:Z

.field private phoneWidth:I

.field private progress:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private record:I

.field private speedQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private thisSpeed:I

.field private thisWidth:I

.field private view:Landroid/view/View;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisWidth:I

    .line 38
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisSpeed:I

    .line 40
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progress:I

    .line 44
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->record:I

    const/16 v1, 0xa

    .line 48
    iput v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->width:I

    const/4 v1, 0x3

    .line 52
    iput v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->height:I

    .line 57
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    .line 59
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->phoneWidth:I

    .line 63
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->i:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->speedQuery:Ljava/util/List;

    .line 75
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->initHandler()V

    .line 76
    iput p2, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->phoneWidth:I

    .line 77
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->view:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisWidth:I

    .line 38
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisSpeed:I

    .line 40
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progress:I

    .line 44
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->record:I

    const/16 v1, 0xa

    .line 48
    iput v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->width:I

    const/4 v1, 0x3

    .line 52
    iput v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->height:I

    .line 57
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    .line 59
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->phoneWidth:I

    .line 63
    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->i:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->speedQuery:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progress:I

    return p0
.end method

.method static synthetic access$100(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->i:I

    return p0
.end method

.method static synthetic access$308(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->i:I

    return v0
.end method

.method static synthetic access$400(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisSpeed:I

    return p0
.end method

.method static synthetic access$602(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->thisSpeed:I

    return p1
.end method

.method static synthetic access$700(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->speedQuery:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->move(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initHandler()V
    .locals 1

    .line 178
    new-instance v0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$1;-><init>(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)V

    iput-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method private move(II)V
    .locals 2

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const/16 p1, 0x9

    .line 218
    :cond_0
    iget v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->record:I

    mul-int v0, v0, p1

    iput v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progress:I

    if-lt v0, p2, :cond_1

    .line 221
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->view:Landroid/view/View;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progress:I

    iget v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->height:I

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hit "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progress:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "zzzzz"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    iget p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->record:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->record:I

    return-void
.end method

.method private startDismissAnimation(I)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 242
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    new-instance v1, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;

    invoke-direct {v1, p0, p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;-><init>(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    new-instance p1, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;

    invoke-direct {p1, p0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;-><init>(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startProgressAnimation(II)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p1, v1, p2

    const-string p1, "progress"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iput-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->speedQuery:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iput-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->speedQuery:Ljava/util/List;

    .line 99
    :cond_1
    iput-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->view:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iput-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->handler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public onProgressChange(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    .line 123
    iget-boolean v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    .line 126
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 128
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->startDismissAnimation(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->startProgressAnimation(II)V

    :goto_0
    return-void
.end method

.method public onProgressStart()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressBar:Landroid/widget/ProgressBar;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 113
    iput-boolean v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    return-void
.end method

.method public setProgress(I)V
    .locals 6

    const/16 v0, 0x64

    if-gt p1, v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->phoneWidth:I

    mul-int p1, p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->width:I

    .line 149
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 153
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width - size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->width:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zzzzz"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->width:I

    sub-int p1, v1, p1

    const/4 v2, 0x2

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 p1, p1, 0x2

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->progressQuery:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->speedQuery:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-boolean p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->isStart:Z

    .line 168
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->handler:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setViewHeight(I)Lcom/kotlin/basiclib/widget/SlowlyProgressBar;
    .locals 0

    .line 173
    iput p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->height:I

    return-object p0
.end method
