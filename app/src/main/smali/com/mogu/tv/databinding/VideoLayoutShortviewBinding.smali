.class public final Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;
.super Ljava/lang/Object;
.source "VideoLayoutShortviewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final backTiny:Landroid/widget/ImageView;

.field public final bottomProgressbar:Landroid/widget/ProgressBar;

.field public final current:Landroid/widget/TextView;

.field public final fullscreen:Landroid/widget/ImageView;

.field public final layoutBottom:Landroid/widget/LinearLayout;

.field public final layoutTop:Landroid/widget/LinearLayout;

.field public final loading:Lcom/mogu/tv/view/DYLoadingView;

.field public final lockScreen:Landroid/widget/ImageView;

.field public final progress:Landroid/widget/SeekBar;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final smallClose:Landroid/widget/ImageView;

.field public final start:Landroid/widget/ImageView;

.field public final surfaceContainer:Landroid/widget/RelativeLayout;

.field public final thumb:Landroid/widget/RelativeLayout;

.field public final title:Landroid/widget/TextView;

.field public final total:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/mogu/tv/view/DYLoadingView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->back:Landroid/widget/ImageView;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->backTiny:Landroid/widget/ImageView;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->bottomProgressbar:Landroid/widget/ProgressBar;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->current:Landroid/widget/TextView;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->fullscreen:Landroid/widget/ImageView;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->layoutBottom:Landroid/widget/LinearLayout;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->layoutTop:Landroid/widget/LinearLayout;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->loading:Lcom/mogu/tv/view/DYLoadingView;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->lockScreen:Landroid/widget/ImageView;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->progress:Landroid/widget/SeekBar;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->smallClose:Landroid/widget/ImageView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->start:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->surfaceContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->thumb:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->title:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->total:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0a0072

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0073

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a007d

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_0

    const v1, 0x7f0a00b6

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a014c

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a01bc

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a01bf

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0207

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/mogu/tv/view/DYLoadingView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a020a

    .line 177
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0281

    .line 183
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/SeekBar;

    if-eqz v14, :cond_0

    const v1, 0x7f0a02e3

    .line 189
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a02fd

    .line 195
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a030b

    .line 201
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0336

    .line 207
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0338

    .line 213
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0341

    .line 219
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 224
    new-instance v1, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v20}, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/mogu/tv/view/DYLoadingView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 228
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-static {p0, v0, v1}, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;
    .locals 2

    const v0, 0x7f0d0125

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->bind(Landroid/view/View;)Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mogu/tv/databinding/VideoLayoutShortviewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
