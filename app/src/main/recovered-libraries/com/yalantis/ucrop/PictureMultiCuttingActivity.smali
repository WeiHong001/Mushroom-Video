.class public Lcom/yalantis/ucrop/PictureMultiCuttingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PictureMultiCuttingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/PictureMultiCuttingActivity$GestureTypes;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x3

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final NONE:I = 0x0

.field public static final ROTATE:I = 0x2

.field private static final ROTATE_WIDGET_SENSITIVITY_COEFFICIENT:I = 0x2a

.field public static final SCALE:I = 0x1

.field private static final SCALE_WIDGET_SENSITIVITY_COEFFICIENT:I = 0x3a98

.field private static final TABS_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UCropActivity"


# instance fields
.field private adapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

.field private circleDimmedLayer:Z

.field private cutIndex:I

.field private cutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yalantis/ucrop/model/CutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isDragFrame:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveWidgetColor:I

.field private mAllowedGestures:[I

.field private mBlockingView:Landroid/view/View;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mCropAspectRatioViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field private mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

.field private mLayoutAspectRatio:Landroid/view/ViewGroup;

.field private mLayoutRotate:Landroid/view/ViewGroup;

.field private mLayoutScale:Landroid/view/ViewGroup;

.field private mLogoColor:I

.field private mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

.field private mRootViewBackgroundColor:I

.field private mShowBottomControls:Z

.field private mShowLoader:Z

.field private final mStateClickListener:Landroid/view/View$OnClickListener;

.field private mStatusBarColor:I

.field private mTextViewRotateAngle:Landroid/widget/TextView;

.field private mTextViewScalePercent:Landroid/widget/TextView;

.field private mToolbarCancelDrawable:I

.field private mToolbarColor:I

.field private mToolbarCropDrawable:I

.field private mToolbarTitle:Ljava/lang/String;

.field private mToolbarWidgetColor:I

.field private mUCropView:Lcom/yalantis/ucrop/view/UCropView;

.field private mWrapperStateAspectRatio:Landroid/view/ViewGroup;

.field private mWrapperStateRotate:Landroid/view/ViewGroup;

.field private mWrapperStateScale:Landroid/view/ViewGroup;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private rotateEnabled:Z

.field private scaleEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowLoader:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCropAspectRatioViews:Ljava/util/List;

    .line 114
    sget-object v0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    .line 115
    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCompressQuality:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 116
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAllowedGestures:[I

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    .line 411
    new-instance v0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    .line 608
    new-instance v0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$7;

    invoke-direct {v0, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$7;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;F)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setAngleText(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;F)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setScaleText(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/UCropView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowLoader:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCropAspectRatioViews:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetRotation()V

    return-void
.end method

.method static synthetic access$800(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->rotateByAngle(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setWidgetState(I)V

    return-void
.end method

.method private addBlockingView()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    .line 662
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 663
    sget v2, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 664
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 667
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_mulit_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static getLastImgType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ".png"

    :try_start_0
    const-string v1, "."

    .line 750
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 752
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    .line 753
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, ".webp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_1
    const-string v2, ".jpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, ".WEBP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, ".JPEG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string v2, ".jpg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, ".bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, ".PNG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, ".BMP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 771
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x15ea77 -> :sswitch_8
        0x161f1b -> :sswitch_7
        0x166697 -> :sswitch_6
        0x1684f3 -> :sswitch_5
        0x169b3b -> :sswitch_4
        0x2ab1196 -> :sswitch_3
        0x2b0d0ca -> :sswitch_2
        0x2ba1996 -> :sswitch_1
        0x2bfd8ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initData()V
    .locals 3

    .line 152
    sget v0, Lcom/yalantis/ucrop/R$id;->recyclerView:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 155
    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/model/CutInfo;

    .line 157
    invoke-virtual {v2, v1}, Lcom/yalantis/ucrop/model/CutInfo;->setCut(Z)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/model/CutInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/model/CutInfo;->setCut(Z)V

    .line 160
    new-instance v0, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->adapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    .line 161
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initiateRootViews()V
    .locals 2

    .line 401
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/UCropView;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    .line 402
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 403
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mUCropView:Lcom/yalantis/ucrop/view/UCropView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    .line 404
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mImageListener:Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTransformImageListener(Lcom/yalantis/ucrop/view/TransformImageView$TransformImageListener;)V

    return-void
.end method

.method private processOptions(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "com.yalantis.ucrop.CompressionFormatName"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 260
    sget-object v0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    const-string v1, "com.yalantis.ucrop.CompressionQuality"

    .line 262
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCompressQuality:I

    const-string v0, "com.yalantis.ucrop.AllowedGestures"

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 267
    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAllowedGestures:[I

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const-string v1, "com.yalantis.ucrop.MaxBitmapSize"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxBitmapSize(I)V

    .line 272
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/high16 v1, 0x41200000    # 10.0f

    const-string v3, "com.yalantis.ucrop.MaxScaleMultiplier"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxScaleMultiplier(F)V

    .line 273
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/16 v1, 0x1f4

    const-string v3, "com.yalantis.ucrop.ImageToCropBoundsAnimDuration"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 276
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    iget-boolean v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isDragFrame:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setDragFrame(Z)V

    .line 277
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.FreeStyleCrop"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setFreestyleCropEnabled(Z)V

    const-string v0, "com.yalantis.ucrop.CircleDimmedLayer"

    .line 278
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->circleDimmedLayer:Z

    .line 279
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_dimmed:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.DimmedLayerColor"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setDimmedColor(I)V

    .line 280
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    iget-boolean v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->circleDimmedLayer:Z

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCircleDimmedLayer(Z)V

    .line 282
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.ShowCropFrame"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropFrame(Z)V

    .line 283
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_frame:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v4, "com.yalantis.ucrop.CropFrameColor"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameColor(I)V

    .line 284
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_frame_stoke_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v4, "com.yalantis.ucrop.CropFrameStrokeWidth"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 286
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.ShowCropGrid"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setShowCropGrid(Z)V

    .line 287
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CropGridRowCount"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridRowCount(I)V

    .line 288
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    const-string v1, "com.yalantis.ucrop.CropGridColumnCount"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColumnCount(I)V

    .line 289
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_crop_grid:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridColor"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridColor(I)V

    .line 290
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mOverlayView:Lcom/yalantis/ucrop/view/OverlayView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yalantis/ucrop/R$dimen;->ucrop_default_crop_grid_stoke_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const-string v3, "com.yalantis.ucrop.CropGridStrokeWidth"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setCropGridStrokeWidth(I)V

    const-string v0, "com.yalantis.ucrop.AspectRatioX"

    const/4 v1, 0x0

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    const-string v3, "com.yalantis.ucrop.AspectRatioY"

    .line 294
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    const-string v4, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    .line 296
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.yalantis.ucrop.AspectRatioOptions"

    .line 297
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    cmpl-float v6, v0, v1

    if-lez v6, :cond_4

    cmpl-float v6, v3, v1

    if-lez v6, :cond_4

    .line 300
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    const/16 v4, 0x8

    .line 301
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 304
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v1}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioX()F

    move-result v1

    .line 306
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-virtual {v3}, Lcom/yalantis/ucrop/model/AspectRatio;->getAspectRatioY()F

    move-result v3

    div-float/2addr v1, v3

    .line 305
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_1

    .line 308
    :cond_5
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    :goto_1
    const-string v0, "com.yalantis.ucrop.MaxSizeX"

    .line 312
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.MaxSizeY"

    .line 313
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez v0, :cond_6

    if-lez p1, :cond_6

    .line 316
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v1, v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxResultImageSizeX(I)V

    .line 317
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setMaxResultImageSizeY(I)V

    :cond_6
    return-void
.end method

.method private resetRotation()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 600
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method private rotateByAngle(I)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->postRotate(F)V

    .line 605
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageToWrapCropBounds()V

    return-void
.end method

.method private setAllowedGestures(I)V
    .locals 0

    return-void
.end method

.method private setAngleText(F)V
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%.1f\u00b0"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setImageData(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.yalantis.ucrop.InputUri"

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "com.yalantis.ucrop.OutputUri"

    .line 224
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 225
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->processOptions(Landroid/content/Intent;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 229
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yalantis/ucrop/util/FileUtils;->isGif(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 232
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-boolean v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->rotateEnabled:Z

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 235
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-boolean v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->scaleEnabled:Z

    invoke-virtual {p1, v2}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setScaleEnabled(Z)V

    .line 237
    :goto_0
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1, v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 240
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->closeActivity()V

    goto :goto_1

    .line 243
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    sget v0, Lcom/yalantis/ucrop/R$string;->ucrop_error_input_data_is_absent:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResultError(Ljava/lang/Throwable;)V

    .line 244
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->closeActivity()V

    :goto_1
    return-void
.end method

.method private setInitialState()V
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowBottomControls:Z

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 620
    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setWidgetState(I)V

    goto :goto_0

    .line 622
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setWidgetState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 625
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setAllowedGestures(I)V

    :goto_0
    return-void
.end method

.method private setScaleText(F)V
    .locals 5

    .line 593
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 594
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%d%%"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 2

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 463
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method private setWidgetState(I)V
    .locals 5

    .line 630
    iget-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowBottomControls:Z

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 633
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 634
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 636
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    const/16 v4, 0x8

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLayoutRotate:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLayoutScale:Landroid/view/ViewGroup;

    sget v1, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v1, :cond_6

    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 640
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    if-ne p1, v0, :cond_7

    .line 641
    invoke-direct {p0, v3}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setAllowedGestures(I)V

    goto :goto_5

    .line 642
    :cond_7
    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    if-ne p1, v0, :cond_8

    .line 643
    invoke-direct {p0, v2}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setAllowedGestures(I)V

    goto :goto_5

    :cond_8
    const/4 p1, 0x2

    .line 645
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setAllowedGestures(I)V

    :goto_5
    return-void
.end method

.method private setupAppBar()V
    .locals 4

    .line 376
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStatusBarColor:I

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setStatusBarColor(I)V

    .line 378
    sget v0, Lcom/yalantis/ucrop/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 381
    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 382
    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 384
    sget v1, Lcom/yalantis/ucrop/R$id;->toolbar_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 385
    iget v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarCancelDrawable:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 390
    iget v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 391
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 394
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 396
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupAspectRatioWidget(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "com.yalantis.ucrop.AspectRatioSelectedByDefault"

    const/4 v1, 0x0

    .line 470
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.AspectRatioOptions"

    .line 471
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 473
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 476
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    invoke-direct {v4, v3, v2, v2}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {v4, v3, v6, v5}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    sget v5, Lcom/yalantis/ucrop/R$string;->ucrop_label_original:I

    invoke-virtual {p0, v5}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v7}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v3, v6, v5}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v4, Lcom/yalantis/ucrop/model/AspectRatio;

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41100000    # 9.0f

    invoke-direct {v4, v3, v5, v6}, Lcom/yalantis/ucrop/model/AspectRatio;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_1
    sget v4, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I

    invoke-virtual {p0, v4}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 489
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 490
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 491
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/model/AspectRatio;

    .line 492
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/yalantis/ucrop/R$layout;->ucrop_aspect_ratio:I

    invoke-virtual {v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 493
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;

    .line 495
    iget v8, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    invoke-virtual {v7, v8}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setActiveColor(I)V

    .line 496
    invoke-virtual {v7, v2}, Lcom/yalantis/ucrop/view/widget/AspectRatioTextView;->setAspectRatio(Lcom/yalantis/ucrop/model/AspectRatio;)V

    .line 498
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_2
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 504
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCropAspectRatioViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 505
    new-instance v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$2;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setupRotateWidget()V
    .locals 2

    .line 522
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mTextViewRotateAngle:Landroid/widget/TextView;

    .line 523
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$3;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    .line 524
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V

    .line 541
    sget v0, Lcom/yalantis/ucrop/R$id;->rotate_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    .line 544
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_reset_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$4;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$4;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    sget v0, Lcom/yalantis/ucrop/R$id;->wrapper_rotate_by_angle:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$5;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$5;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupScaleWidget()V
    .locals 2

    .line 559
    sget v0, Lcom/yalantis/ucrop/R$id;->text_view_scale:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mTextViewScalePercent:Landroid/widget/TextView;

    .line 560
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    new-instance v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$6;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$6;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    .line 561
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setScrollingListener(Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$ScrollingListener;)V

    .line 583
    sget v0, Lcom/yalantis/ucrop/R$id;->scale_scroll_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView;->setMiddleLineColor(I)V

    return-void
.end method

.method private setupStatesWrapper()V
    .locals 6

    .line 442
    sget v0, Lcom/yalantis/ucrop/R$id;->image_view_state_scale:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 443
    sget v1, Lcom/yalantis/ucrop/R$id;->image_view_state_rotate:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 444
    sget v2, Lcom/yalantis/ucrop/R$id;->image_view_state_aspect_ratio:I

    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 446
    new-instance v3, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    invoke-direct {v3, v4, v5}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    new-instance v0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    invoke-direct {v0, v3, v4}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    new-instance v0, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    invoke-direct {v0, v1, v3}, Lcom/yalantis/ucrop/util/SelectedStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupViews(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "com.yalantis.ucrop.scale"

    const/4 v1, 0x0

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->scaleEnabled:Z

    const-string v0, "com.yalantis.ucrop.rotate"

    .line 323
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->rotateEnabled:Z

    .line 325
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.StatusBarColor"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStatusBarColor:I

    .line 326
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.ToolbarColor"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarColor:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 328
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarColor:I

    .line 330
    :cond_0
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStatusBarColor:I

    if-ne v0, v2, :cond_1

    .line 331
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_statusbar:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStatusBarColor:I

    .line 334
    :cond_1
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_widget_active:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v3, "com.yalantis.ucrop.UcropColorWidgetActive"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mActiveWidgetColor:I

    .line 335
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar_widget:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v3, "com.yalantis.ucrop.UcropToolbarWidgetColor"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    if-ne v0, v2, :cond_2

    .line 337
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_toolbar_widget:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    .line 339
    :cond_2
    sget v0, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_cross:I

    const-string v2, "com.yalantis.ucrop.UcropToolbarCancelDrawable"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarCancelDrawable:I

    .line 340
    sget v0, Lcom/yalantis/ucrop/R$drawable;->ucrop_ic_done:I

    const-string v2, "com.yalantis.ucrop.UcropToolbarCropDrawable"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarCropDrawable:I

    const-string v0, "com.yalantis.ucrop.UcropToolbarTitleText"

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/yalantis/ucrop/R$string;->ucrop_label_edit_photo:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarTitle:Ljava/lang/String;

    .line 343
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_default_logo:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v2, "com.yalantis.ucrop.UcropLogoColor"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLogoColor:I

    const-string v0, "com.yalantis.ucrop.HideBottomControls"

    .line 344
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowBottomControls:Z

    .line 345
    sget v0, Lcom/yalantis/ucrop/R$color;->ucrop_color_crop_background:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "com.yalantis.ucrop.UcropRootViewBackgroundColor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRootViewBackgroundColor:I

    .line 347
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupAppBar()V

    .line 348
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->initiateRootViews()V

    .line 350
    iget-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowBottomControls:Z

    if-eqz v0, :cond_4

    .line 351
    sget v0, Lcom/yalantis/ucrop/R$id;->ucrop_mulit_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 352
    sget v1, Lcom/yalantis/ucrop/R$layout;->ucrop_controls:I

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 354
    sget v0, Lcom/yalantis/ucrop/R$id;->state_aspect_ratio:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateAspectRatio:Landroid/view/ViewGroup;

    .line 355
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    sget v0, Lcom/yalantis/ucrop/R$id;->state_rotate:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateRotate:Landroid/view/ViewGroup;

    .line 357
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget v0, Lcom/yalantis/ucrop/R$id;->state_scale:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mWrapperStateScale:Landroid/view/ViewGroup;

    .line 359
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mStateClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_aspect_ratio:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLayoutAspectRatio:Landroid/view/ViewGroup;

    .line 362
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_rotate_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLayoutRotate:Landroid/view/ViewGroup;

    .line 363
    sget v0, Lcom/yalantis/ucrop/R$id;->layout_scale_wheel:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mLayoutScale:Landroid/view/ViewGroup;

    .line 365
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupAspectRatioWidget(Landroid/content/Intent;)V

    .line 366
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupRotateWidget()V

    .line 367
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupScaleWidget()V

    .line 368
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupStatesWrapper()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected closeActivity()V
    .locals 2

    .line 781
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->finish()V

    .line 782
    sget v0, Lcom/yalantis/ucrop/R$anim;->ucrop_close:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected cropAndSaveImage()V
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 672
    iput-boolean v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowLoader:Z

    .line 673
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->supportInvalidateOptionsMenu()V

    .line 674
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mCompressQuality:I

    new-instance v3, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;

    invoke-direct {v3, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$8;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILcom/yalantis/ucrop/callback/BitmapCropCallback;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 132
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    sget p1, Lcom/yalantis/ucrop/R$layout;->ucrop_picture_activity_multi_cutting:I

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.yalantis.ucrop.cuts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    new-instance v2, Lcom/yalantis/ucrop/model/CutInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/yalantis/ucrop/model/CutInfo;-><init>(Ljava/lang/String;Z)V

    .line 141
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->initData()V

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupViews(Landroid/content/Intent;)V

    .line 146
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setInitialState()V

    .line 147
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->addBlockingView()V

    .line 148
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setImageData(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 166
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/yalantis/ucrop/R$menu;->ucrop_menu_activity:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 175
    iget v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 176
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 178
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    sget v1, Lcom/yalantis/ucrop/R$string;->ucrop_mutate_exception_hint:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "%s - %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UCropActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 183
    :cond_0
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 184
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarCropDrawable:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 187
    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 188
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cropAndSaveImage()V

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->onBackPressed()V

    .line 208
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 196
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowLoader:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    sget v0, Lcom/yalantis/ucrop/R$id;->menu_loader:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowLoader:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onStop()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 214
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mGestureCropImageView:Lcom/yalantis/ucrop/view/GestureCropImageView;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->cancelAllAnimations()V

    :cond_0
    return-void
.end method

.method protected resetCutData()V
    .locals 8

    .line 718
    sget v0, Lcom/yalantis/ucrop/R$layout;->ucrop_picture_activity_multi_cutting:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setContentView(I)V

    .line 719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 721
    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    iget v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yalantis/ucrop/model/CutInfo;

    invoke-virtual {v2}, Lcom/yalantis/ucrop/model/CutInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v2}, Lcom/yalantis/ucrop/util/FileUtils;->isHttp(Ljava/lang/String;)Z

    move-result v3

    .line 723
    invoke-static {v2}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getLastImgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 724
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    const-string v3, "com.yalantis.ucrop.InputUri"

    .line 725
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 726
    new-instance v2, Ljava/io/File;

    .line 727
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "com.yalantis.ucrop.OutputUri"

    .line 726
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 728
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 729
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupViews(Landroid/content/Intent;)V

    .line 730
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setInitialState()V

    .line 731
    sget v1, Lcom/yalantis/ucrop/R$id;->ucrop_mulit_photobox:I

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 732
    iput-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    .line 733
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->addBlockingView()V

    .line 734
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setImageData(Landroid/content/Intent;)V

    .line 735
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->initData()V

    .line 737
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method protected setResultError(Ljava/lang/Throwable;)V
    .locals 2

    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yalantis.ucrop.Error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x60

    invoke-virtual {p0, v0, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected setResultUri(Landroid/net/Uri;FIIII)V
    .locals 2

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yalantis/ucrop/model/CutInfo;

    .line 692
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/model/CutInfo;->setCutPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 693
    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/model/CutInfo;->setCut(Z)V

    .line 694
    invoke-virtual {v0, p2}, Lcom/yalantis/ucrop/model/CutInfo;->setResultAspectRatio(F)V

    .line 695
    invoke-virtual {v0, p3}, Lcom/yalantis/ucrop/model/CutInfo;->setOffsetX(I)V

    .line 696
    invoke-virtual {v0, p4}, Lcom/yalantis/ucrop/model/CutInfo;->setOffsetY(I)V

    .line 697
    invoke-virtual {v0, p5}, Lcom/yalantis/ucrop/model/CutInfo;->setImageWidth(I)V

    .line 698
    invoke-virtual {v0, p6}, Lcom/yalantis/ucrop/model/CutInfo;->setImageHeight(I)V

    .line 699
    iget p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    .line 700
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    const/4 p1, -0x1

    .line 701
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.yalantis.ucrop.OutputUriList"

    iget-object p4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutInfos:Ljava/util/List;

    check-cast p4, Ljava/io/Serializable;

    .line 702
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p2

    .line 701
    invoke-virtual {p0, p1, p2}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResult(ILandroid/content/Intent;)V

    .line 704
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->closeActivity()V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetCutData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 709
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
