.class Lcom/luck/picture/lib/camare/CaptureButton$1;
.super Ljava/lang/Object;
.source "CaptureButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/CaptureButton;->startCaptureAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/CaptureButton;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/CaptureButton;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$1;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CaptureButton$1;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/camare/CaptureButton;->access$102(Lcom/luck/picture/lib/camare/CaptureButton;F)F

    .line 222
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CaptureButton$1;->this$0:Lcom/luck/picture/lib/camare/CaptureButton;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/CaptureButton;->invalidate()V

    return-void
.end method
