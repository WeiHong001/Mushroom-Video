.class public final Lcom/mogu/tv/databinding/ActQiupianBinding;
.super Ljava/lang/Object;
.source "ActQiupianBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etPassword:Landroid/widget/EditText;

.field public final etVerify:Landroid/widget/EditText;

.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivPhoto:Landroid/widget/ImageView;

.field public final ivVerify:Landroid/widget/ImageView;

.field public final llHead:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvSubmit:Landroid/widget/TextView;

.field public final tvYzm:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->rootView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->etPassword:Landroid/widget/EditText;

    .line 55
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->etVerify:Landroid/widget/EditText;

    .line 56
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 57
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->ivPhoto:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->ivVerify:Landroid/widget/ImageView;

    .line 59
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->llHead:Landroid/widget/LinearLayout;

    .line 60
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->tvSubmit:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->tvYzm:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActQiupianBinding;
    .locals 12

    const v0, 0x7f0a00f5

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00f8

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0157

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v6

    const v0, 0x7f0a019e

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a01b1

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 122
    move-object v9, p0

    check-cast v9, Landroid/widget/LinearLayout;

    const v0, 0x7f0a03a8

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a03b6

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 136
    new-instance p0, Lcom/mogu/tv/databinding/ActQiupianBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v11}, Lcom/mogu/tv/databinding/ActQiupianBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActQiupianBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActQiupianBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActQiupianBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActQiupianBinding;
    .locals 2

    const v0, 0x7f0d0027

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActQiupianBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActQiupianBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActQiupianBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActQiupianBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
