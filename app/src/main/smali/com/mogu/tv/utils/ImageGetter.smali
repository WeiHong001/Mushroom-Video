.class public Lcom/mogu/tv/utils/ImageGetter;
.super Ljava/lang/Object;
.source "ImageGetter.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mogu/tv/utils/ImageGetter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/mogu/tv/utils/ImageGetter;->textView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$100(Lcom/mogu/tv/utils/ImageGetter;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mogu/tv/utils/ImageGetter;->textView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 34
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/mogu/tv/utils/ImageGetter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/mogu/tv/utils/ImageGetter;->context:Landroid/content/Context;

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-static {v2, v3}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    .line 36
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 37
    new-instance v0, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;-><init>(Lcom/mogu/tv/utils/ImageGetter;Lcom/mogu/tv/utils/ImageGetter$1;)V

    .line 38
    iget-object v1, p0, Lcom/mogu/tv/utils/ImageGetter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/mogu/tv/utils/ImageGetter$1;

    invoke-direct {v1, p0, v0}, Lcom/mogu/tv/utils/ImageGetter$1;-><init>(Lcom/mogu/tv/utils/ImageGetter;Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;)V

    .line 41
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-object v0
.end method

.method public resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    int-to-float v0, v1

    div-float/2addr p3, v0

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 96
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 98
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageGetter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    iget-object p2, p0, Lcom/mogu/tv/utils/ImageGetter;->context:Landroid/content/Context;

    const/high16 p3, 0x42dc0000    # 110.0f

    .line 99
    invoke-static {p2, p3}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 98
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
