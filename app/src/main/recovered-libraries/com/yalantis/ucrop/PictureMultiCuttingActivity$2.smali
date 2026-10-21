.class Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;
.super Ljava/lang/Object;
.source "PictureMultiCuttingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupAspectRatioWidget(Landroid/content/Intent;)V
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

    .line 505
    iput-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->getAspectRatio(Z)F

    move-result v1

    .line 508
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 510
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    .line 511
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$600(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 513
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
