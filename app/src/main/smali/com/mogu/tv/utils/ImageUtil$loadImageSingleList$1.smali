.class public final Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "ImageUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/ImageUtil;->loadImageSingleList(Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J&\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0012\u0008\u0001\u0010\u0006\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/mogu/tv/utils/ImageUtil$loadImageSingleList$1",
        "Lcom/bumptech/glide/request/target/SimpleTarget;",
        "Landroid/graphics/drawable/Drawable;",
        "onResourceReady",
        "",
        "resource",
        "transition",
        "Lcom/bumptech/glide/request/transition/Transition;",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $imageUrl:Ljava/lang/String;

.field final synthetic $imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance p2, Lcom/mogu/tv/utils/WidthAndHeight;

    invoke-direct {p2}, Lcom/mogu/tv/utils/WidthAndHeight;-><init>()V

    .line 164
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 165
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/mogu/tv/utils/WidthAndHeight;->setH(I)V

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mogu/tv/utils/WidthAndHeight;->setW(I)V

    .line 169
    :cond_0
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    .line 172
    :cond_1
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getH()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getW()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 173
    iget-object v2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    iget-object v3, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getW()I

    move-result v3

    const-wide v4, 0x407f400000000000L    # 500.0

    const/16 v6, 0x1f4

    if-le v3, v6, :cond_2

    .line 177
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getW()I

    move-result v3

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v4, v7

    .line 178
    invoke-virtual {p2, v6}, Lcom/mogu/tv/utils/WidthAndHeight;->setW(I)V

    .line 179
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getH()I

    move-result v3

    int-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    double-to-int v3, v9

    invoke-virtual {p2, v3}, Lcom/mogu/tv/utils/WidthAndHeight;->setH(I)V

    .line 181
    :cond_2
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getH()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 182
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getH()I

    move-result v3

    int-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v7

    .line 183
    invoke-virtual {p2, v6}, Lcom/mogu/tv/utils/WidthAndHeight;->setH(I)V

    .line 184
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getW()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v3, v6

    invoke-virtual {p2, v3}, Lcom/mogu/tv/utils/WidthAndHeight;->setW(I)V

    .line 186
    :cond_3
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getW()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_4

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_4

    const/16 p1, 0xb4

    int-to-float p1, p1

    .line 187
    sget-object p2, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    invoke-virtual {p2}, Lcom/mogu/tv/utils/ImageUtil;->getScaleDenity()F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 p1, 0x2bc

    int-to-float p1, p1

    .line 188
    sget-object p2, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    invoke-virtual {p2}, Lcom/mogu/tv/utils/ImageUtil;->getScaleDenity()F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    iget-object p1, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object p1, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getW()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    invoke-virtual {v1}, Lcom/mogu/tv/utils/ImageUtil;->getScaleDenity()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 194
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    invoke-virtual {p2}, Lcom/mogu/tv/utils/WidthAndHeight;->getH()I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    invoke-virtual {v0}, Lcom/mogu/tv/utils/ImageUtil;->getScaleDenity()F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 197
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$context:Landroid/content/Context;

    invoke-static {p2}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/content/Context;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p2

    .line 199
    invoke-virtual {p2, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 161
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/utils/ImageUtil$loadImageSingleList$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
