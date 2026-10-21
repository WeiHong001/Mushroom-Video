.class Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;
.super Ljava/lang/Object;
.source "PictureMultiCuttingActivity.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupRotateWidget()V
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

    .line 524
    iput-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FF)V
    .locals 1

    .line 527
    iget-object p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {p2}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    const/high16 v0, 0x42280000    # 42.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    return-void
.end method

.method public onScrollEnd()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method public onScrollStart()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cancelAllAnimations()V

    return-void
.end method
