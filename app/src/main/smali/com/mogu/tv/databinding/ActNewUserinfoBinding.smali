.class public final Lcom/mogu/tv/databinding/ActNewUserinfoBinding;
.super Ljava/lang/Object;
.source "ActNewUserinfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivTodophoto:Landroid/widget/ImageView;

.field public final ivUserIcon:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final rlName:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvName:Landroid/widget/TextView;

.field public final tvRight1:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 52
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 53
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->ivTodophoto:Landroid/widget/ImageView;

    .line 54
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->ivUserIcon:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 55
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->llHead:Landroid/widget/LinearLayout;

    .line 56
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->rlName:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->tvName:Landroid/widget/TextView;

    .line 58
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->tvRight1:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActNewUserinfoBinding;
    .locals 11

    const v0, 0x7f0a0157

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a01ac

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01af

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v6, :cond_0

    .line 107
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    const v0, 0x7f0a02a5

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0395

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a03a1

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 127
    new-instance p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v10}, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object p0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActNewUserinfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActNewUserinfoBinding;
    .locals 2

    const v0, 0x7f0d0024

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActNewUserinfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActNewUserinfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
