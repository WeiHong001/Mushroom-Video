.class public final Lcom/mogu/tv/databinding/ActivityTopicBinding;
.super Ljava/lang/Object;
.source "ActivityTopicBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appBar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final ivBack:Landroid/widget/ImageView;

.field public final ivBg:Landroid/widget/ImageView;

.field public final ivUser:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final tvFocus:Landroid/widget/TextView;

.field public final tvHeaderTitle:Landroid/widget/TextView;

.field public final tvIntroduce:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->rootView:Landroid/widget/LinearLayout;

    .line 70
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->appBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 71
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->ivBack:Landroid/widget/ImageView;

    .line 72
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->ivBg:Landroid/widget/ImageView;

    .line 73
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->ivUser:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 74
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->llHead:Landroid/widget/LinearLayout;

    .line 75
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 76
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 77
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvFocus:Landroid/widget/TextView;

    .line 78
    iput-object p10, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvHeaderTitle:Landroid/widget/TextView;

    .line 79
    iput-object p11, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvIntroduce:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->tvName:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActivityTopicBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a0066

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0189

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a018b

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0188

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v8, :cond_0

    .line 135
    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const v1, 0x7f0a020d

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v10, :cond_0

    const v1, 0x7f0a033d

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/Toolbar;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0351

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0385

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0355

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0395

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a03cd

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/viewpager/widget/ViewPager;

    if-eqz v16, :cond_0

    .line 179
    new-instance v0, Lcom/mogu/tv/databinding/ActivityTopicBinding;

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v3 .. v16}, Lcom/mogu/tv/databinding/ActivityTopicBinding;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/LinearLayout;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/viewpager/widget/ViewPager;)V

    return-object v0

    .line 182
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActivityTopicBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActivityTopicBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActivityTopicBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActivityTopicBinding;
    .locals 2

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActivityTopicBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActivityTopicBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActivityTopicBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActivityTopicBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
