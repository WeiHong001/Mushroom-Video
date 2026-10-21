.class public Lcom/luck/picture/lib/PictureExternalPreviewActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;,
        Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

.field private directory_path:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private left_back:Landroid/widget/ImageButton;

.field private loadDataThread:Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

.field private position:I

.field private rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

.field private tv_title:Landroid/widget/TextView;

.field private viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->images:Ljava/util/List;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->position:I

    .line 386
    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$4;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->images:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->tv_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->inflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->displayLongPic(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/permissions/RxPermissions;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    return-object p0
.end method

.method static synthetic access$402(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/permissions/RxPermissions;)Lcom/luck/picture/lib/permissions/RxPermissions;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->rxPermissions:Lcom/luck/picture/lib/permissions/RxPermissions;

    return-object p1
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->showDownLoadDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->loadDataThread:Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    return-object p0
.end method

.method static synthetic access$602(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->loadDataThread:Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->directory_path:Ljava/lang/String;

    return-object p0
.end method

.method private displayLongPic(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 4

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 278
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 279
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    const/16 v0, 0x64

    .line 280
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDuration(I)V

    const/4 v0, 0x2

    .line 281
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 282
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 283
    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->cachedBitmap(Landroid/graphics/Bitmap;)Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/widget/longimage/ImageViewState;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {p2, p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    return-void
.end method

.method private initViewPageAdapterData()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->tv_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->position:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->adapter:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    .line 94
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/PreviewViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    iget v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->position:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewViewPager;->setCurrentItem(I)V

    .line 96
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    new-instance v1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PreviewViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private showDownLoadDialog(Ljava/lang/String;)V
    .locals 7

    .line 290
    new-instance v6, Lcom/luck/picture/lib/dialog/CustomDialog;

    .line 291
    invoke-static {p0}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    .line 292
    invoke-static {p0}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v3, v0, 0x4

    sget v4, Lcom/luck/picture/lib/R$layout;->picture_wind_base_dialog_xml:I

    sget v5, Lcom/luck/picture/lib/R$style;->Theme_dialog:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/dialog/CustomDialog;-><init>(Landroid/content/Context;IIII)V

    .line 294
    sget v0, Lcom/luck/picture/lib/R$id;->btn_cancel:I

    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 295
    sget v1, Lcom/luck/picture/lib/R$id;->btn_commit:I

    invoke-virtual {v6, v1}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 296
    sget v2, Lcom/luck/picture/lib/R$id;->tv_title:I

    invoke-virtual {v6, v2}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 297
    sget v3, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {v6, v3}, Lcom/luck/picture/lib/dialog/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 298
    sget v4, Lcom/luck/picture/lib/R$string;->picture_prompt:I

    invoke-virtual {p0, v4}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    sget v2, Lcom/luck/picture/lib/R$string;->picture_prompt_content:I

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    new-instance v2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$2;

    invoke-direct {v2, p0, v6}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$2;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/dialog/CustomDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;

    invoke-direct {v0, p0, p1, v6}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$3;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;Lcom/luck/picture/lib/dialog/CustomDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {v6}, Lcom/luck/picture/lib/dialog/CustomDialog;->show()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 402
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onBackPressed()V

    .line 403
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->finish()V

    .line 404
    sget v0, Lcom/luck/picture/lib/R$anim;->a3:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->finish()V

    .line 116
    sget p1, Lcom/luck/picture/lib/R$anim;->a3:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_activity_external_preview:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->setContentView(I)V

    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->inflater:Landroid/view/LayoutInflater;

    .line 81
    sget p1, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->tv_title:Landroid/widget/TextView;

    .line 82
    sget p1, Lcom/luck/picture/lib/R$id;->left_back:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->left_back:Landroid/widget/ImageButton;

    .line 83
    sget p1, Lcom/luck/picture/lib/R$id;->preview_pager:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/widget/PreviewViewPager;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->viewPager:Lcom/luck/picture/lib/widget/PreviewViewPager;

    .line 84
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->position:I

    .line 85
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "directory_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->directory_path:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "previewSelectList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->images:Ljava/util/List;

    .line 87
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->left_back:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->initViewPageAdapterData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 409
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->loadDataThread:Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    if-eqz v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->loadDataThread:Lcom/luck/picture/lib/PictureExternalPreviewActivity$loadDataThread;

    :cond_0
    return-void
.end method

.method public showLoadingImage(Ljava/lang/String;)V
    .locals 11

    .line 357
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 358
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->directory_path:Ljava/lang/String;

    .line 358
    invoke-static {p0, p1, v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 365
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 366
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 368
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_0

    .line 369
    invoke-virtual {v0, v1, v5, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v6, v7

    int-to-long v7, v6

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    div-long/2addr v7, v9

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 374
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 375
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc8

    .line 376
    iput v1, v0, Landroid/os/Message;->what:I

    .line 377
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 380
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/luck/picture/lib/R$string;->picture_save_error:I

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/ToastManage;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
