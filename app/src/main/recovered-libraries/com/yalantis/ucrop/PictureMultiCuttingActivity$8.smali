.class Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;
.super Ljava/lang/Object;
.source "PictureMultiCuttingActivity.java"

# interfaces
.implements Lcom/yalantis/ucrop/callback/BitmapCropCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cropAndSaveImage()V
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

    .line 674
    iput-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapCropped(Landroid/net/Uri;IIII)V
    .locals 7

    .line 678
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getTargetAspectRatio()F

    move-result v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResultUri(Landroid/net/Uri;FIIII)V

    return-void
.end method

.method public onCropFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 684
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->closeActivity()V

    return-void
.end method
