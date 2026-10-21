.class public final Lcom/mogu/tv/databinding/ActShangwuBinding;
.super Ljava/lang/Object;
.source "ActShangwuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final rl1:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvNumber:Landroid/widget/TextView;

.field public final tvSubmit:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->rootView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 44
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->llHead:Landroid/widget/LinearLayout;

    .line 45
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->rl1:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->tvNumber:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->tvSubmit:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActShangwuBinding;
    .locals 9

    const v0, 0x7f0a0157

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    .line 84
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0296

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0360

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0366

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 104
    new-instance p0, Lcom/mogu/tv/databinding/ActShangwuBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v8}, Lcom/mogu/tv/databinding/ActShangwuBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActShangwuBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActShangwuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActShangwuBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActShangwuBinding;
    .locals 2

    const v0, 0x7f0d002b

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActShangwuBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActShangwuBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActShangwuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActShangwuBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
