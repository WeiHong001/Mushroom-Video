.class public final Lcom/mogu/tv/databinding/ItemSharevipBinding;
.super Ljava/lang/Object;
.source "ItemSharevipBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flRoot:Landroid/widget/FrameLayout;

.field public final ivItem:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final ivQrCode:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvAddressTitle:Landroid/widget/TextView;

.field public final tvHint:Landroid/widget/TextView;

.field public final tvSaveLink:Landroid/widget/TextView;

.field public final tvSavePhoto:Landroid/widget/TextView;

.field public final tvShareAddress:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p2, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->flRoot:Landroid/widget/FrameLayout;

    .line 58
    iput-object p3, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->ivItem:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 59
    iput-object p4, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->ivQrCode:Landroid/widget/ImageView;

    .line 60
    iput-object p5, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->tvAddressTitle:Landroid/widget/TextView;

    .line 61
    iput-object p6, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->tvHint:Landroid/widget/TextView;

    .line 62
    iput-object p7, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->tvSaveLink:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->tvSavePhoto:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->tvShareAddress:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemSharevipBinding;
    .locals 13

    const v0, 0x7f0a013c

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a017f

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0185

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a034b

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0353

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0363

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0364

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0365

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0368

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 149
    new-instance v0, Lcom/mogu/tv/databinding/ItemSharevipBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/ItemSharevipBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ItemSharevipBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ItemSharevipBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemSharevipBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemSharevipBinding;
    .locals 2

    const v0, 0x7f0d0091

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ItemSharevipBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemSharevipBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ItemSharevipBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mogu/tv/databinding/ItemSharevipBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
