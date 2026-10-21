.class Lcom/yalantis/ucrop/PictureMultiCuttingActivity$7;
.super Ljava/lang/Object;
.source "PictureMultiCuttingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 608
    iput-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$7;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$7;->this$0:Lcom/yalantis/ucrop/PictureMultiCuttingActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->access$900(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;I)V

    :cond_0
    return-void
.end method
