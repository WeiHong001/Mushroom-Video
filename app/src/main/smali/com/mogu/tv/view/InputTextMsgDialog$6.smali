.class Lcom/mogu/tv/view/InputTextMsgDialog$6;
.super Ljava/lang/Object;
.source "InputTextMsgDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/view/InputTextMsgDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/view/InputTextMsgDialog;


# direct methods
.method constructor <init>(Lcom/mogu/tv/view/InputTextMsgDialog;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$6;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 176
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$6;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
