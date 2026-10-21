.class public final Lcom/mogu/tv/ui/activity/WebViewActivity;
.super Lcom/kotlin/basiclib/base/CommonBaseActivity;
.source "WebViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kotlin/basiclib/base/CommonBaseActivity<",
        "Lcom/mogu/tv/databinding/ActWebviewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mogu/tv/ui/activity/WebViewActivity;",
        "Lcom/kotlin/basiclib/base/CommonBaseActivity;",
        "Lcom/mogu/tv/databinding/ActWebviewBinding;",
        "()V",
        "mUrl",
        "",
        "getMUrl",
        "()Ljava/lang/String;",
        "setMUrl",
        "(Ljava/lang/String;)V",
        "initData",
        "",
        "initView",
        "onBackPressed",
        "onDestroy",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/mogu/tv/ui/activity/WebViewActivity;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMUrl()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mogu/tv/ui/activity/WebViewActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initData()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/ui/activity/WebViewActivity;->mUrl:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->webview:Lcom/kotlin/basiclib/widget/ProgressWebView;

    new-instance v1, Lcom/wgq/wangeqiu/main/H5toNative;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/wgq/wangeqiu/main/H5toNative;-><init>(Landroid/app/Activity;)V

    const-string v2, "native"

    invoke-virtual {v0, v1, v2}, Lcom/kotlin/basiclib/widget/ProgressWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->webview:Lcom/kotlin/basiclib/widget/ProgressWebView;

    iget-object v1, p0, Lcom/mogu/tv/ui/activity/WebViewActivity;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->llContent:Landroid/widget/LinearLayout;

    const-string v1, "binding.llContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->fitStatubar(Landroid/view/View;)V

    const-string v0, ""

    .line 19
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->webview:Lcom/kotlin/basiclib/widget/ProgressWebView;

    new-instance v1, Lcom/mogu/tv/ui/activity/WebViewActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/mogu/tv/ui/activity/WebViewActivity$initView$1;-><init>(Lcom/mogu/tv/ui/activity/WebViewActivity;)V

    check-cast v1, Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->setNFWebViewClientListner(Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->webview:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->webview:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->goBack()V

    goto :goto_0

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/mogu/tv/ui/activity/WebViewActivity;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/databinding/ActWebviewBinding;

    iget-object v0, v0, Lcom/mogu/tv/databinding/ActWebviewBinding;->webview:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->destroy()V

    .line 37
    invoke-super {p0}, Lcom/kotlin/basiclib/base/CommonBaseActivity;->onDestroy()V

    return-void
.end method

.method public final setMUrl(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/mogu/tv/ui/activity/WebViewActivity;->mUrl:Ljava/lang/String;

    return-void
.end method
