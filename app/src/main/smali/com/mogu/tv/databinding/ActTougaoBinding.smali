.class public final Lcom/mogu/tv/databinding/ActTougaoBinding;
.super Ljava/lang/Object;
.source "ActTougaoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final llCollect:Landroid/widget/LinearLayout;

.field public final llData:Landroid/widget/LinearLayout;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final llHistory:Landroid/widget/LinearLayout;

.field public final llMsg:Landroid/widget/LinearLayout;

.field public final rl1:Landroid/widget/RelativeLayout;

.field public final rl2:Landroid/widget/RelativeLayout;

.field public final rl3:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvSubmit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 60
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->llCollect:Landroid/widget/LinearLayout;

    .line 61
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->llData:Landroid/widget/LinearLayout;

    .line 62
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->llHead:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->llHistory:Landroid/widget/LinearLayout;

    .line 64
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->llMsg:Landroid/widget/LinearLayout;

    .line 65
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rl1:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p9, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rl2:Landroid/widget/RelativeLayout;

    .line 67
    iput-object p10, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rl3:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p11, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->tvSubmit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActTougaoBinding;
    .locals 14

    const v0, 0x7f0a0157

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a01cb

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01cf

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 117
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d3

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a01d9

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0296

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0297

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0298

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0366

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 155
    new-instance p0, Lcom/mogu/tv/databinding/ActTougaoBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v13}, Lcom/mogu/tv/databinding/ActTougaoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object p0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActTougaoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActTougaoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActTougaoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActTougaoBinding;
    .locals 2

    const v0, 0x7f0d002f

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActTougaoBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActTougaoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActTougaoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActTougaoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
