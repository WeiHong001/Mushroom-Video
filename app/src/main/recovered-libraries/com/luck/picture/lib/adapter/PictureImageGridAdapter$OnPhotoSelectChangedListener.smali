.class public interface abstract Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;
.super Ljava/lang/Object;
.source "PictureImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPhotoSelectChangedListener"
.end annotation


# virtual methods
.method public abstract onChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPictureClick(Lcom/luck/picture/lib/entity/LocalMedia;I)V
.end method

.method public abstract onTakePhoto()V
.end method
