.class public final Lcom/mogu/tv/databinding/ActSearchBinding;
.super Ljava/lang/Object;
.source "ActSearchBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etSearch:Landroid/widget/EditText;

.field public final flexLables:Lcom/google/android/flexbox/FlexboxLayout;

.field public final flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field public final ivClear:Landroid/widget/ImageView;

.field public final ivClearContent:Landroid/widget/ImageView;

.field public final ivMainAd:Landroid/widget/ImageView;

.field public final ivSearchleft:Landroid/widget/ImageView;

.field public final llMore:Landroid/widget/LinearLayout;

.field public final llSearchfirst:Landroid/widget/LinearLayout;

.field public final llSearchresult:Landroid/widget/LinearLayout;

.field public final magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field public final rlHead:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final rvHotSearch:Landroidx/recyclerview/widget/RecyclerView;

.field public final rvUser:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvMore:Landroid/widget/TextView;

.field public final tvMoreIc:Landroid/widget/TextView;

.field public final tvTosearch:Landroid/widget/TextView;

.field public final tvTypename:Landroid/widget/TextView;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/google/android/flexbox/FlexboxLayout;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    move-object v0, p0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 95
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 96
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->etSearch:Landroid/widget/EditText;

    move-object v1, p3

    .line 97
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->flexLables:Lcom/google/android/flexbox/FlexboxLayout;

    move-object v1, p4

    .line 98
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->flexLayout:Lcom/google/android/flexbox/FlexboxLayout;

    move-object v1, p5

    .line 99
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->ivClear:Landroid/widget/ImageView;

    move-object v1, p6

    .line 100
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->ivClearContent:Landroid/widget/ImageView;

    move-object v1, p7

    .line 101
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->ivMainAd:Landroid/widget/ImageView;

    move-object v1, p8

    .line 102
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->ivSearchleft:Landroid/widget/ImageView;

    move-object v1, p9

    .line 103
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->llMore:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 104
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->llSearchfirst:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 105
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->llSearchresult:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 106
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-object v1, p13

    .line 107
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rlHead:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 108
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvHotSearch:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p15

    .line 109
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->rvUser:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p16

    .line 110
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvMore:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 111
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvMoreIc:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 112
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvTosearch:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 113
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->tvTypename:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 114
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActSearchBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActSearchBinding;
    .locals 24

    move-object/from16 v0, p0

    const v1, 0x7f0a00f7

    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0141

    .line 151
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0143

    .line 157
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a018c

    .line 163
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a018d

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a019c

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a01a6

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a01f2

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a01fa

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a01fb

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a020d

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v15, :cond_0

    const v1, 0x7f0a02a2

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a02ba

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a02b8

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a038f

    .line 229
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a035f

    .line 235
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a03b1

    .line 241
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a03b2

    .line 247
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    const v1, 0x7f0a03cd

    .line 253
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v23, :cond_0

    .line 258
    new-instance v1, Lcom/mogu/tv/databinding/ActSearchBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v23}, Lcom/mogu/tv/databinding/ActSearchBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Lcom/google/android/flexbox/FlexboxLayout;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v1

    .line 263
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActSearchBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActSearchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActSearchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActSearchBinding;
    .locals 2

    const v0, 0x7f0d0029

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActSearchBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActSearchBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActSearchBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActSearchBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
