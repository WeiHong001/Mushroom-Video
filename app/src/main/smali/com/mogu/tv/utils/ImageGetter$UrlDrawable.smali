.class Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mogu/tv/utils/ImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrlDrawable"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/mogu/tv/utils/ImageGetter;


# direct methods
.method private constructor <init>(Lcom/mogu/tv/utils/ImageGetter;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mogu/tv/utils/ImageGetter;Lcom/mogu/tv/utils/ImageGetter$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;-><init>(Lcom/mogu/tv/utils/ImageGetter;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 68
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->bitmap:Landroid/graphics/Bitmap;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
