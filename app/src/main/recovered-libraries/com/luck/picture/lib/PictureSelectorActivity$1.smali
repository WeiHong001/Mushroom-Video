.class Lcom/luck/picture/lib/PictureSelectorActivity$1;
.super Landroid/os/Handler;
.source "PictureSelectorActivity.java"


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

    .line 97
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$1;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$1;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->dismissDialog()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$1;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPleaseDialog()V

    :goto_0
    return-void
.end method
