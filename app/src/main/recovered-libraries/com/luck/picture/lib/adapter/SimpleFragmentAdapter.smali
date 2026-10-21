.class public Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SimpleFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;
    }
.end annotation


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onBackPressed:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->images:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->onBackPressed:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->displayLongPic(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->onBackPressed:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private displayLongPic(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 4

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 175
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 176
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    const/16 v0, 0x64

    .line 177
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDuration(I)V

    const/4 v0, 0x2

    .line 178
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 179
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 180
    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->cachedBitmap(Landroid/graphics/Bitmap;)Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/widget/longimage/ImageViewState;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {p2, p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->images:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_image_preview:I

    const/4 v9, 0x0

    .line 80
    invoke-virtual {v0, v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 82
    sget v0, Lcom/luck/picture/lib/R$id;->preview_image:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/luck/picture/lib/photoview/PhotoView;

    .line 84
    sget v0, Lcom/luck/picture/lib/R$id;->longImg:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    .line 86
    sget v0, Lcom/luck/picture/lib/R$id;->iv_play:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    .line 87
    iget-object v0, v7, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;->images:Ljava/util/List;

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 91
    :goto_0
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 96
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v14, v2

    .line 102
    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isGif(Ljava/lang/String;)Z

    move-result v1

    .line 103
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isLongImg(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    const/16 v2, 0x8

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 104
    :goto_3
    invoke-virtual {v11, v2}, Lcom/luck/picture/lib/photoview/PhotoView;->setVisibility(I)V

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    const/4 v3, 0x0

    .line 105
    :cond_5
    invoke-virtual {v12, v3}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setVisibility(I)V

    if-eqz v1, :cond_6

    .line 107
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 108
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 110
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 111
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 112
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v14}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v11}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    .line 118
    :cond_6
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 119
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 120
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v14}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v15

    new-instance v6, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$1;

    const/16 v2, 0x1e0

    const/16 v3, 0x320

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v9, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$1;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;IIZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/photoview/PhotoView;)V

    .line 124
    invoke-virtual {v15, v9}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 135
    :goto_4
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$2;

    invoke-direct {v0, v7}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$2;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)V

    invoke-virtual {v11, v0}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    .line 143
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$3;

    invoke-direct {v0, v7}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$3;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;)V

    invoke-virtual {v12, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;

    invoke-direct {v0, v7, v14}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$4;-><init>(Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/4 v0, 0x0

    .line 163
    invoke-virtual {v8, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v10
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
