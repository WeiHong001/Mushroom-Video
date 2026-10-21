.class public final Lcom/mogu/tv/databinding/FragDetailsBinding;
.super Ljava/lang/Object;
.source "FragDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field public final ivDetailsAd1:Landroid/widget/ImageView;

.field public final ivLike:Landroid/widget/ImageView;

.field public final ivMainAd:Landroid/widget/ImageView;

.field public final ivShare:Landroid/widget/ImageView;

.field public final ivSugguest:Landroid/widget/ImageView;

.field public final llLike:Landroid/widget/LinearLayout;

.field public final llResponse:Landroid/widget/LinearLayout;

.field public final llShare:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rvLikelists:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvUser:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvCollect:Landroid/widget/TextView;

.field public final tvCreatetime:Landroid/widget/TextView;

.field public final tvLike:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvNumber:Landroid/widget/TextView;

.field public final tvViews:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->ivDetailsAd1:Landroid/widget/ImageView;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->ivLike:Landroid/widget/ImageView;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->ivMainAd:Landroid/widget/ImageView;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->ivShare:Landroid/widget/ImageView;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->ivSugguest:Landroid/widget/ImageView;

    move-object v1, p8

    .line 91
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->llLike:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 92
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->llResponse:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->llShare:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->rvLikelists:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p12

    .line 95
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    move-object v1, p13

    .line 96
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->tvCollect:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 97
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->tvCreatetime:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 98
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->tvLike:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 99
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->tvName:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 100
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->tvNumber:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 101
    iput-object v1, v0, Lcom/mogu/tv/databinding/FragDetailsBinding;->tvViews:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragDetailsBinding;
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f0a0143

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0190

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0197

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a019c

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01a7

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a01aa

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a01f0

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a01dd

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a01e1

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a02bb

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a02b8

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a034d

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a037a

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0359

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0395

    .line 216
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0397

    .line 222
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a03b5

    .line 228
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 233
    new-instance v1, Lcom/mogu/tv/databinding/FragDetailsBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v21}, Lcom/mogu/tv/databinding/FragDetailsBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 237
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragDetailsBinding;
    .locals 2

    const v0, 0x7f0d0065

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragDetailsBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragDetailsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragDetailsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
