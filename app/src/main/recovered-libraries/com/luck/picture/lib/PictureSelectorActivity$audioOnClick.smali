.class public Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "audioOnClick"
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;)Ljava/lang/String;
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 645
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 646
    sget v0, Lcom/luck/picture/lib/R$id;->tv_PlayPause:I

    if-ne p1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$1200(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    .line 649
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->tv_Stop:I

    if-ne p1, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$1300(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_stop_audio:I

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$1400(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->stop(Ljava/lang/String;)V

    .line 654
    :cond_1
    sget v0, Lcom/luck/picture/lib/R$id;->tv_Quit:I

    if-ne p1, v0, :cond_2

    .line 655
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 656
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick$1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 663
    :try_start_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    .line 664
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 665
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$800(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/dialog/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 668
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
