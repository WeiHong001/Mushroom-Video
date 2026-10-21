.class public final Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;
.super Ljava/lang/Object;
.source "ImageUtil.kt"

# interfaces
.implements Ltop/zibin/luban/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mogu/tv/utils/ImageUtil;->getImageResult(Ljava/util/List;Lcom/mogu/tv/utils/PhotoZipCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/mogu/tv/utils/ImageUtil$getImageResult$1",
        "Ltop/zibin/luban/OnCompressListener;",
        "onError",
        "",
        "e",
        "",
        "onStart",
        "onSuccess",
        "file",
        "Ljava/io/File;",
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
.field final synthetic $callBack:Lcom/mogu/tv/utils/PhotoZipCallBack;

.field final synthetic $image:Lcom/mogu/tv/model/UploadImage;


# direct methods
.method constructor <init>(Lcom/mogu/tv/model/UploadImage;Lcom/mogu/tv/utils/PhotoZipCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;->$image:Lcom/mogu/tv/model/UploadImage;

    iput-object p2, p0, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;->$callBack:Lcom/mogu/tv/utils/PhotoZipCallBack;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;->$image:Lcom/mogu/tv/model/UploadImage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mogu/tv/model/UploadImage;->setPath(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;->$callBack:Lcom/mogu/tv/utils/PhotoZipCallBack;

    iget-object v0, p0, Lcom/mogu/tv/utils/ImageUtil$getImageResult$1;->$image:Lcom/mogu/tv/model/UploadImage;

    invoke-interface {p1, v0}, Lcom/mogu/tv/utils/PhotoZipCallBack;->success(Lcom/mogu/tv/model/UploadImage;)V

    return-void
.end method
