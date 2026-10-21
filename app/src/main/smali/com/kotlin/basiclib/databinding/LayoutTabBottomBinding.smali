.class public final Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;
.super Ljava/lang/Object;
.source "LayoutTabBottomBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivTabIcon:Landroid/widget/ImageView;

.field public final llTap:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rtvMsgTip:Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

.field public final tvTabTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;Landroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->ivTabIcon:Landroid/widget/ImageView;

    .line 41
    iput-object p3, p0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->llTap:Landroid/widget/LinearLayout;

    .line 42
    iput-object p4, p0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->rtvMsgTip:Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

    .line 43
    iput-object p5, p0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->tvTabTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;
    .locals 8

    .line 73
    sget v0, Lcom/kotlin/basiclib/R$id;->iv_tab_icon:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 79
    sget v0, Lcom/kotlin/basiclib/R$id;->ll_tap:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 85
    sget v0, Lcom/kotlin/basiclib/R$id;->rtv_msg_tip:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;

    if-eqz v6, :cond_0

    .line 91
    sget v0, Lcom/kotlin/basiclib/R$id;->tv_tab_title:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/widget/commontab/widget/MsgView;Landroid/widget/TextView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;
    .locals 2

    .line 60
    sget v0, Lcom/kotlin/basiclib/R$layout;->layout_tab_bottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kotlin/basiclib/databinding/LayoutTabBottomBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
