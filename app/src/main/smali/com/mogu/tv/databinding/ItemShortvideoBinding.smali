.class public final Lcom/mogu/tv/databinding/ItemShortvideoBinding;
.super Ljava/lang/Object;
.source "ItemShortvideoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adImg:Landroid/widget/ImageView;

.field public final ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final likeBtn:Lcom/github/like/LikeButton;

.field public final llComment:Landroid/widget/LinearLayout;

.field public final llRight:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvComment:Landroid/widget/TextView;

.field public final tvContent:Landroid/widget/TextView;

.field public final tvPrase:Landroid/widget/TextView;

.field public final tvUserName:Landroid/widget/TextView;

.field public final videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

.field public final viewShare:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/github/like/LikeButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mogu/tv/view/ShortVideoView;Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p2, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->adImg:Landroid/widget/ImageView;

    .line 67
    iput-object p3, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 68
    iput-object p4, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->likeBtn:Lcom/github/like/LikeButton;

    .line 69
    iput-object p5, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->llComment:Landroid/widget/LinearLayout;

    .line 70
    iput-object p6, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->llRight:Landroid/widget/LinearLayout;

    .line 71
    iput-object p7, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->tvComment:Landroid/widget/TextView;

    .line 72
    iput-object p8, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->tvContent:Landroid/widget/TextView;

    .line 73
    iput-object p9, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->tvPrase:Landroid/widget/TextView;

    .line 74
    iput-object p10, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->tvUserName:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    .line 76
    iput-object p12, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->viewShare:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemShortvideoBinding;
    .locals 15

    const v0, 0x7f0a005b

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0183

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01c3

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/github/like/LikeButton;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01cc

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a01de

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a034e

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a034f

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0361

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a036a

    .line 155
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a03c5

    .line 161
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/mogu/tv/view/ShortVideoView;

    if-eqz v13, :cond_0

    const v0, 0x7f0a03ca

    .line 167
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 172
    new-instance v0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/mogu/tv/databinding/ItemShortvideoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/github/like/LikeButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mogu/tv/view/ShortVideoView;Landroid/view/View;)V

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ItemShortvideoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemShortvideoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemShortvideoBinding;
    .locals 2

    const v0, 0x7f0d0093

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemShortvideoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mogu/tv/databinding/ItemShortvideoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
