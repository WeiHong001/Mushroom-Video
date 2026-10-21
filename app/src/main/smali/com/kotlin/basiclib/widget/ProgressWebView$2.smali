.class Lcom/kotlin/basiclib/widget/ProgressWebView$2;
.super Landroid/webkit/WebViewClient;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/content/Context;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iput-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 197
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v0, v0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    if-eqz v0, :cond_3

    const-string v0, "http"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v0, v0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    invoke-interface {v0, p1, p2}, Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;->onFinished(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 201
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object p1, p1, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    invoke-interface {p1, v1, p2}, Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;->onFinished(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string p1, "onPageStarted"

    .line 188
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->onProgressStart()V

    .line 190
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object p1, p1, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object p1, p1, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    invoke-interface {p1, p2}, Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;->onStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceivedError"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Override"

    .line 127
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "weixin://"

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->goBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    :cond_0
    const-string/jumbo v0, "tel:"

    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/high16 v3, 0x10000000

    if-eqz v0, :cond_1

    .line 140
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_1
    const-string v0, "sms:"

    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance p2, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsto:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_2
    const-string v0, "alipays://"

    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 153
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-virtual {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->goBack()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v2

    :cond_3
    const-string v0, "mqqwpa://"

    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 163
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    iget-object p2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return v2

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v0, v0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v0, v0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    invoke-interface {v0, p1, p2}, Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;->onOverrideUrlLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 175
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
