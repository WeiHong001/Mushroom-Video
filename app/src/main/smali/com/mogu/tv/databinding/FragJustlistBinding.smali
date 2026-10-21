.class public final Lcom/mogu/tv/databinding/FragJustlistBinding;
.super Ljava/lang/Object;
.source "FragJustlistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llHead:Lcom/mogu/tv/view/RefreshSlideLayout;

.field public final refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

.field private final rootView:Lcom/mogu/tv/view/RefreshSlideLayout;

.field public final rvList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lcom/mogu/tv/view/RefreshSlideLayout;Lcom/mogu/tv/view/RefreshSlideLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rootView:Lcom/mogu/tv/view/RefreshSlideLayout;

    .line 36
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragJustlistBinding;->llHead:Lcom/mogu/tv/view/RefreshSlideLayout;

    .line 37
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragJustlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 38
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragJustlistBinding;
    .locals 4

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/mogu/tv/view/RefreshSlideLayout;

    const v1, 0x7f0a028c

    .line 71
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v2, :cond_0

    const v1, 0x7f0a02bc

    .line 77
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Lcom/mogu/tv/databinding/FragJustlistBinding;

    invoke-direct {p0, v0, v0, v2, v3}, Lcom/mogu/tv/databinding/FragJustlistBinding;-><init>(Lcom/mogu/tv/view/RefreshSlideLayout;Lcom/mogu/tv/view/RefreshSlideLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragJustlistBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragJustlistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragJustlistBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragJustlistBinding;
    .locals 2

    const v0, 0x7f0d006a

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragJustlistBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragJustlistBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragJustlistBinding;->getRoot()Lcom/mogu/tv/view/RefreshSlideLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/mogu/tv/view/RefreshSlideLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragJustlistBinding;->rootView:Lcom/mogu/tv/view/RefreshSlideLayout;

    return-object v0
.end method
