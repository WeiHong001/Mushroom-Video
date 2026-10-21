.class public final Lcom/mogu/tv/databinding/ActLoadpageBinding;
.super Ljava/lang/Object;
.source "ActLoadpageBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adImg:Landroid/widget/ImageView;

.field public final ivLoading:Landroid/widget/ImageView;

.field public final llBottom:Landroid/widget/LinearLayout;

.field public final llLock:Landroid/widget/LinearLayout;

.field public final patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

.field public final progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

.field public final rlLoading:Landroid/widget/LinearLayout;

.field public final rlPhoto:Landroid/widget/RelativeLayout;

.field public final rootLayout:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCountdown:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/ihsg/patternlocker/PatternLockerView;Landroidx/core/widget/ContentLoadingProgressBar;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->adImg:Landroid/widget/ImageView;

    .line 63
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->ivLoading:Landroid/widget/ImageView;

    .line 64
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->llBottom:Landroid/widget/LinearLayout;

    .line 65
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->llLock:Landroid/widget/LinearLayout;

    .line 66
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    .line 67
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 68
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rlLoading:Landroid/widget/LinearLayout;

    .line 69
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rlPhoto:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p10, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rootLayout:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p11, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->tvCountdown:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActLoadpageBinding;
    .locals 14

    const v0, 0x7f0a005b

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a019b

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01ca

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01d7

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a026b

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/github/ihsg/patternlocker/PatternLockerView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0282

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v9, :cond_0

    const v0, 0x7f0a029b

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a029c

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 149
    move-object v12, p0

    check-cast v12, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0378

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 157
    new-instance p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;

    move-object v2, p0

    move-object v3, v12

    invoke-direct/range {v2 .. v13}, Lcom/mogu/tv/databinding/ActLoadpageBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/ihsg/patternlocker/PatternLockerView;Landroidx/core/widget/ContentLoadingProgressBar;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActLoadpageBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActLoadpageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActLoadpageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActLoadpageBinding;
    .locals 2

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActLoadpageBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActLoadpageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActLoadpageBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActLoadpageBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
