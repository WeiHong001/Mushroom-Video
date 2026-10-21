.class Lcom/mogu/tv/utils/ImageGetter$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "ImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mogu/tv/utils/ImageGetter;

.field final synthetic val$drawable:Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;


# direct methods
.method constructor <init>(Lcom/mogu/tv/utils/ImageGetter;Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mogu/tv/utils/ImageGetter$1;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    iput-object p2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->val$drawable:Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    invoke-static {p2}, Lcom/mogu/tv/utils/ImageGetter;->access$100(Lcom/mogu/tv/utils/ImageGetter;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int p2, v2

    .line 50
    iget-object v2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->val$drawable:Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;

    invoke-virtual {v2, v1, v1, v0, p2}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->setBounds(IIII)V

    .line 51
    iget-object v1, p0, Lcom/mogu/tv/utils/ImageGetter$1;->val$drawable:Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;

    iget-object v2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    invoke-virtual {v2, p1, v0, p2}, Lcom/mogu/tv/utils/ImageGetter;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->val$drawable:Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v1, v0, v2}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->setBounds(IIII)V

    .line 54
    iget-object p2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->val$drawable:Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;

    invoke-virtual {p2, p1}, Lcom/mogu/tv/utils/ImageGetter$UrlDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/mogu/tv/utils/ImageGetter$1;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    invoke-static {p1}, Lcom/mogu/tv/utils/ImageGetter;->access$100(Lcom/mogu/tv/utils/ImageGetter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 57
    iget-object p1, p0, Lcom/mogu/tv/utils/ImageGetter$1;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    invoke-static {p1}, Lcom/mogu/tv/utils/ImageGetter;->access$100(Lcom/mogu/tv/utils/ImageGetter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/mogu/tv/utils/ImageGetter$1;->this$0:Lcom/mogu/tv/utils/ImageGetter;

    invoke-static {p2}, Lcom/mogu/tv/utils/ImageGetter;->access$100(Lcom/mogu/tv/utils/ImageGetter;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/mogu/tv/utils/ImageGetter$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
