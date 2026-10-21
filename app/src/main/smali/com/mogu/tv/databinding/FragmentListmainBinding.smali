.class public final Lcom/mogu/tv/databinding/FragmentListmainBinding;
.super Ljava/lang/Object;
.source "FragmentListmainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final banner:Lcom/youth/banner/Banner;

.field public final flProgressView:Landroid/widget/FrameLayout;

.field public final ivLloading:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final ivNotice:Landroid/widget/ImageView;

.field public final refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvMenu:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

.field public final scrollView:Landroidx/core/widget/NestedScrollView;

.field public final tvSmv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/youth/banner/Banner;Landroid/widget/FrameLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroid/widget/ImageView;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rootView:Landroid/widget/LinearLayout;

    .line 62
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->banner:Lcom/youth/banner/Banner;

    .line 63
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->flProgressView:Landroid/widget/FrameLayout;

    .line 64
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->ivLloading:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 65
    iput-object p5, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->ivNotice:Landroid/widget/ImageView;

    .line 66
    iput-object p6, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->refreshLayout:Lcom/kotlin/basiclib/widget/RefreshLayout;

    .line 67
    iput-object p7, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rvMenu:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p8, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iput-object p9, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 70
    iput-object p10, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->tvSmv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragmentListmainBinding;
    .locals 13

    const v0, 0x7f0a0074

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/youth/banner/Banner;

    if-eqz v4, :cond_0

    const v0, 0x7f0a013f

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a019a

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz v6, :cond_0

    const v0, 0x7f0a019d

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a028c

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kotlin/basiclib/widget/RefreshLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02bd

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a02be

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a02ca

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/core/widget/NestedScrollView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03a7

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 154
    new-instance v0, Lcom/mogu/tv/databinding/FragmentListmainBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/FragmentListmainBinding;-><init>(Landroid/widget/LinearLayout;Lcom/youth/banner/Banner;Landroid/widget/FrameLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroid/widget/ImageView;Lcom/kotlin/basiclib/widget/RefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragmentListmainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragmentListmainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragmentListmainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragmentListmainBinding;
    .locals 2

    const v0, 0x7f0d0079

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragmentListmainBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragmentListmainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragmentListmainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragmentListmainBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
