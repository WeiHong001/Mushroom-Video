.class public final Lcom/wgq/wangeqiu/main/H5toNative;
.super Ljava/lang/Object;
.source "H5toNative.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0007J\u0008\u0010\u0012\u001a\u00020\u000fH\u0007J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0007J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0011H\u0007J\u0008\u0010\u0017\u001a\u00020\u000fH\u0007J\u0008\u0010\u0018\u001a\u00020\u000fH\u0007J\u0008\u0010\u0019\u001a\u00020\u000fH\u0007J\u0008\u0010\u001a\u001a\u00020\u000fH\u0007J\u0008\u0010\u001b\u001a\u00020\u000fH\u0007J\u0008\u0010\u001c\u001a\u00020\u000fH\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/wgq/wangeqiu/main/H5toNative;",
        "",
        "mContext",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "getMContext$app_mogushareRelease",
        "()Landroid/app/Activity;",
        "setMContext$app_mogushareRelease",
        "webview",
        "Landroid/webkit/WebView;",
        "getWebview",
        "()Landroid/webkit/WebView;",
        "setWebview",
        "(Landroid/webkit/WebView;)V",
        "finishPage",
        "",
        "getUserToken",
        "",
        "goBack",
        "rechargeAndroid",
        "payUrl",
        "showPhoto",
        "url",
        "toFaceToFacePage",
        "toLiveVerifyPage",
        "toLogin",
        "toMySoccerBeanPage",
        "toShopPage",
        "toTaskAcitivty",
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
.field private mContext:Landroid/app/Activity;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$hHV8NXAP2e7eofL-2TwurCCfgLg(Lcom/wgq/wangeqiu/main/H5toNative;)V
    .locals 0

    invoke-static {p0}, Lcom/wgq/wangeqiu/main/H5toNative;->goBack$lambda-0(Lcom/wgq/wangeqiu/main/H5toNative;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wgq/wangeqiu/main/H5toNative;->mContext:Landroid/app/Activity;

    return-void
.end method

.method private static final goBack$lambda-0(Lcom/wgq/wangeqiu/main/H5toNative;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->webview:Landroid/webkit/WebView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->webview:Landroid/webkit/WebView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->mContext:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final finishPage()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final getMContext$app_mogushareRelease()Landroid/app/Activity;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public final getUserToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 22
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getWebview()Landroid/webkit/WebView;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/wgq/wangeqiu/main/H5toNative;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lcom/wgq/wangeqiu/main/H5toNative$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/wgq/wangeqiu/main/H5toNative$$ExternalSyntheticLambda0;-><init>(Lcom/wgq/wangeqiu/main/H5toNative;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final rechargeAndroid(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "payUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setMContext$app_mogushareRelease(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/wgq/wangeqiu/main/H5toNative;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public final setWebview(Landroid/webkit/WebView;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/wgq/wangeqiu/main/H5toNative;->webview:Landroid/webkit/WebView;

    return-void
.end method

.method public final showPhoto(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final toFaceToFacePage()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final toLiveVerifyPage()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final toLogin()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final toMySoccerBeanPage()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final toShopPage()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 83
    sget-object v0, Lcom/mogu/tv/main/UserManager;->INSTANCE:Lcom/mogu/tv/main/UserManager;

    invoke-virtual {v0}, Lcom/mogu/tv/main/UserManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/wgq/wangeqiu/main/H5toNative;->toLogin()V

    :cond_0
    return-void
.end method

.method public final toTaskAcitivty()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method
