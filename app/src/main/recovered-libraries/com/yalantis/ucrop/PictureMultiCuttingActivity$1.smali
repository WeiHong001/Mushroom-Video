.class Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;
.super Ljava/lang/Object;
.source "PictureMultiCuttingActivity.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/PictureMultiCuttingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$200(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 425
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$300(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 426
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0, v1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$402(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;Z)Z

    .line 427
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public onLoadFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 433
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->closeActivity()V

    return-void
.end method

.method public onRotate(F)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$000(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;F)V

    return-void
.end method

.method public onScale(F)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$100(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;F)V

    return-void
.end method
