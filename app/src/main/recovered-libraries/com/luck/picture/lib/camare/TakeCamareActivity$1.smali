.class Lcom/luck/picture/lib/camare/TakeCamareActivity$1;
.super Ljava/lang/Object;
.source "TakeCamareActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/JCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/TakeCamareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/TakeCamareActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$1;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureSuccess(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public recordSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 74
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "url"

    .line 76
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$1;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$1;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->finish()V

    return-void
.end method
