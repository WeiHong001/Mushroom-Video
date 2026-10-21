.class public Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;
.super Ljava/lang/Thread;
.source "PictureExternalPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "loadDataThread"
.end annotation


# instance fields
.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    .line 340
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->showLoadingImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
