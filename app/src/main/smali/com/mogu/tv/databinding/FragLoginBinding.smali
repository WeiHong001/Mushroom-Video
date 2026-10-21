.class public final Lcom/mogu/tv/databinding/FragLoginBinding;
.super Ljava/lang/Object;
.source "FragLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etAccount:Landroid/widget/EditText;

.field public final etPassword:Landroid/widget/EditText;

.field public final etVerify:Landroid/widget/EditText;

.field public final ivPhoto:Landroid/widget/ImageView;

.field public final ivVerify:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvClick:Landroid/widget/TextView;

.field public final tvForgetPass:Landroid/widget/TextView;

.field public final tvSubmit:Landroid/widget/TextView;

.field public final tvYzm:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->rootView:Landroid/widget/LinearLayout;

    .line 56
    iput-object p2, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->etAccount:Landroid/widget/EditText;

    .line 57
    iput-object p3, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->etPassword:Landroid/widget/EditText;

    .line 58
    iput-object p4, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->etVerify:Landroid/widget/EditText;

    .line 59
    iput-object p5, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->ivPhoto:Landroid/widget/ImageView;

    .line 60
    iput-object p6, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->ivVerify:Landroid/widget/ImageView;

    .line 61
    iput-object p7, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->tvClick:Landroid/widget/TextView;

    .line 62
    iput-object p8, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->tvForgetPass:Landroid/widget/TextView;

    .line 63
    iput-object p9, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->tvSubmit:Landroid/widget/TextView;

    .line 64
    iput-object p10, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->tvYzm:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragLoginBinding;
    .locals 13

    const v0, 0x7f0a00f1

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00f5

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00f8

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    const v0, 0x7f0a019e

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a01b1

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0373

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0352

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a03a8

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03b6

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 148
    new-instance v0, Lcom/mogu/tv/databinding/FragLoginBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/FragLoginBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/FragLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/FragLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/FragLoginBinding;
    .locals 2

    const v0, 0x7f0d006b

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/FragLoginBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/FragLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/FragLoginBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mogu/tv/databinding/FragLoginBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
