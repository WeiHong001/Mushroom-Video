.class Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;
.super Ljava/lang/Object;
.source "SlowlyProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->startDismissAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;I)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    iput p2, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 248
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 249
    iget v0, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;->val$progress:I

    rsub-int/lit8 v0, v0, 0x64

    .line 250
    iget-object v1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {v1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$1000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget v2, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$2;->val$progress:I

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v2, v0

    float-to-int p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
