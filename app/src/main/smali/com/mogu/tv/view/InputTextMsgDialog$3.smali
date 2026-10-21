.class Lcom/mogu/tv/view/InputTextMsgDialog$3;
.super Ljava/lang/Object;
.source "InputTextMsgDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 121
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x4

    const/4 p3, 0x0

    if-eq p2, p1, :cond_3

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    return p3

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget-object p2, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p2}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$000(Lcom/mogu/tv/view/InputTextMsgDialog;)I

    move-result p2

    const/4 v0, 0x1

    if-le p1, p2, :cond_1

    .line 128
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$300(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u8d85\u8fc7\u6700\u5927\u5b57\u6570\u9650\u5236"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$500(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p2}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 133
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->dismiss()V

    goto :goto_0

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$300(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u8bf7\u8f93\u5165\u6587\u5b57"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$3;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->dismiss()V

    return p3
.end method
