.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$2;
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


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/dialog/CustomDialog;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$2;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$2;->val$dialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 303
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$2;->val$dialog:Lcom/luck/picture/lib/dialog/CustomDialog;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/CustomDialog;->dismiss()V

    return-void
.end method
