.class public final Lcom/mogu/tv/databinding/ActForgetpassBinding;
.super Ljava/lang/Object;
.source "ActForgetpassBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etAccount:Landroid/widget/EditText;

.field public final etImgverify:Landroid/widget/EditText;

.field public final etPassword:Landroid/widget/EditText;

.field public final etPassword2:Landroid/widget/EditText;

.field public final etVerify:Landroid/widget/EditText;

.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivPhoto:Landroid/widget/ImageView;

.field public final ivPhoto1:Landroid/widget/ImageView;

.field public final ivVerify:Landroid/widget/ImageView;

.field public final llHead:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvClick:Landroid/widget/TextView;

.field public final tvGetVerifycation:Landroid/widget/TextView;

.field public final tvPhoneyzm:Landroid/widget/TextView;

.field public final tvSubmit:Landroid/widget/TextView;

.field public final tvYzm:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etAccount:Landroid/widget/EditText;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etImgverify:Landroid/widget/EditText;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword:Landroid/widget/EditText;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etPassword2:Landroid/widget/EditText;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->etVerify:Landroid/widget/EditText;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->ivPhoto:Landroid/widget/ImageView;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->ivPhoto1:Landroid/widget/ImageView;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->ivVerify:Landroid/widget/ImageView;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->llHead:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvClick:Landroid/widget/TextView;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvGetVerifycation:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvPhoneyzm:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvSubmit:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->tvYzm:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActForgetpassBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0a00f1

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    const v1, 0x7f0a00f3

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    const v1, 0x7f0a00f5

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    if-eqz v7, :cond_0

    const v1, 0x7f0a00f6

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    const v1, 0x7f0a00f8

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0157

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {v2}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v10

    const v1, 0x7f0a019e

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a019f

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a01b1

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 176
    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0373

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0384

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0399

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a03a8

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a03b6

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 208
    new-instance v0, Lcom/mogu/tv/databinding/ActForgetpassBinding;

    move-object v3, v0

    move-object v4, v14

    invoke-direct/range {v3 .. v19}, Lcom/mogu/tv/databinding/ActForgetpassBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActForgetpassBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActForgetpassBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActForgetpassBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActForgetpassBinding;
    .locals 2

    const v0, 0x7f0d0020

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActForgetpassBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActForgetpassBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActForgetpassBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActForgetpassBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
