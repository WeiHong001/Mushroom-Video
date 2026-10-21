.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;->showDownLoadDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

.field final synthetic val$dialog:Lcom/luck/picture/lib/dialog/CustomDialog;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;Lcom/luck/picture/lib/dialog/CustomDialog;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->val$dialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "\n"

    .line 309
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->showPleaseDialog()V

    .line 310
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHttp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$602(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    .line 313
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$600(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;->start()V

    goto/16 :goto_0

    .line 317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$700(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->val$path:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v4, Lcom/luck/picture/lib/R$string;->picture_save_success:I

    invoke-virtual {v3, v4}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->dismissDialog()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 323
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v4, Lcom/luck/picture/lib/R$string;->picture_save_error:I

    invoke-virtual {v3, v4}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->dismissDialog()V

    .line 325
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;->val$dialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->dismiss()V

    return-void
.end method
