.class public final Lcom/mogu/tv/databinding/FragShortindexvideoBinding;
.super Ljava/lang/Object;
.source "FragShortindexvideoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->rootView:Landroid/widget/FrameLayout;

    .line 32
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 33
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragShortindexvideoBinding;
    .locals 3

    const v0, 0x7f0a020d

    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v1, :cond_0

    const v0, 0x7f0a03cd

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_0

    .line 75
    new-instance v0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;-><init>(Landroid/widget/FrameLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragShortindexvideoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragShortindexvideoBinding;
    .locals 2

    const v0, 0x7f0d0071

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragShortindexvideoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragShortindexvideoBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
