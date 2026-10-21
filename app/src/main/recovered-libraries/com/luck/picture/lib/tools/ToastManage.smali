.class public final Lcom/luck/picture/lib/tools/ToastManage;
.super Ljava/lang/Object;
.source "ToastManage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
