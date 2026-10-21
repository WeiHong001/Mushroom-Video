.class public Lcom/mogu/tv/utils/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequests;
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->applyDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequests;

    return-object p1
.end method

.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->as(Ljava/lang/Class;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "TResourceType;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/mogu/tv/utils/GlideRequest;

    iget-object v1, p0, Lcom/mogu/tv/utils/GlideRequests;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/mogu/tv/utils/GlideRequests;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/mogu/tv/utils/GlideRequest;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/utils/GlideRequests;->asBitmap()Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asBitmap()Lcom/mogu/tv/utils/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/utils/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/utils/GlideRequests;->asDrawable()Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lcom/mogu/tv/utils/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/utils/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asFile()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/utils/GlideRequests;->asFile()Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lcom/mogu/tv/utils/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/utils/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic asGif()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/utils/GlideRequests;->asGif()Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lcom/mogu/tv/utils/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/utils/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->download(Ljava/lang/Object;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/Object;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic downloadOnly()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/mogu/tv/utils/GlideRequests;->downloadOnly()Lcom/mogu/tv/utils/GlideRequest;

    move-result-object v0

    return-object v0
.end method

.method public downloadOnly()Lcom/mogu/tv/utils/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/mogu/tv/utils/GlideRequest;

    return-object v0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/net/Uri;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/io/File;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/Integer;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/Object;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/net/URL;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load([B)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public load([B)Lcom/mogu/tv/utils/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/mogu/tv/utils/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequest;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/graphics/Bitmap;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/graphics/drawable/Drawable;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Landroid/net/Uri;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/io/File;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/Integer;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/Object;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/lang/String;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load(Ljava/net/URL;)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->load([B)Lcom/mogu/tv/utils/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/mogu/tv/utils/GlideRequests;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequests;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideRequests;
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    check-cast p1, Lcom/mogu/tv/utils/GlideRequests;

    return-object p1
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 1

    .line 165
    instance-of v0, p1, Lcom/mogu/tv/utils/GlideOptions;

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/mogu/tv/utils/GlideOptions;

    invoke-direct {v0}, Lcom/mogu/tv/utils/GlideOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mogu/tv/utils/GlideOptions;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/mogu/tv/utils/GlideOptions;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    :goto_0
    return-void
.end method
