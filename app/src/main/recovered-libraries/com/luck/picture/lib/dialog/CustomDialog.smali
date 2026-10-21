.class public Lcom/luck/picture/lib/dialog/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {p0, p4}, Lcom/luck/picture/lib/dialog/CustomDialog;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    .line 19
    iput p2, p4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 20
    iput p3, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x11

    .line 21
    iput p2, p4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 22
    invoke-virtual {p1, p4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getDensity(Landroid/content/Context;)F
    .locals 0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 28
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return p1
.end method
