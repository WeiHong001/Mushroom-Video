.class public Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/ProgressWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;


# direct methods
.method public constructor <init>(Lcom/kotlin/basiclib/widget/ProgressWebView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 242
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object p1, p1, Lcom/kotlin/basiclib/widget/ProgressWebView;->slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object p1, p1, Lcom/kotlin/basiclib/widget/ProgressWebView;->slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->onProgressChange(I)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 263
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p1, p2}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$402(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 264
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$300(Lcom/kotlin/basiclib/widget/ProgressWebView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    .line 250
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p2, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$202(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 251
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$300(Lcom/kotlin/basiclib/widget/ProgressWebView;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 256
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p2, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$202(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 257
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$300(Lcom/kotlin/basiclib/widget/ProgressWebView;)V

    return-void
.end method
