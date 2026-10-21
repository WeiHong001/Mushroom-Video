.class Lcom/mogu/tv/view/InputTextMsgDialog$2;
.super Ljava/lang/Object;
.source "InputTextMsgDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 100
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {v1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$000(Lcom/mogu/tv/view/InputTextMsgDialog;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$300(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8d85\u8fc7\u6700\u5927\u5b57\u6570\u9650\u5236"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {v1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$000(Lcom/mogu/tv/view/InputTextMsgDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 108
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$400(Lcom/mogu/tv/view/InputTextMsgDialog;)Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mogu/tv/view/InputTextMsgDialog$OnTextSendListener;->onTextSend(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$500(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 111
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$500(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->dismiss()V

    goto :goto_0

    .line 115
    :cond_1
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6587\u5b57"

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$2;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$200(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
