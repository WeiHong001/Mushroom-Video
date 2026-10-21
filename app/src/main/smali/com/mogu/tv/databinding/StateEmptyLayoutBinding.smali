.class public final Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;
.super Ljava/lang/Object;
.source "StateEmptyLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final contentLoading:Landroidx/core/widget/ContentLoadingProgressBar;

.field public final emptyLayout:Landroid/widget/LinearLayout;

.field public final emptyText:Landroid/widget/TextView;

.field public final ivEmpty:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/core/widget/ContentLoadingProgressBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 41
    iput-object p2, p0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->contentLoading:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 42
    iput-object p3, p0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->emptyLayout:Landroid/widget/LinearLayout;

    .line 43
    iput-object p4, p0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->emptyText:Landroid/widget/TextView;

    .line 44
    iput-object p5, p0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->ivEmpty:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;
    .locals 8

    const v0, 0x7f0a00b1

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00e8

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00e9

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0192

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 98
    new-instance v0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/core/widget/ContentLoadingProgressBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;
    .locals 2

    const v0, 0x7f0d0104

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mogu/tv/databinding/StateEmptyLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
