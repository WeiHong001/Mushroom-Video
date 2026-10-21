.class Lcom/kotlin/basiclib/widget/ProgressWebView$1;
.super Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/widget/ProgressWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/ProgressWebView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$1;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;-><init>(Lcom/kotlin/basiclib/widget/ProgressWebView;)V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$1;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v0, v0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$1;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v0, v0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;->onFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
