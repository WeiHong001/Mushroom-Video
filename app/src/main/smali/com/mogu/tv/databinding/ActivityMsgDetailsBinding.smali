.class public final Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;
.super Ljava/lang/Object;
.source "ActivityMsgDetailsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final llHead:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvContent:Landroid/widget/TextView;

.field public final tvTime:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvUser:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 50
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 51
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->ivPhoto:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 52
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->llHead:Landroid/widget/LinearLayout;

    .line 53
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvContent:Landroid/widget/TextView;

    .line 54
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvTime:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvTitle:Landroid/widget/TextView;

    .line 56
    iput-object p8, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->tvUser:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;
    .locals 11

    const v0, 0x7f0a0157

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    const v0, 0x7f0a019e

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v5, :cond_0

    .line 99
    move-object v6, p0

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f0a034f

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0367

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0368

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0369

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 125
    new-instance p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;

    move-object v2, p0

    move-object v3, v6

    invoke-direct/range {v2 .. v10}, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;
    .locals 2

    const v0, 0x7f0d0036

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActivityMsgDetailsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
