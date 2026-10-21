.class public final Lcom/mogu/tv/databinding/ActDetailsBinding;
.super Ljava/lang/Object;
.source "ActDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivImageAd:Landroid/widget/ImageView;

.field public final jumpAd:Landroid/widget/TextView;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvToget:Landroid/widget/TextView;

.field public final videoView:Lcom/mogu/tv/view/DetailsVideoView;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/TextView;Lcom/mogu/tv/view/DetailsVideoView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 52
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    .line 53
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->jumpAd:Landroid/widget/TextView;

    .line 54
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->llHead:Landroid/widget/LinearLayout;

    .line 55
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 56
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->tvToget:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    .line 58
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActDetailsBinding;
    .locals 11

    const v0, 0x7f0a0194

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01b7

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 100
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f0a020d

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v7, :cond_0

    const v0, 0x7f0a03af

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a03c8

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/mogu/tv/view/DetailsVideoView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a03cd

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v10, :cond_0

    .line 126
    new-instance p0, Lcom/mogu/tv/databinding/ActDetailsBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v10}, Lcom/mogu/tv/databinding/ActDetailsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/TextView;Lcom/mogu/tv/view/DetailsVideoView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActDetailsBinding;
    .locals 2

    const v0, 0x7f0d001f

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActDetailsBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActDetailsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActDetailsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
