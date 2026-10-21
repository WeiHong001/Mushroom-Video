.class public final Lcom/mogu/tv/databinding/ItemVideolistBinding;
.super Ljava/lang/Object;
.source "ItemVideolistBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cardV:Landroidx/cardview/widget/CardView;

.field public final ivVideolist:Landroid/widget/ImageView;

.field public final llBottom:Landroid/widget/LinearLayout;

.field public final rlBottom:Landroid/widget/RelativeLayout;

.field public final rlContent:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvActor:Landroid/widget/TextView;

.field public final tvCreateTime:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;

.field public final tvViews:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 58
    iput-object p2, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->cardV:Landroidx/cardview/widget/CardView;

    .line 59
    iput-object p3, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->ivVideolist:Landroid/widget/ImageView;

    .line 60
    iput-object p4, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->llBottom:Landroid/widget/LinearLayout;

    .line 61
    iput-object p5, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->rlBottom:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p6, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->rlContent:Landroid/widget/RelativeLayout;

    .line 63
    iput-object p7, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvActor:Landroid/widget/TextView;

    .line 64
    iput-object p8, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvCreateTime:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvName:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->tvViews:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemVideolistBinding;
    .locals 13

    const v0, 0x7f0a0090

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/cardview/widget/CardView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01b3

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01ca

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0299

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a02a0

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a036f

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0379

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0395

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03b5

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 150
    new-instance v0, Lcom/mogu/tv/databinding/ItemVideolistBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mogu/tv/databinding/ItemVideolistBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ItemVideolistBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ItemVideolistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemVideolistBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ItemVideolistBinding;
    .locals 2

    const v0, 0x7f0d0099

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ItemVideolistBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ItemVideolistBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ItemVideolistBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mogu/tv/databinding/ItemVideolistBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
