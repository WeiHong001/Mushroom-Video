.class public Lcom/luck/picture/lib/dialog/PictureDialog;
.super Landroid/app/Dialog;
.source "PictureDialog.java"


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    sget v0, Lcom/luck/picture/lib/R$style;->picture_alert_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object p1, p0, Lcom/luck/picture/lib/dialog/PictureDialog;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureDialog;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureDialog;->setCanceledOnTouchOutside(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/PictureDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 20
    sget v0, Lcom/luck/picture/lib/R$style;->DialogWindowStyle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_alert_dialog:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/dialog/PictureDialog;->setContentView(I)V

    return-void
.end method
