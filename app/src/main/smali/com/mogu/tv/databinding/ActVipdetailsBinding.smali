.class public final Lcom/mogu/tv/databinding/ActVipdetailsBinding;
.super Ljava/lang/Object;
.source "ActVipdetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivImageAd:Landroid/widget/ImageView;

.field public final ivInvite:Landroid/widget/ImageView;

.field public final ivMainAd:Landroid/widget/ImageView;

.field public final jumpAd:Landroid/widget/TextView;

.field public final llDzlayout:Landroid/widget/LinearLayout;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final llJifen:Landroid/widget/LinearLayout;

.field public final llJuqing:Landroid/widget/LinearLayout;

.field public final llRecommend:Landroid/widget/LinearLayout;

.field public final llYzLayout:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvIntroduce:Landroid/widget/TextView;

.field public final tvJifen:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvToget:Landroid/widget/TextView;

.field public final videoView:Lcom/mogu/tv/view/DetailsVideoView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mogu/tv/view/DetailsVideoView;)V
    .locals 2

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->ivImageAd:Landroid/widget/ImageView;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->ivInvite:Landroid/widget/ImageView;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->ivMainAd:Landroid/widget/ImageView;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->jumpAd:Landroid/widget/TextView;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->llDzlayout:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->llHead:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 86
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->llJifen:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 87
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->llJuqing:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->llRecommend:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 89
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->llYzLayout:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 90
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->tvIntroduce:Landroid/widget/TextView;

    move-object v1, p13

    .line 91
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->tvJifen:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 92
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->tvName:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 93
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 94
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->tvToget:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 95
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->videoView:Lcom/mogu/tv/view/DetailsVideoView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActVipdetailsBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0a0194

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a017e

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a019c

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a01b7

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01d0

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 155
    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const v1, 0x7f0a01d5

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a01d6

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a01dc

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a01e6

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0355

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0357

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0395

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0368

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a03af

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a03c8

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/mogu/tv/view/DetailsVideoView;

    if-eqz v20, :cond_0

    .line 217
    new-instance v0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    move-object v3, v0

    move-object v4, v10

    invoke-direct/range {v3 .. v20}, Lcom/mogu/tv/databinding/ActVipdetailsBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mogu/tv/view/DetailsVideoView;)V

    return-object v0

    .line 221
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActVipdetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActVipdetailsBinding;
    .locals 2

    const v0, 0x7f0d0031

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActVipdetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActVipdetailsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
