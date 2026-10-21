.class public Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PictureExternalPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleFragmentAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$000(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    .line 138
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$200(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_image_preview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v1, Lcom/luck/picture/lib/R$id;->preview_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/photoview/PhotoView;

    .line 142
    sget v3, Lcom/luck/picture/lib/R$id;->longImg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    .line 144
    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v3}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$000(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz p2, :cond_7

    .line 146
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPictureType()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v11, v4

    .line 157
    invoke-static {v11}, Lcom/luck/picture/lib/config/PictureMimeType;->isHttp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    iget-object v4, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {v4}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->showPleaseDialog()V

    .line 162
    :cond_3
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isGif(Ljava/lang/String;)Z

    move-result v3

    .line 163
    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isLongImg(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v7

    const/16 v4, 0x8

    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    const/16 v5, 0x8

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 164
    :goto_2
    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/photoview/PhotoView;->setVisibility(I)V

    if-eqz v7, :cond_5

    if-nez v3, :cond_5

    const/4 v4, 0x0

    .line 165
    :cond_5
    invoke-virtual {v10, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setVisibility(I)V

    if-eqz v3, :cond_6

    .line 167
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 168
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/16 v3, 0x1e0

    const/16 v4, 0x320

    .line 169
    invoke-virtual {p2, v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 170
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 171
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 172
    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 174
    invoke-virtual {v3, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 175
    invoke-virtual {p2, v11}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v3, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$1;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$1;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V

    .line 176
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 192
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    .line 194
    :cond_6
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 195
    invoke-virtual {p2, v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 196
    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v11}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    .line 199
    invoke-virtual {v3, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v12, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$2;

    const/16 v5, 0x1e0

    const/16 v6, 0x320

    move-object v3, v12

    move-object v4, p0

    move-object v8, v10

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$2;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;IIZLcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/photoview/PhotoView;)V

    .line 200
    invoke-virtual {p2, v12}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 218
    :goto_3
    new-instance p2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$3;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$3;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V

    invoke-virtual {v1, p2}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnViewTapListener(Lcom/luck/picture/lib/photoview/OnViewTapListener;)V

    .line 225
    new-instance p2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$4;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$4;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;)V

    invoke-virtual {v10, p2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance p2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;

    invoke-direct {p2, p0, v11}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter$5;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/luck/picture/lib/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 265
    :cond_7
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
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
