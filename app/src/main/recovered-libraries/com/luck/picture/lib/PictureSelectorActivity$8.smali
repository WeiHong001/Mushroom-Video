.class Lcom/luck/picture/lib/PictureSelectorActivity$8;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 575
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$8$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$8$1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity$8;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 583
    :try_start_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    .line 584
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 588
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
