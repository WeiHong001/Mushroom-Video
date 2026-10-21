.class public final Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;
.super Ljava/lang/Object;
.source "ItemFriendlistlayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flImg:Landroid/widget/FrameLayout;

.field public final ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final ivPlay:Landroid/widget/ImageView;

.field public final ivPraise:Landroid/widget/ImageView;

.field public final ivSingle:Landroid/widget/ImageView;

.field public final ivVideoPhoto:Landroid/widget/ImageView;

.field public final llContent:Landroid/widget/LinearLayout;

.field public final llPraise:Landroid/widget/LinearLayout;

.field public final llShare:Landroid/widget/LinearLayout;

.field public final llText:Landroid/widget/LinearLayout;

.field public final ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

.field public final rlImg:Landroid/widget/RelativeLayout;

.field public final rlPersonal:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvComment:Landroid/widget/TextView;

.field public final tvFriendTitle:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvPraise:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/mogu/tv/view/NineGridLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->flImg:Landroid/widget/FrameLayout;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPlay:Landroid/widget/ImageView;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivPraise:Landroid/widget/ImageView;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivSingle:Landroid/widget/ImageView;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ivVideoPhoto:Landroid/widget/ImageView;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llContent:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llPraise:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llShare:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->llText:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->ngridLayout:Lcom/mogu/tv/view/NineGridLayout;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->rlImg:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->rlPersonal:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvComment:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvFriendTitle:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvName:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 106
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvPraise:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 107
    iput-object v1, v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->tvTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0a013e

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a019e

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a01a1

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a01a2

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01a9

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a01b2

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 173
    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const v1, 0x7f0a01f3

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a01fc

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0200

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0253

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/mogu/tv/view/NineGridLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a02a3

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a02a8

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0374

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0382

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0395

    .line 224
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a039b

    .line 230
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a03ab

    .line 236
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 241
    new-instance v0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    move-object v3, v0

    move-object v4, v11

    invoke-direct/range {v3 .. v22}, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/mogu/tv/view/NineGridLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 245
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;
    .locals 2

    const v0, 0x7f0d0083

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mogu/tv/databinding/ItemFriendlistlayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
