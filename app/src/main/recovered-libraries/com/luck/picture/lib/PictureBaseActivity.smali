.class public Lcom/luck/picture/lib/PictureBaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PictureBaseActivity.java"


# instance fields
.field protected cameraPath:Ljava/lang/String;

.field protected colorPrimary:I

.field protected colorPrimaryDark:I

.field protected compressDialog:Lcom/luck/picture/lib/dialog/PictureDialog;

.field protected config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field protected dialog:Lcom/luck/picture/lib/dialog/PictureDialog;

.field protected mContext:Landroid/content/Context;

.field protected numComplete:Z

.field protected openWhiteStatusBar:Z

.field protected originalPath:Ljava/lang/String;

.field protected outputCameraPath:Ljava/lang/String;

.field protected selectionMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->numComplete:Z

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureBaseActivity;->handleCompressCallBack(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private handleCompressCallBack(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 266
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 269
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHttp(Ljava/lang/String;)Z

    move-result v5

    .line 270
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    xor-int/lit8 v6, v5, 0x1

    .line 271
    invoke-virtual {v4, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    if-eqz v5, :cond_1

    const-string v3, ""

    .line 272
    :cond_1
    invoke-virtual {v4, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_2
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object p2

    new-instance v0, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v1, 0xad2

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/rxbus2/RxBus;->post(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    return-void
.end method

.method private initConfig()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outputCameraPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->outputCameraPath:Ljava/lang/String;

    .line 106
    sget v0, Lcom/luck/picture/lib/R$attr;->picture_statusFontColor:I

    .line 107
    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueBoolean(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    .line 109
    sget v0, Lcom/luck/picture/lib/R$attr;->picture_style_numComplete:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueBoolean(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->numComplete:Z

    .line 112
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_style_checkNumMode:I

    .line 113
    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueBoolean(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    .line 115
    sget v0, Lcom/luck/picture/lib/R$attr;->colorPrimary:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    .line 117
    sget v0, Lcom/luck/picture/lib/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    .line 119
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method protected closeActivity()V
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->finish()V

    .line 448
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 449
    sget v0, Lcom/luck/picture/lib/R$anim;->fade_out:I

    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 451
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$anim;->a3:I

    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected compressImage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->showCompressDialog()V

    .line 208
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 210
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureBaseActivity$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureBaseActivity$2;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;)V

    .line 211
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 224
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureBaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$1;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    .line 225
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/luck/picture/lib/compress/Luban;->with(Landroid/content/Context;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->loadLocalMedia(Ljava/util/List;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    .line 234
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->ignoreBy(I)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setTargetDir(Ljava/lang/String;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureBaseActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$3;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setCompressListener(Lcom/luck/picture/lib/compress/OnCompressListener;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->launch()V

    :goto_0
    return-void
.end method

.method protected createNewFolder(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 390
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    goto :goto_0

    .line 394
    :cond_0
    sget v1, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    const-string v1, ""

    .line 396
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setPath(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 398
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected dismissCompressDialog()V
    .locals 1

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->compressDialog:Lcom/luck/picture/lib/dialog/PictureDialog;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->compressDialog:Lcom/luck/picture/lib/dialog/PictureDialog;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected dismissDialog()V
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->dialog:Lcom/luck/picture/lib/dialog/PictureDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->dialog:Lcom/luck/picture/lib/dialog/PictureDialog;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected getAudioFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 557
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 558
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    .line 559
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 560
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 562
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method protected getAudioPath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 528
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 529
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->mimeType:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 531
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 536
    :cond_1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->getAudioFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 541
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method protected getImageFolder(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 413
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 414
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 418
    :cond_1
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setPath(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 422
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getLastImageId(Z)I
    .locals 7

    const-string v3, "_data like ?"

    const/4 v6, -0x1

    .line 471
    :try_start_0
    invoke-static {}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getDCIMCameraPath()Ljava/lang/String;

    move-result-object v0

    const-string v5, "_id DESC"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 477
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 481
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    const-string v1, "_id"

    if-eqz p1, :cond_1

    .line 483
    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 484
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 482
    :goto_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz p1, :cond_2

    const-string p1, "duration"

    .line 486
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_2
    const-string p1, "date_added"

    .line 487
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 485
    :goto_2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 488
    invoke-static {v2, v3}, Lcom/luck/picture/lib/tools/DateUtils;->dateDiffer(J)I

    move-result p1

    .line 489
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_3

    move v6, v1

    :cond_3
    return v6

    :catch_0
    move-exception p1

    .line 496
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v6
.end method

.method protected handlerResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->compressImage(Ljava/util/List;)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public immersive()V
    .locals 3

    .line 75
    iget v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    iget v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    invoke-static {p0, v0, v1, v2}, Lcom/luck/picture/lib/immersive/ImmersiveManage;->immersiveAboveAPI23(Landroid/app/Activity;IIZ)V

    return-void
.end method

.method public isImmersive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "PictureSelectorConfig"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const-string v0, "CameraPath"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->cameraPath:Ljava/lang/String;

    const-string v0, "OriginalPath"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->originalPath:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    .line 91
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->setTheme(I)V

    .line 92
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->initConfig()V

    .line 95
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isImmersive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->immersive()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 457
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 458
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->dismissCompressDialog()V

    .line 459
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->dismissDialog()V

    return-void
.end method

.method protected onResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->dismissCompressDialog()V

    .line 433
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 436
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 438
    :cond_1
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->putIntentResult(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 439
    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->closeActivity()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->cameraPath:Ljava/lang/String;

    const-string v1, "CameraPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->originalPath:Ljava/lang/String;

    const-string v1, "OriginalPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const-string v1, "PictureSelectorConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected removeImage(IZ)V
    .locals 6

    const-string v0, "_id=?"

    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 510
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    int-to-long v4, p1

    .line 516
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 514
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 518
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected rotateImage(ILjava/io/File;)V
    .locals 2

    if-lez p1, :cond_0

    .line 358
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    .line 359
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 360
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 362
    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/PictureFileUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected showCompressDialog()V
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->dismissCompressDialog()V

    .line 182
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureDialog;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/dialog/PictureDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->compressDialog:Lcom/luck/picture/lib/dialog/PictureDialog;

    .line 183
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureDialog;->show()V

    :cond_0
    return-void
.end method

.method protected showPleaseDialog()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->dismissDialog()V

    .line 157
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureDialog;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/dialog/PictureDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->dialog:Lcom/luck/picture/lib/dialog/PictureDialog;

    .line 158
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureDialog;->show()V

    :cond_0
    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 136
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1

    .line 143
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0, p3}, Lcom/luck/picture/lib/PictureBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected startCrop(Ljava/lang/String;)V
    .locals 7

    .line 285
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 286
    sget v1, Lcom/luck/picture/lib/R$attr;->picture_crop_toolbar_bg:I

    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v1

    .line 287
    sget v2, Lcom/luck/picture/lib/R$attr;->picture_crop_status_color:I

    invoke-static {p0, v2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v2

    .line 288
    sget v3, Lcom/luck/picture/lib/R$attr;->picture_crop_title_color:I

    invoke-static {p0, v3}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v3

    .line 289
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 290
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCrop$Options;->setStatusBarColor(I)V

    .line 291
    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarWidgetColor(I)V

    .line 292
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCircleDimmedLayer(Z)V

    .line 293
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setShowCropFrame(Z)V

    .line 294
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setShowCropGrid(Z)V

    .line 295
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setDragFrameEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setScaleEnabled(Z)V

    .line 297
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setRotateEnabled(Z)V

    .line 298
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setCompressionQuality(I)V

    .line 299
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->hideBottomControls:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setHideBottomControls(Z)V

    .line 300
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCrop$Options;->setFreeStyleCropEnabled(Z)V

    .line 301
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHttp(Ljava/lang/String;)Z

    move-result v1

    .line 302
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->getLastImgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 304
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    int-to-float v2, v2

    .line 306
    invoke-virtual {p1, v1, v2}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    .line 307
    invoke-virtual {p1, v1, v2}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 308
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p1

    .line 309
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    return-void
.end method

.method protected startCrop(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/yalantis/ucrop/UCropMulti$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCropMulti$Options;-><init>()V

    .line 319
    sget v1, Lcom/luck/picture/lib/R$attr;->picture_crop_toolbar_bg:I

    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v1

    .line 320
    sget v2, Lcom/luck/picture/lib/R$attr;->picture_crop_status_color:I

    invoke-static {p0, v2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v2

    .line 321
    sget v3, Lcom/luck/picture/lib/R$attr;->picture_crop_title_color:I

    invoke-static {p0, v3}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v3

    .line 322
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setToolbarColor(I)V

    .line 323
    invoke-virtual {v0, v2}, Lcom/yalantis/ucrop/UCropMulti$Options;->setStatusBarColor(I)V

    .line 324
    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCropMulti$Options;->setToolbarWidgetColor(I)V

    .line 325
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setCircleDimmedLayer(Z)V

    .line 326
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setShowCropFrame(Z)V

    .line 327
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setDragFrameEnabled(Z)V

    .line 328
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setShowCropGrid(Z)V

    .line 329
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setScaleEnabled(Z)V

    .line 330
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setRotateEnabled(Z)V

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setHideBottomControls(Z)V

    .line 332
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setCompressionQuality(I)V

    .line 333
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setCutListData(Ljava/util/ArrayList;)V

    .line 334
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/UCropMulti$Options;->setFreeStyleCropEnabled(Z)V

    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 336
    :goto_0
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHttp(Ljava/lang/String;)Z

    move-result v1

    .line 337
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->getLastImgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 338
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 339
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yalantis/ucrop/UCropMulti;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCropMulti;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    int-to-float v2, v2

    .line 341
    invoke-virtual {p1, v1, v2}, Lcom/yalantis/ucrop/UCropMulti;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCropMulti;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    .line 342
    invoke-virtual {p1, v1, v2}, Lcom/yalantis/ucrop/UCropMulti;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCropMulti;

    move-result-object p1

    .line 343
    invoke-virtual {p1, v0}, Lcom/yalantis/ucrop/UCropMulti;->withOptions(Lcom/yalantis/ucrop/UCropMulti$Options;)Lcom/yalantis/ucrop/UCropMulti;

    move-result-object p1

    .line 344
    invoke-virtual {p1, p0}, Lcom/yalantis/ucrop/UCropMulti;->start(Landroid/app/Activity;)V

    return-void
.end method
