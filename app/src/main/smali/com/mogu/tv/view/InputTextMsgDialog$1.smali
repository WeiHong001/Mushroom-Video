.class Lcom/mogu/tv/view/InputTextMsgDialog$1;
.super Ljava/lang/Object;
.source "InputTextMsgDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 81
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$1;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/mogu/tv/view/InputTextMsgDialog$1;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {v0}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$100(Lcom/mogu/tv/view/InputTextMsgDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$1;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$000(Lcom/mogu/tv/view/InputTextMsgDialog;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
