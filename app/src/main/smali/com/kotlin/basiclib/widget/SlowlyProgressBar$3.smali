.class Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlowlyProgressBar.java"


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


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 258
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$1000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 259
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$1000(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/SlowlyProgressBar$3;->this$0:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-static {p1, v0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->access$502(Lcom/kotlin/basiclib/widget/SlowlyProgressBar;Z)Z

    return-void
.end method
