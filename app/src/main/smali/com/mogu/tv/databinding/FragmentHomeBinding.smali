.class public final Lcom/mogu/tv/databinding/FragmentHomeBinding;
.super Ljava/lang/Object;
.source "FragmentHomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llTosearch:Landroid/widget/RelativeLayout;

.field public final magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final rlNight:Landroid/widget/RelativeLayout;

.field public final rlTop:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvNightMode:Landroid/widget/TextView;

.field public final tvSmv:Lcom/gongwen/marqueen/SimpleMarqueeView;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/gongwen/marqueen/SimpleMarqueeView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 51
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->llTosearch:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 53
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->rlNight:Landroid/widget/RelativeLayout;

    .line 54
    iput-object p5, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->rlTop:Landroid/widget/RelativeLayout;

    .line 55
    iput-object p6, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->tvNightMode:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->tvSmv:Lcom/gongwen/marqueen/SimpleMarqueeView;

    .line 57
    iput-object p8, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragmentHomeBinding;
    .locals 11

    const v0, 0x7f0a0201

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a020d

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v5, :cond_0

    const v0, 0x7f0a02a6

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02ab

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0396

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a03a7

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/gongwen/marqueen/SimpleMarqueeView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a03cd

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v10, :cond_0

    .line 129
    new-instance v0, Lcom/mogu/tv/databinding/FragmentHomeBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/mogu/tv/databinding/FragmentHomeBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/gongwen/marqueen/SimpleMarqueeView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragmentHomeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragmentHomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragmentHomeBinding;
    .locals 2

    const v0, 0x7f0d0076

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragmentHomeBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragmentHomeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragmentHomeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragmentHomeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
