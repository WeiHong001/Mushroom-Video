.class public final Lcom/mogu/tv/databinding/ItemHistorylistBinding;
.super Ljava/lang/Object;
.source "ItemHistorylistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardV:Landroidx/cardview/widget/CardView;

.field public final ivDelete:Landroid/widget/ImageView;

.field public final ivDetails:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final tvActor:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->rootView:Landroid/widget/FrameLayout;

    .line 47
    iput-object p2, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->cardV:Landroidx/cardview/widget/CardView;

    .line 48
    iput-object p3, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->ivDelete:Landroid/widget/ImageView;

    .line 49
    iput-object p4, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->ivDetails:Landroidx/appcompat/widget/AppCompatImageView;

    .line 50
    iput-object p5, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->tvActor:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->tvName:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->tvTime:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemHistorylistBinding;
    .locals 10

    const v0, 0x7f0a0090

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a018e

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a018f

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a036f

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0395

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a03ab

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/mogu/tv/databinding/ItemHistorylistBinding;-><init>(Landroid/widget/FrameLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ItemHistorylistBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemHistorylistBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemHistorylistBinding;
    .locals 2

    const v0, 0x7f0d0084

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemHistorylistBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mogu/tv/databinding/ItemHistorylistBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
