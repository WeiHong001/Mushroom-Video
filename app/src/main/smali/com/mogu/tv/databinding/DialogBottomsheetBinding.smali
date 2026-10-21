.class public final Lcom/mogu/tv/databinding/DialogBottomsheetBinding;
.super Ljava/lang/Object;
.source "DialogBottomsheetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogBottomsheetIvClose:Landroid/widget/ImageView;

.field public final dialogBottomsheetRlTitle:Landroid/widget/RelativeLayout;

.field public final dialogBottomsheetRvLists:Landroidx/recyclerview/widget/RecyclerView;

.field public final llTop:Landroid/widget/LinearLayout;

.field public final rlComment:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvConfirm:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p2, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->dialogBottomsheetIvClose:Landroid/widget/ImageView;

    .line 49
    iput-object p3, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->dialogBottomsheetRlTitle:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p4, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->dialogBottomsheetRvLists:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iput-object p5, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->llTop:Landroid/widget/LinearLayout;

    .line 52
    iput-object p6, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->rlComment:Landroid/widget/RelativeLayout;

    .line 53
    iput-object p7, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->tvConfirm:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/DialogBottomsheetBinding;
    .locals 10

    const v0, 0x7f0a00ca

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00cb

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00cc

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01e4

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a029f

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0376

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 119
    new-instance v0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/DialogBottomsheetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/DialogBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/DialogBottomsheetBinding;
    .locals 2

    const v0, 0x7f0d004d

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/DialogBottomsheetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mogu/tv/databinding/DialogBottomsheetBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
