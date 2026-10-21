.class Lcom/mogu/tv/view/InputTextMsgDialog$5;
.super Ljava/lang/Object;
.source "InputTextMsgDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 155
    iput-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$5;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 160
    iget-object p2, p0, Lcom/mogu/tv/view/InputTextMsgDialog$5;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p2}, Lcom/mogu/tv/view/InputTextMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 162
    iget-object p2, p0, Lcom/mogu/tv/view/InputTextMsgDialog$5;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p2}, Lcom/mogu/tv/view/InputTextMsgDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 164
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    if-gtz p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$5;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$600(Lcom/mogu/tv/view/InputTextMsgDialog;)I

    move-result p1

    if-lez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$5;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-virtual {p1}, Lcom/mogu/tv/view/InputTextMsgDialog;->dismiss()V

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/mogu/tv/view/InputTextMsgDialog$5;->this$0:Lcom/mogu/tv/view/InputTextMsgDialog;

    invoke-static {p1, p2}, Lcom/mogu/tv/view/InputTextMsgDialog;->access$602(Lcom/mogu/tv/view/InputTextMsgDialog;I)I

    return-void
.end method
