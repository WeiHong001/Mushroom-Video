.class public final Lcom/mogu/tv/databinding/ItemHomegridBinding;
.super Ljava/lang/Object;
.source "ItemHomegridBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivPhoto:Landroid/widget/ImageView;

.field public final rlParent:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvName:Landroid/widget/TextView;

.field public final tvNumber:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 38
    iput-object p2, p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;->ivPhoto:Landroid/widget/ImageView;

    .line 39
    iput-object p3, p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;->rlParent:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p4, p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;->tvName:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;->tvNumber:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemHomegridBinding;
    .locals 8

    const v0, 0x7f0a019e

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 77
    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0395

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0397

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 91
    new-instance p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v7}, Lcom/mogu/tv/databinding/ItemHomegridBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ItemHomegridBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ItemHomegridBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemHomegridBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemHomegridBinding;
    .locals 2

    const v0, 0x7f0d0085

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ItemHomegridBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemHomegridBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ItemHomegridBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mogu/tv/databinding/ItemHomegridBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
