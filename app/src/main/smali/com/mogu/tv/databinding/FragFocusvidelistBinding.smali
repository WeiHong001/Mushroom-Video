.class public final Lcom/mogu/tv/databinding/FragFocusvidelistBinding;
.super Ljava/lang/Object;
.source "FragFocusvidelistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivLogin:Landroid/widget/ImageView;

.field public final ivReturnTop:Landroid/widget/ImageView;

.field public final llHead:Landroid/widget/RelativeLayout;

.field public final llLogin:Landroid/widget/LinearLayout;

.field public final refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rvList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->ivLogin:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->ivReturnTop:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->llHead:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p5, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->llLogin:Landroid/widget/LinearLayout;

    .line 51
    iput-object p6, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 52
    iput-object p7, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragFocusvidelistBinding;
    .locals 10

    const v0, 0x7f0a0181

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01a3

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 94
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01d8

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a028c

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02bc

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    .line 114
    new-instance p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v9}, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragFocusvidelistBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragFocusvidelistBinding;
    .locals 2

    const v0, 0x7f0d0068

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragFocusvidelistBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragFocusvidelistBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
