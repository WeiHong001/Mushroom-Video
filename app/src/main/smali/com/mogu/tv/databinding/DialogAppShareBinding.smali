.class public final Lcom/mogu/tv/databinding/DialogAppShareBinding;
.super Ljava/lang/Object;
.source "DialogAppShareBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final llCopyLink:Landroid/widget/LinearLayout;

.field public final llQq:Landroid/widget/LinearLayout;

.field public final llQqzone:Landroid/widget/LinearLayout;

.field public final llQrCode:Landroid/widget/LinearLayout;

.field public final llReport:Landroid/widget/LinearLayout;

.field public final llSaveImage:Landroid/widget/LinearLayout;

.field public final llShareMore:Landroid/widget/LinearLayout;

.field public final llSina:Landroid/widget/LinearLayout;

.field public final llWechat:Landroid/widget/LinearLayout;

.field public final llWechatCircle:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvCancel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->rootView:Landroid/widget/LinearLayout;

    .line 62
    iput-object p2, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llCopyLink:Landroid/widget/LinearLayout;

    .line 63
    iput-object p3, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llQq:Landroid/widget/LinearLayout;

    .line 64
    iput-object p4, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llQqzone:Landroid/widget/LinearLayout;

    .line 65
    iput-object p5, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llQrCode:Landroid/widget/LinearLayout;

    .line 66
    iput-object p6, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llReport:Landroid/widget/LinearLayout;

    .line 67
    iput-object p7, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llSaveImage:Landroid/widget/LinearLayout;

    .line 68
    iput-object p8, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llShareMore:Landroid/widget/LinearLayout;

    .line 69
    iput-object p9, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llSina:Landroid/widget/LinearLayout;

    .line 70
    iput-object p10, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llWechat:Landroid/widget/LinearLayout;

    .line 71
    iput-object p11, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->llWechatCircle:Landroid/widget/LinearLayout;

    .line 72
    iput-object p12, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->tvCancel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/DialogAppShareBinding;
    .locals 15

    const v0, 0x7f0a01eb

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01f4

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a01f5

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01f6

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a01f7

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a01f9

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a01fd

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a01fe

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0202

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0203

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v0, 0x7f0a0372

    .line 163
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 168
    new-instance v0, Lcom/mogu/tv/databinding/DialogAppShareBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/mogu/tv/databinding/DialogAppShareBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/DialogAppShareBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/DialogAppShareBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/DialogAppShareBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/DialogAppShareBinding;
    .locals 2

    const v0, 0x7f0d004c

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/DialogAppShareBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/DialogAppShareBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/DialogAppShareBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mogu/tv/databinding/DialogAppShareBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
