.class public final Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;
.super Ljava/lang/Object;
.source "HeaderLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivBack:Landroid/widget/ImageView;

.field public final ivRight:Landroid/widget/ImageView;

.field public final rlHead:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final tvHeaderTitle:Landroid/widget/TextView;

.field public final tvRightTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p2, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivBack:Landroid/widget/ImageView;

    .line 47
    iput-object p3, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->ivRight:Landroid/widget/ImageView;

    .line 48
    iput-object p4, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->rlHead:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p5, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 50
    iput-object p6, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvHeaderTitle:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->tvRightTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;
    .locals 10

    .line 81
    sget v0, Lcom/kotlin/basiclib/R$id;->iv_back:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lcom/kotlin/basiclib/R$id;->iv_right:I

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 93
    move-object v6, p0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 95
    sget v0, Lcom/kotlin/basiclib/R$id;->toolbar:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    if-eqz v7, :cond_0

    .line 101
    sget v0, Lcom/kotlin/basiclib/R$id;->tv_header_title:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 107
    sget v0, Lcom/kotlin/basiclib/R$id;->tv_right_title:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 113
    new-instance p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v9}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;
    .locals 2

    .line 68
    sget v0, Lcom/kotlin/basiclib/R$layout;->header_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
