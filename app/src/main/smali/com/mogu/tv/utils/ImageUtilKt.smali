.class public final Lcom/mogu/tv/utils/ImageUtilKt;
.super Ljava/lang/Object;
.source "ImageUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0007\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0007\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "with",
        "",
        "Landroid/widget/ImageView;",
        "url",
        "Landroid/graphics/Bitmap;",
        "res",
        "",
        "",
        "withCenCropDeaultUser",
        "withDefaltUserPhoto",
        "withDefaultPhoto",
        "app_mogushareRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final with(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/view/View;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/Integer;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static final with(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/view/View;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static final with(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/view/View;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static final withCenCropDeaultUser(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/view/View;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    sget-object v0, Lcom/mogu/tv/utils/ImageUtil;->INSTANCE:Lcom/mogu/tv/utils/ImageUtil;

    invoke-virtual {v0}, Lcom/mogu/tv/utils/ImageUtil;->getOptionsCenterUserCropHavePlace()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mogu/tv/utils/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static final withDefaltUserPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    goto :goto_2

    .line 235
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/view/View;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    .line 236
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f0f0007

    .line 237
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/mogu/tv/utils/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p0}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    :goto_2
    return-void
.end method

.method public static final withDefaultPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/mogu/tv/utils/GlideApp;->with(Landroid/view/View;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mogu/tv/utils/GlideRequest;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mogu/tv/utils/GlideRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
