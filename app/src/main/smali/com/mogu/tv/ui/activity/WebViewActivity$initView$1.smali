.class public final Lcom/mogu/tv/ui/activity/WebViewActivity$initView$1;
.super Ljava/lang/Object;
.source "WebViewActivity.kt"

# interfaces
.implements Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/ui/activity/WebViewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/mogu/tv/ui/activity/WebViewActivity$initView$1",
        "Lcom/kotlin/basiclib/widget/ProgressWebView$NFWebViewClientListener;",
        "onFinished",
        "",
        "title",
        "",
        "url",
        "onOverrideUrlLoad",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "onStart",
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
.field final synthetic this$0:Lcom/mogu/tv/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/mogu/tv/ui/activity/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/ui/activity/WebViewActivity$initView$1;->this$0:Lcom/mogu/tv/ui/activity/WebViewActivity;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    iget-object p2, p0, Lcom/mogu/tv/ui/activity/WebViewActivity$initView$1;->this$0:Lcom/mogu/tv/ui/activity/WebViewActivity;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lcom/mogu/tv/ui/activity/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOverrideUrlLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
