.class Lcom/mogu/tv/view/TipsEditText$1;
.super Ljava/lang/Object;
.source "TipsEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/view/TipsEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/view/TipsEditText;


# direct methods
.method constructor <init>(Lcom/mogu/tv/view/TipsEditText;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 80
    iget-object p4, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p4}, Lcom/mogu/tv/view/TipsEditText;->access$000(Lcom/mogu/tv/view/TipsEditText;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 81
    iget-object p4, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p4}, Lcom/mogu/tv/view/TipsEditText;->access$000(Lcom/mogu/tv/view/TipsEditText;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 v0, p4, 0x1

    if-ne p2, v0, :cond_0

    if-lez p3, :cond_0

    .line 84
    iget-object p2, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    const-string p3, ""

    invoke-static {p2, p3}, Lcom/mogu/tv/view/TipsEditText;->access$002(Lcom/mogu/tv/view/TipsEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object p2, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p2}, Lcom/mogu/tv/view/TipsEditText;->access$100(Lcom/mogu/tv/view/TipsEditText;)Lcom/mogu/tv/view/TopScrollEditText;

    move-result-object p2

    iget-object p3, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p3}, Lcom/mogu/tv/view/TipsEditText;->access$000(Lcom/mogu/tv/view/TipsEditText;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/mogu/tv/view/TopScrollEditText;->setTopicTile(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p2}, Lcom/mogu/tv/view/TipsEditText;->access$100(Lcom/mogu/tv/view/TipsEditText;)Lcom/mogu/tv/view/TopScrollEditText;

    move-result-object p2

    add-int/lit8 p4, p4, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1, p4, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mogu/tv/view/TopScrollEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p1}, Lcom/mogu/tv/view/TipsEditText;->access$300(Lcom/mogu/tv/view/TipsEditText;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "\u6700\u591a\u8fd8\u53ef\u8f93\u5165"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p3}, Lcom/mogu/tv/view/TipsEditText;->access$200(Lcom/mogu/tv/view/TipsEditText;)I

    move-result p3

    iget-object p4, p0, Lcom/mogu/tv/view/TipsEditText$1;->this$0:Lcom/mogu/tv/view/TipsEditText;

    invoke-static {p4}, Lcom/mogu/tv/view/TipsEditText;->access$100(Lcom/mogu/tv/view/TipsEditText;)Lcom/mogu/tv/view/TopScrollEditText;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mogu/tv/view/TopScrollEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-interface {p4}, Landroid/text/Editable;->length()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
