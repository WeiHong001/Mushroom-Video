.class Lcom/luck/picture/lib/PictureSelectorActivity$8$1;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity$8;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/PictureSelectorActivity$8;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity$8;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8$1;->this$1:Lcom/luck/picture/lib/PictureSelectorActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8$1;->this$1:Lcom/luck/picture/lib/PictureSelectorActivity$8;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity$8;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$8$1;->this$1:Lcom/luck/picture/lib/PictureSelectorActivity$8;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureSelectorActivity$8;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->stop(Ljava/lang/String;)V

    return-void
.end method
