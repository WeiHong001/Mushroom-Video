.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;
.super Landroid/os/Handler;
.source "PictureExternalPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 389
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_save_success:I

    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->dismissDialog()V

    :goto_0
    return-void
.end method
