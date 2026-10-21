.class Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick$1;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick$1;->this$1:Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick$1;->this$1:Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick$1;->this$1:Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;

    invoke-static {v1}, Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;->access$1500(Lcom/luck/picture/lib/PictureSelectorActivity$audioOnClick;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->stop(Ljava/lang/String;)V

    return-void
.end method
