.class public final Lcom/mogu/tv/databinding/ActToupinBinding;
.super Ljava/lang/Object;
.source "ActToupinBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivEnd:Landroid/widget/TextView;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final llItem:Landroid/widget/LinearLayout;

.field public final progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

.field public final rlVideo:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final scrollView:Landroid/widget/ScrollView;

.field public final tvDevicename:Landroid/widget/TextView;

.field public final tvSearchHint:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/ContentLoadingProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 60
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->ivEnd:Landroid/widget/TextView;

    .line 61
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->llHead:Landroid/widget/LinearLayout;

    .line 62
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->llItem:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->progressBar:Landroidx/core/widget/ContentLoadingProgressBar;

    .line 64
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->rlVideo:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->scrollView:Landroid/widget/ScrollView;

    .line 66
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->tvDevicename:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->tvSearchHint:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActToupinBinding;
    .locals 13

    const v0, 0x7f0a0157

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a0193

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 110
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f0a01ed

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0282

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/core/widget/ContentLoadingProgressBar;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02ac

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a02ca

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ScrollView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a037d

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03a3

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 148
    new-instance p0, Lcom/mogu/tv/databinding/ActToupinBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/ActToupinBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/core/widget/ContentLoadingProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActToupinBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActToupinBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActToupinBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActToupinBinding;
    .locals 2

    const v0, 0x7f0d0030

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActToupinBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActToupinBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActToupinBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActToupinBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
