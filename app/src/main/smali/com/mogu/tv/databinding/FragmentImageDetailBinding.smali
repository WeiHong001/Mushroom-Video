.class public final Lcom/mogu/tv/databinding/FragmentImageDetailBinding;
.super Ljava/lang/Object;
.source "FragmentImageDetailBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imagedetailImage:Lcom/luck/picture/lib/photoview/PhotoView;

.field public final imagedetailLoading:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final vvVideo:Landroid/widget/VideoView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/luck/picture/lib/photoview/PhotoView;Landroid/widget/ProgressBar;Landroid/widget/VideoView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->rootView:Landroid/widget/FrameLayout;

    .line 37
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->imagedetailImage:Lcom/luck/picture/lib/photoview/PhotoView;

    .line 38
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->imagedetailLoading:Landroid/widget/ProgressBar;

    .line 39
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->vvVideo:Landroid/widget/VideoView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragmentImageDetailBinding;
    .locals 4

    const v0, 0x7f0a0170

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/photoview/PhotoView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0171

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    const v0, 0x7f0a03d5

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    if-eqz v3, :cond_0

    .line 87
    new-instance v0, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;-><init>(Landroid/widget/FrameLayout;Lcom/luck/picture/lib/photoview/PhotoView;Landroid/widget/ProgressBar;Landroid/widget/VideoView;)V

    return-object v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragmentImageDetailBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragmentImageDetailBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragmentImageDetailBinding;
    .locals 2

    const v0, 0x7f0d0077

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragmentImageDetailBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragmentImageDetailBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
