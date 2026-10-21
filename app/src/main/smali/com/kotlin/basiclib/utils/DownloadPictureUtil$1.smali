.class Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;
.super Lcom/kotlin/basiclib/utils/FileTarget;
.source "DownloadPictureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kotlin/basiclib/utils/DownloadPictureUtil;->downloadPicture(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kotlin/basiclib/utils/FileTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/utils/FileTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 79
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v0, "\u4fdd\u5b58\u5931\u8d25..."

    invoke-virtual {p1, v0}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/utils/FileTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 72
    sget-object v0, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Lcom/kotlin/basiclib/utils/FileTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "."

    .line 84
    invoke-super {p0, p1, p2}, Lcom/kotlin/basiclib/utils/FileTarget;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mogu"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_0
    invoke-static {v1}, Lcom/kotlin/basiclib/utils/MD5EncryptNf;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kotlin/basiclib/utils/DownloadPictureUtil;->getImageTypeWithMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kotlin/basiclib/utils/FileUtils;->createFileByDeleteOldFile(Ljava/lang/String;)Z

    .line 101
    invoke-static {p1, p2, v0}, Lcom/kotlin/basiclib/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo v1, "\u6210\u529f\u4fdd\u5b58\u5230 "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    .line 104
    new-instance p1, Lcom/kotlin/basiclib/utils/SingleMediaScanner;

    iget-object v1, p0, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1$1;

    invoke-direct {v0, p0}, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1$1;-><init>(Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;)V

    invoke-direct {p1, v1, p2, v0}, Lcom/kotlin/basiclib/utils/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kotlin/basiclib/utils/SingleMediaScanner$ScanListener;)V

    goto :goto_1

    .line 111
    :cond_1
    sget-object p1, Lcom/kotlin/basiclib/utils/ToastUtil;->INSTANCE:Lcom/kotlin/basiclib/utils/ToastUtil;

    const-string/jumbo p2, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/kotlin/basiclib/utils/ToastUtil;->toast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 68
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/kotlin/basiclib/utils/DownloadPictureUtil$1;->onResourceReady(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
