.class public Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BridgeWebViewClient.java"


# instance fields
.field private webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method public constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p2, "WebViewJavascriptBridge.js"

    .line 49
    invoke-static {p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeUtil;->webViewLoadLocalJs(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->getStartupMessage()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/lzyzsd/jsbridge/Message;

    .line 55
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {v0, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->dispatchMessage(Lcom/github/lzyzsd/jsbridge/Message;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->setStartupMessage(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 23
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const-string/jumbo v0, "yy://return/"

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->handlerReturnData(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo v0, "yy://"

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebViewClient;->webView:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-virtual {p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->flushMessageQueue()V

    return v1

    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
