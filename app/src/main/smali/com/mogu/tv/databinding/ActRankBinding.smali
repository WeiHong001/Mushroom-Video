.class public final Lcom/mogu/tv/databinding/ActRankBinding;
.super Ljava/lang/Object;
.source "ActRankBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final magicIndicator:Landroid/widget/LinearLayout;

.field public final refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvList:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvMenu0:Landroid/widget/TextView;

.field public final tvMenu1:Landroid/widget/TextView;

.field public final tvMenu2:Landroid/widget/TextView;

.field public final tvMenu3:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActRankBinding;->rootView:Landroid/widget/LinearLayout;

    .line 57
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActRankBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 58
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActRankBinding;->llHead:Landroid/widget/LinearLayout;

    .line 59
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActRankBinding;->magicIndicator:Landroid/widget/LinearLayout;

    .line 60
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActRankBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 61
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActRankBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu0:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu1:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu2:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/mogu/tv/databinding/ActRankBinding;->tvMenu3:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActRankBinding;
    .locals 13

    const v0, 0x7f0a0157

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    .line 102
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0a020d

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a028c

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a02bc

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a035b

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a035c

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a035d

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a035e

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 146
    new-instance p0, Lcom/mogu/tv/databinding/ActRankBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/ActRankBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActRankBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActRankBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActRankBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActRankBinding;
    .locals 2

    const v0, 0x7f0d0028

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActRankBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActRankBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActRankBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActRankBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
