.class public Lcom/luck/picture/lib/PictureSelectionModel;
.super Ljava/lang/Object;
.source "PictureSelectionModel.java"


# instance fields
.field private selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field private selector:Lcom/luck/picture/lib/PictureSelector;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureSelector;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    .line 37
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getCleanInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 38
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    return-void
.end method

.method public constructor <init>(Lcom/luck/picture/lib/PictureSelector;IZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    .line 43
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getCleanInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 44
    iput-boolean p3, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    .line 45
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    return-void
.end method


# virtual methods
.method public circleDimmedLayer(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    return-object p0
.end method

.method public compress(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    return-object p0
.end method

.method public compressSavePath(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public cropCompressQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    return-object p0
.end method

.method public cropWH(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    .line 203
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    return-object p0
.end method

.method public enableCrop(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    return-object p0
.end method

.method public enablePreviewAudio(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreviewAudio:Z

    return-object p0
.end method

.method public forResult(I)V
    .locals 3

    .line 409
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v2}, Lcom/luck/picture/lib/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    :goto_0
    sget p1, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public freeStyleCropEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    return-object p0
.end method

.method public glideOverride(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideWidth:I

    .line 243
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideHeight:I

    return-object p0
.end method

.method public hideBottomControls(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->hideBottomControls:Z

    return-object p0
.end method

.method public imageFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    return-object p0
.end method

.method public imageSpanCount(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    return-object p0
.end method

.method public isCamera(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    return-object p0
.end method

.method public isDragFrame(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    return-object p0
.end method

.method public isGif(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    return-object p0
.end method

.method public isZoomAnim(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->zoomAnim:Z

    return-object p0
.end method

.method public maxSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    return-object p0
.end method

.method public minSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    return-object p0
.end method

.method public minimumCompressSize(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    return-object p0
.end method

.method public openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    return-object p0
.end method

.method public openExternalPreview(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    const-string v1, "This PictureSelector is Null"

    .line 465
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v0, p1, p2, p3}, Lcom/luck/picture/lib/PictureSelector;->externalPicturePreview(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public openExternalPreview(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    const-string v1, "This PictureSelector is Null"

    .line 451
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    invoke-virtual {v0, p1, p2}, Lcom/luck/picture/lib/PictureSelector;->externalPicturePreview(ILjava/util/List;)V

    return-void
.end method

.method public previewEggs(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    return-object p0
.end method

.method public previewImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    return-object p0
.end method

.method public previewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    return-object p0
.end method

.method public recordVideoSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    return-object p0
.end method

.method public rotateEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    return-object p0
.end method

.method public scaleEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    return-object p0
.end method

.method public selectionMedia(Ljava/util/List;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/PictureSelectionModel;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 397
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    return-object p0
.end method

.method public selectionMode(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    return-object p0
.end method

.method public setOutputCameraPath(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outputCameraPath:Ljava/lang/String;

    return-object p0
.end method

.method public showCropFrame(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    return-object p0
.end method

.method public showCropGrid(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    return-object p0
.end method

.method public sizeMultiplier(F)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->sizeMultiplier:F

    return-object p0
.end method

.method public synOrAsy(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    return-object p0
.end method

.method public theme(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    return-object p0
.end method

.method public toSelect()V
    .locals 3

    .line 426
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v2}, Lcom/luck/picture/lib/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 434
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 438
    :goto_0
    sget v1, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public videoMaxSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    return-object p0
.end method

.method public videoMinSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    return-object p0
.end method

.method public videoQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoQuality:I

    return-object p0
.end method

.method public withAspectRatio(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    .line 155
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    return-object p0
.end method
