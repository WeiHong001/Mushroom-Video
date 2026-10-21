.class public final Lcom/mogu/tv/databinding/ActApplockBinding;
.super Ljava/lang/Object;
.source "ActApplockBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

.field public final llHead:Landroid/widget/LinearLayout;

.field public final llLock:Landroid/widget/LinearLayout;

.field public final patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvClear:Landroid/widget/TextView;

.field public final tvLockTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/ihsg/patternlocker/PatternLockerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->headLayout:Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    .line 48
    iput-object p3, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->llHead:Landroid/widget/LinearLayout;

    .line 49
    iput-object p4, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->llLock:Landroid/widget/LinearLayout;

    .line 50
    iput-object p5, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->patternLockerView:Lcom/github/ihsg/patternlocker/PatternLockerView;

    .line 51
    iput-object p6, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvClear:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->tvLockTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActApplockBinding;
    .locals 10

    const v0, 0x7f0a0157

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v1}, Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;->bind(Landroid/view/View;)Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;

    move-result-object v4

    .line 89
    move-object v5, p0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d7

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a026b

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/github/ihsg/patternlocker/PatternLockerView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a034c

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a035a

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 115
    new-instance p0, Lcom/mogu/tv/databinding/ActApplockBinding;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lcom/mogu/tv/databinding/ActApplockBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kotlin/basiclib/databinding/HeaderLayoutBinding;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/github/ihsg/patternlocker/PatternLockerView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/ActApplockBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/ActApplockBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActApplockBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/ActApplockBinding;
    .locals 2

    const v0, 0x7f0d001c

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/ActApplockBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/ActApplockBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/ActApplockBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mogu/tv/databinding/ActApplockBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
