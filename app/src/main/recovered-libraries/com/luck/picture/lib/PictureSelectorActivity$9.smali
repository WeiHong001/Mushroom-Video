.class Lcom/luck/picture/lib/PictureSelectorActivity$9;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$700(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$900(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$700(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/luck/picture/lib/tools/DateUtils;->timeParse(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$1000(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$700(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 605
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$1000(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$700(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 606
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$1100(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$700(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/luck/picture/lib/tools/DateUtils;->timeParse(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$9;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
