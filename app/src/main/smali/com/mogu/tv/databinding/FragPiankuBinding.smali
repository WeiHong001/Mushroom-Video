.class public final Lcom/mogu/tv/databinding/FragPiankuBinding;
.super Ljava/lang/Object;
.source "FragPiankuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivMainAd:Landroid/widget/ImageView;

.field public final ivReturnTop:Landroid/widget/ImageView;

.field public final llHead:Landroid/widget/RelativeLayout;

.field public final refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rvLike:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvList:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvParentType:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvTime:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvchildType:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 63
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivMainAd:Landroid/widget/ImageView;

    .line 64
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->ivReturnTop:Landroid/widget/ImageView;

    .line 65
    iput-object p5, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->llHead:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p6, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 67
    iput-object p7, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvLike:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p8, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iput-object p9, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvParentType:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iput-object p10, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvTime:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object p11, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rvchildType:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragPiankuBinding;
    .locals 14

    const v0, 0x7f0a0157

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a019c

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01a3

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 120
    move-object v7, p0

    check-cast v7, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a028c

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02b4

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a02bc

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a02b6

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a02b7

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a02bf

    .line 153
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    .line 158
    new-instance p0, Lcom/mogu/tv/databinding/FragPiankuBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v13}, Lcom/mogu/tv/databinding/FragPiankuBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragPiankuBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragPiankuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragPiankuBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragPiankuBinding;
    .locals 2

    const v0, 0x7f0d006d

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragPiankuBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragPiankuBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragPiankuBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragPiankuBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
