.class public final Lcom/mogu/tv/databinding/FragBqlistBinding;
.super Ljava/lang/Object;
.source "FragBqlistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivReturnTop:Landroid/widget/ImageView;

.field public final llHead:Landroid/widget/RelativeLayout;

.field public final refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rvList:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvLabelsName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 50
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->ivReturnTop:Landroid/widget/ImageView;

    .line 51
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->llHead:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p5, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 53
    iput-object p6, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-object p7, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->tvLabelsName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragBqlistBinding;
    .locals 10

    const v0, 0x7f0a0157

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a01a3

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 97
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a028c

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a02bc

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0358

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 117
    new-instance p0, Lcom/mogu/tv/databinding/FragBqlistBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v9}, Lcom/mogu/tv/databinding/FragBqlistBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragBqlistBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragBqlistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragBqlistBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragBqlistBinding;
    .locals 2

    const v0, 0x7f0d0063

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragBqlistBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragBqlistBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragBqlistBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragBqlistBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
