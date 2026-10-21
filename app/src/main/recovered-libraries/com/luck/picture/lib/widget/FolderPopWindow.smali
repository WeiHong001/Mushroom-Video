.class public Lcom/luck/picture/lib/widget/FolderPopWindow;
.super Landroid/widget/PopupWindow;
.source "FolderPopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

.field private animationIn:Landroid/view/animation/Animation;

.field private animationOut:Landroid/view/animation/Animation;

.field private context:Landroid/content/Context;

.field private drawableDown:Landroid/graphics/drawable/Drawable;

.field private drawableUp:Landroid/graphics/drawable/Drawable;

.field private id_ll_root:Landroid/widget/LinearLayout;

.field private isDismiss:Z

.field private mimeType:I

.field private picture_title:Landroid/widget/TextView;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private window:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->isDismiss:Z

    .line 53
    iput-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->context:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->mimeType:I

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_window_folder:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->window:Landroid/view/View;

    .line 56
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-static {p1}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setWidth(I)V

    .line 58
    invoke-static {p1}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setHeight(I)V

    .line 59
    sget p2, Lcom/luck/picture/lib/R$style;->WindowStyle:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setAnimationStyle(I)V

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setFocusable(Z)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setOutsideTouchable(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->update()V

    .line 63
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0x7b

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget p2, Lcom/luck/picture/lib/R$attr;->picture_arrow_up_icon:I

    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValuePopWindowImg(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->drawableUp:Landroid/graphics/drawable/Drawable;

    .line 65
    sget p2, Lcom/luck/picture/lib/R$attr;->picture_arrow_down_icon:I

    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValuePopWindowImg(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->drawableDown:Landroid/graphics/drawable/Drawable;

    .line 66
    sget p2, Lcom/luck/picture/lib/R$anim;->photo_album_show:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->animationIn:Landroid/view/animation/Animation;

    .line 67
    sget p2, Lcom/luck/picture/lib/R$anim;->photo_album_dismiss:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->animationOut:Landroid/view/animation/Animation;

    .line 68
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->initView()V

    return-void
.end method

.method static synthetic access$002(Lcom/luck/picture/lib/widget/FolderPopWindow;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->isDismiss:Z

    return p1
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/widget/FolderPopWindow;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss4Pop()V

    return-void
.end method

.method static synthetic access$201(Lcom/luck/picture/lib/widget/FolderPopWindow;)V
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$301(Lcom/luck/picture/lib/widget/FolderPopWindow;)V
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private dismiss4Pop()V
    .locals 2

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/luck/picture/lib/widget/FolderPopWindow$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/FolderPopWindow$2;-><init>(Lcom/luck/picture/lib/widget/FolderPopWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public bindFolder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    iget v1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->mimeType:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->setMimeType(I)V

    .line 85
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->bindFolderData(Ljava/util/List;)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 116
    iget-boolean v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->isDismiss:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->picture_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->drawableDown:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/StringUtils;->modifyTextViewDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->isDismiss:Z

    .line 121
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->animationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->animationOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/luck/picture/lib/widget/FolderPopWindow$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/widget/FolderPopWindow$1;-><init>(Lcom/luck/picture/lib/widget/FolderPopWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public initView()V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->window:Landroid/view/View;

    sget v1, Lcom/luck/picture/lib/R$id;->id_ll_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->id_ll_root:Landroid/widget/LinearLayout;

    .line 73
    new-instance v0, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    .line 74
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->window:Landroid/view/View;

    sget v1, Lcom/luck/picture/lib/R$id;->folder_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/luck/picture/lib/decoration/RecycleViewDivider;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->context:Landroid/content/Context;

    const/4 v3, 0x0

    .line 77
    invoke-static {v2, v3}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->context:Landroid/content/Context;

    sget v5, Lcom/luck/picture/lib/R$color;->transparent:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/luck/picture/lib/decoration/RecycleViewDivider;-><init>(Landroid/content/Context;III)V

    .line 76
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->id_ll_root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public notifyDataCheckedStatus(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->getFolderData()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 167
    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCheckedNum(I)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 172
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImages()Ljava/util/List;

    move-result-object v4

    .line 173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 174
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 176
    invoke-virtual {v8}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 178
    invoke-virtual {v2, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCheckedNum(I)V

    goto :goto_1

    .line 184
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->bindFolderData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 193
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_root:I

    if-ne p1, v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->adapter:Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter;->setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;)V

    return-void
.end method

.method public setPictureTitleView(Landroid/widget/TextView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->picture_title:Landroid/widget/TextView;

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2

    .line 95
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 99
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setHeight(I)V

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->isDismiss:Z

    .line 103
    iget-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->animationIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object p1, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->picture_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/FolderPopWindow;->drawableUp:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/tools/StringUtils;->modifyTextViewDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
