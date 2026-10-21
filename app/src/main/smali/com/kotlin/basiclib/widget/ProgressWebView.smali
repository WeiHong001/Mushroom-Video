.class public Lcom/kotlin/basiclib/widget/ProgressWebView;
.super Lcom/github/lzyzsd/jsbridge/BridgeWebView;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;,
        Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebChromeClient;,
        Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;
    }
.end annotation


# static fields
.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x2710


# instance fields
.field private context:Landroid/content/Context;

.field nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

.field public slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

.field private uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kotlin/basiclib/widget/ProgressWebView;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kotlin/basiclib/widget/ProgressWebView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->openImageChooserActivity()V

    return-void
.end method

.method static synthetic access$402(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 73
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {p1, v3}, Lcom/kotlin/basiclib/widget/ProgressWebView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/kotlin/basiclib/R$drawable;->web_progress_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v2, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    invoke-direct {v2, v0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->setVerticalScrollBarEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 86
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const-string v3, "database"

    .line 87
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 88
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 89
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 93
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 94
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 95
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 96
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 97
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_0

    .line 98
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    const-string v3, "cache"

    .line 100
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-wide/32 v5, 0x6400000

    .line 102
    invoke-virtual {v2, v5, v6}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 103
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 105
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 107
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 108
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 109
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 110
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 111
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 112
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 113
    new-instance v0, Lcom/kotlin/basiclib/widget/ProgressWebView$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/widget/ProgressWebView$1;-><init>(Lcom/kotlin/basiclib/widget/ProgressWebView;)V

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 122
    new-instance v0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;

    invoke-direct {v0, p0, v1}, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;-><init>(Lcom/kotlin/basiclib/widget/ProgressWebView;Lcom/kotlin/basiclib/widget/ProgressWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 123
    new-instance v0, Lcom/kotlin/basiclib/widget/ProgressWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView$2;-><init>(Lcom/kotlin/basiclib/widget/ProgressWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/kotlin/basiclib/widget/ProgressWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private openImageChooserActivity()V
    .locals 6

    const-string v0, "image/*"

    const/16 v1, 0x2710

    const/4 v2, 0x0

    .line 272
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 273
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v4, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 277
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 280
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 283
    :catch_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->destroy()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->destroy()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    .line 315
    :goto_1
    iget-object v2, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_3

    .line 316
    invoke-virtual {p0, p1, p2, p3}, Lcom/kotlin/basiclib/widget/ProgressWebView;->onActivityResultAboveL(IILandroid/content/Intent;)V

    goto :goto_2

    .line 317
    :cond_3
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_4

    .line 318
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 319
    iput-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessage:Landroid/webkit/ValueCallback;

    :cond_4
    :goto_2
    return-void
.end method

.method public onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_5

    .line 289
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 294
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 297
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 298
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 299
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz p1, :cond_4

    const/4 p2, 0x1

    new-array v1, p2, [Landroid/net/Uri;

    .line 304
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 307
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 308
    iput-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_2
    return-void
.end method

.method public onProgressStart()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->slowlyProgressBar:Lcom/kotlin/basiclib/widget/SlowlyProgressBar;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/kotlin/basiclib/widget/SlowlyProgressBar;->onProgressStart()V

    :cond_0
    return-void
.end method

.method public setNFWebViewClientListner(Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView;->nfWebViewClientListener:Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;

    return-void
.end method
