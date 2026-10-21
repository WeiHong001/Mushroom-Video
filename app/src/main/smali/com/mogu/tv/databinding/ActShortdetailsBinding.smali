.class public final Lcom/mogu/tv/databinding/ActShortdetailsBinding;
.super Ljava/lang/Object;
.source "ActShortdetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final likeBtn:Lcom/github/like/LikeButton;

.field public final llRight:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvContent:Landroid/widget/TextView;

.field public final tvPrase:Landroid/widget/TextView;

.field public final tvUserName:Landroid/widget/TextView;

.field public final videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

.field public final viewShare:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/github/like/LikeButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mogu/tv/view/ShortVideoView;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->ivBack:Landroid/widget/ImageView;

    .line 60
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 61
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->likeBtn:Lcom/github/like/LikeButton;

    .line 62
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->llRight:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->tvContent:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->tvPrase:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->tvUserName:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->videoPlayer:Lcom/mogu/tv/view/ShortVideoView;

    .line 67
    iput-object p10, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->viewShare:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActShortdetailsBinding;
    .locals 13

    const v0, 0x7f0a0189

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0183

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01c3

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/github/like/LikeButton;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01de

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a034f

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0361

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a036a

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a03c5

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/mogu/tv/view/ShortVideoView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03ca

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 151
    new-instance v0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/ActShortdetailsBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/github/like/LikeButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mogu/tv/view/ShortVideoView;Landroid/view/View;)V

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActShortdetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActShortdetailsBinding;
    .locals 2

    const v0, 0x7f0d002d

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActShortdetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActShortdetailsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
