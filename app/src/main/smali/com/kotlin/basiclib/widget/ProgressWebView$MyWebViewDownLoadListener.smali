.class Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "ProgressWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/widget/ProgressWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;


# direct methods
.method private constructor <init>(Lcom/kotlin/basiclib/widget/ProgressWebView;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kotlin/basiclib/widget/ProgressWebView;Lcom/kotlin/basiclib/widget/ProgressWebView$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;-><init>(Lcom/kotlin/basiclib/widget/ProgressWebView;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 231
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 232
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    iget-object p1, p0, Lcom/kotlin/basiclib/widget/ProgressWebView$MyWebViewDownLoadListener;->this$0:Lcom/kotlin/basiclib/widget/ProgressWebView;

    invoke-static {p1}, Lcom/kotlin/basiclib/widget/ProgressWebView;->access$100(Lcom/kotlin/basiclib/widget/ProgressWebView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
