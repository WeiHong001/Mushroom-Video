.class public Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# instance fields
.field private mGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    sget v0, Lcom/kotlin/basiclib/R$style;->dialog_full_screen:I

    invoke-direct {p0, p1, v0}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public setGravity(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->mGravity:I

    return-void
.end method

.method public show()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showAtBottom()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x50

    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 40
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/kotlin/basiclib/R$style;->dialog_anima_default:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showWithoutAnima()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/customview/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 53
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 54
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 55
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
