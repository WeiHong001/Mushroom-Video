.class public final Lcom/mogu/tv/databinding/ActSqggBinding;
.super Ljava/lang/Object;
.source "ActSqggBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final llHead:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActSqggBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActSqggBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 36
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActSqggBinding;->llHead:Landroid/widget/LinearLayout;

    .line 37
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActSqggBinding;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActSqggBinding;
    .locals 4

    const v0, 0x7f0a0157

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v0

    .line 74
    move-object v1, p0

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a03d6

    .line 77
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Lcom/mogu/tv/databinding/ActSqggBinding;

    invoke-direct {p0, v1, v0, v1, v3}, Lcom/mogu/tv/databinding/ActSqggBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/webkit/WebView;)V

    return-object p0

    :cond_0
    const v0, 0x7f0a03d6

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActSqggBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActSqggBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActSqggBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActSqggBinding;
    .locals 2

    const v0, 0x7f0d002e

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActSqggBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActSqggBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActSqggBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActSqggBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
