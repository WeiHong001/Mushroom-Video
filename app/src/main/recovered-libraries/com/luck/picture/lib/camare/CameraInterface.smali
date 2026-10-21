.class public Lcom/luck/picture/lib/camare/CameraInterface;
.super Ljava/lang/Object;
.source "CameraInterface.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;,
        Lcom/luck/picture/lib/camare/CameraInterface$TakePictureCallback;,
        Lcom/luck/picture/lib/camare/CameraInterface$ErrorCallback;,
        Lcom/luck/picture/lib/camare/CameraInterface$StopRecordCallback;,
        Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CJT"

.field public static final TYPE_CAPTURE:I = 0x91

.field public static final TYPE_RECORDER:I = 0x90

.field private static volatile mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;


# instance fields
.field private CAMERA_FRONT_POSITION:I

.field private CAMERA_POST_POSITION:I

.field private SELECTED_CAMERA:I

.field private angle:I

.field private cameraAngle:I

.field private errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

.field private firstFrame_data:[B

.field handlerTime:I

.field private isPreviewing:Z

.field private isRecorder:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mediaQuality:I

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private nowAngle:I

.field private nowScaleRate:I

.field private preview_height:I

.field private preview_width:I

.field private recordScleRate:I

.field private rotation:I

.field private saveVideoPath:Ljava/lang/String;

.field private screenProp:F

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sm:Landroid/hardware/SensorManager;

.field private videoFileAbsPath:Ljava/lang/String;

.field private videoFileName:Ljava/lang/String;

.field private videoFirstFrame:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isPreviewing:Z

    const/4 v1, -0x1

    .line 58
    iput v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    .line 59
    iput v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_POST_POSITION:I

    .line 60
    iput v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_FRONT_POSITION:I

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mHolder:Landroid/view/SurfaceHolder;

    const/high16 v2, -0x40800000    # -1.0f

    .line 63
    iput v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->screenProp:F

    .line 65
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    .line 70
    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 78
    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->angle:I

    const/16 v2, 0x5a

    .line 79
    iput v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->cameraAngle:I

    .line 80
    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->rotation:I

    .line 85
    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    .line 86
    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->recordScleRate:I

    .line 89
    sget v2, Lcom/luck/picture/lib/camare/JCameraView;->MEDIA_QUALITY_HIGH:I

    iput v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaQuality:I

    .line 90
    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    .line 109
    new-instance v1, Lcom/luck/picture/lib/camare/CameraInterface$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camare/CameraInterface$1;-><init>(Lcom/luck/picture/lib/camare/CameraInterface;)V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 591
    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->handlerTime:I

    .line 205
    invoke-direct {p0}, Lcom/luck/picture/lib/camare/CameraInterface;->findAvailableCameras()V

    .line 206
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_POST_POSITION:I

    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    const-string v0, ""

    .line 207
    iput-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->saveVideoPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/luck/picture/lib/camare/CameraInterface;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->angle:I

    return p1
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/camare/CameraInterface;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    return p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/camare/CameraInterface;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_POST_POSITION:I

    return p0
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/camare/CameraInterface;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowAngle:I

    return p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/camare/CameraInterface;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_FRONT_POSITION:I

    return p0
.end method

.method private static calculateTapArea(FFFLandroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p2, p2, v0

    .line 636
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    .line 637
    invoke-static {p3}, Lcom/luck/picture/lib/camare/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float p0, p0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float/2addr p0, v1

    float-to-int p0, p0

    .line 638
    invoke-static {p3}, Lcom/luck/picture/lib/camare/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    mul-float p1, p1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 639
    div-int/lit8 p3, p2, 0x2

    sub-int/2addr p0, p3

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->clamp(III)I

    move-result p0

    sub-int/2addr p1, p3

    .line 640
    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->clamp(III)I

    move-result p1

    .line 641
    new-instance p3, Landroid/graphics/RectF;

    int-to-float v0, p0

    int-to-float v1, p1

    add-int/2addr p0, p2

    int-to-float p0, p0

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-direct {p3, v0, v1, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 642
    new-instance p0, Landroid/graphics/Rect;

    iget p1, p3, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p3, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static destroyCameraInterface()V
    .locals 1

    .line 49
    sget-object v0, Lcom/luck/picture/lib/camare/CameraInterface;->mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/luck/picture/lib/camare/CameraInterface;->mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;

    :cond_0
    return-void
.end method

.method private findAvailableCameras()V
    .locals 5

    .line 576
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 577
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 579
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 580
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 582
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_FRONT_POSITION:I

    goto :goto_1

    .line 585
    :cond_1
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_POST_POSITION:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/luck/picture/lib/camare/CameraInterface;
    .locals 2

    const-class v0, Lcom/luck/picture/lib/camare/CameraInterface;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/luck/picture/lib/camare/CameraInterface;->mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;

    if-nez v1, :cond_1

    .line 95
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :try_start_1
    sget-object v1, Lcom/luck/picture/lib/camare/CameraInterface;->mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/luck/picture/lib/camare/CameraInterface;

    invoke-direct {v1}, Lcom/luck/picture/lib/camare/CameraInterface;-><init>()V

    sput-object v1, Lcom/luck/picture/lib/camare/CameraInterface;->mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 99
    :cond_1
    :goto_0
    sget-object v1, Lcom/luck/picture/lib/camare/CameraInterface;->mCameraInterface:Lcom/luck/picture/lib/camare/CameraInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized openCamera(I)V
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 237
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p1}, Lcom/luck/picture/lib/camare/listener/ErrorListener;->onError()V

    .line 243
    :cond_0
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 245
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->enableShutterSound(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 247
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "CJT"

    const-string v0, "enable shutter sound faild"

    .line 248
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private setFlashModel()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "torch"

    .line 229
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method doDestroyCamera()V
    .locals 3

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    .line 350
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const-string v2, "CJT"

    if-eqz v1, :cond_0

    .line 352
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 353
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 355
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 356
    iput-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    .line 357
    iput-boolean v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isPreviewing:Z

    .line 358
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 359
    iput-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const-string v0, "=== Destroy Camera ==="

    .line 361
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "=== Camera  Null==="

    .line 366
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method doOpenCamera(Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;)V
    .locals 2

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 216
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/CheckPermission;->isCameraUseable(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Lcom/luck/picture/lib/camare/listener/ErrorListener;->onError()V

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 222
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/camare/CameraInterface;->openCamera(I)V

    .line 224
    :cond_1
    invoke-interface {p1}, Lcom/luck/picture/lib/camare/CameraInterface$CameraOpenOverCallback;->cameraHasOpened()V

    return-void
.end method

.method public doStartPreview(Landroid/view/SurfaceHolder;F)V
    .locals 5

    const-string v0, "auto"

    .line 278
    iget-boolean v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isPreviewing:Z

    if-eqz v1, :cond_0

    const-string v1, "doStartPreview isPreviewing"

    .line 279
    invoke-static {v1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 281
    :cond_0
    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->screenProp:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 282
    iput p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->screenProp:F

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 287
    :cond_2
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mHolder:Landroid/view/SurfaceHolder;

    .line 288
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 290
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 291
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 292
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 291
    invoke-virtual {v1, v2, v3, p2}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 293
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 294
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x4b0

    .line 293
    invoke-virtual {v2, v3, v4, p2}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getPictureSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 296
    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 298
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->preview_width:I

    .line 299
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->preview_height:I

    .line 301
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 303
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object p2

    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 304
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 303
    invoke-virtual {p2, v1, v0}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->isSupportedFocusMode(Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 306
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 308
    :cond_3
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {p2, v0, v1}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->isSupportedPictureFormats(Ljava/util/List;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 310
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 311
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 313
    :cond_4
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 314
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 315
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 316
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->cameraAngle:I

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 317
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 318
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isPreviewing:Z

    const-string p1, "CJT"

    const-string p2, "=== Start Preview ==="

    .line 320
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public doStopPreview()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 333
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 334
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 336
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isPreviewing:Z

    const-string v0, "CJT"

    const-string v1, "=== Stop Preview ==="

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public handleFocus(Landroid/content/Context;FFLcom/luck/picture/lib/camare/CameraInterface$FocusCallback;)V
    .locals 10

    .line 594
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 598
    invoke-static {p2, p3, v1, p1}, Lcom/luck/picture/lib/camare/CameraInterface;->calculateTapArea(FFFLandroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 600
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    const-string v7, "CJT"

    if-lez v2, :cond_1

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 602
    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v8, 0x320

    invoke-direct {v3, v1, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 609
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v1, "auto"

    .line 611
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 613
    iget-object v8, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    new-instance v9, Lcom/luck/picture/lib/camare/CameraInterface$3;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/camare/CameraInterface$3;-><init>(Lcom/luck/picture/lib/camare/CameraInterface;Ljava/lang/String;Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;Landroid/content/Context;FF)V

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "autoFocus failer"

    .line 629
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "focus areas not supported"

    .line 605
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-interface {p4}, Lcom/luck/picture/lib/camare/CameraInterface$FocusCallback;->focusSuccess()V

    return-void
.end method

.method isPreview(Z)V
    .locals 0

    .line 695
    iput-boolean p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isPreviewing:Z

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->firstFrame_data:[B

    return-void
.end method

.method registerSensorManager(Landroid/content/Context;)V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    .line 681
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    .line 683
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method setErrorLinsenter(Lcom/luck/picture/lib/camare/listener/ErrorListener;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method setMediaQuality(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaQuality:I

    return-void
.end method

.method setSaveVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 125
    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->saveVideoPath:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public setSwitchView(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    invoke-virtual {v0, p1, v1}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getCameraDisplayOrientation(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->cameraAngle:I

    :cond_0
    return-void
.end method

.method public setZoom(FI)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x90

    if-eq p2, v0, :cond_8

    const/16 v0, 0x91

    if-eq p2, v0, :cond_3

    goto/16 :goto_1

    .line 160
    :cond_3
    iget-boolean p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    if-eqz p2, :cond_4

    return-void

    :cond_4
    const/high16 p2, 0x42480000    # 50.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 165
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 166
    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    if-gez p2, :cond_5

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    goto :goto_0

    .line 169
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    if-le p2, p1, :cond_6

    .line 170
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    .line 172
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 173
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 175
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setZoom = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_8
    iget-boolean p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    if-nez p2, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_a

    const/high16 p2, 0x42200000    # 40.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 152
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p2

    if-gt p1, p2, :cond_a

    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowScaleRate:I

    if-lt p1, p2, :cond_a

    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->recordScleRate:I

    if-eq p2, p1, :cond_a

    .line 153
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 154
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 155
    iput p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->recordScleRate:I

    :cond_a
    :goto_1
    return-void
.end method

.method public startRecord(Landroid/view/Surface;FLcom/luck/picture/lib/camare/CameraInterface$ErrorCallback;)V
    .locals 11

    .line 415
    iget-object p3, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 416
    iget p3, p0, Lcom/luck/picture/lib/camare/CameraInterface;->angle:I

    const/16 v0, 0x5a

    add-int/2addr p3, v0

    rem-int/lit16 p3, p3, 0x168

    .line 418
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    .line 420
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    .line 421
    new-instance v10, Landroid/graphics/YuvImage;

    iget-object v4, p0, Lcom/luck/picture/lib/camare/CameraInterface;->firstFrame_data:[B

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    const/4 v8, 0x0

    move-object v3, v10

    move v6, v2

    move v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 422
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 423
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x32

    invoke-virtual {v10, v3, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 424
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 425
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 426
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 427
    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    iget v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_POST_POSITION:I

    if-ne v1, v2, :cond_0

    int-to-float v1, p3

    .line 428
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 429
    :cond_0
    iget v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_FRONT_POSITION:I

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x43870000    # 270.0f

    .line 430
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 432
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 433
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 432
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 435
    iget-boolean v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    if-eqz v1, :cond_2

    return-void

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_3

    .line 439
    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    invoke-direct {p0, v1}, Lcom/luck/picture/lib/camare/CameraInterface;->openCamera(I)V

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_4

    .line 442
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 444
    :cond_4
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_5

    .line 445
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 447
    :cond_5
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    .line 448
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 449
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 451
    :cond_6
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 452
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 453
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 454
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 455
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 457
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 459
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 460
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 461
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 465
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x258

    if-nez v1, :cond_7

    .line 466
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p2}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object p2

    goto :goto_1

    .line 469
    :cond_7
    invoke-static {}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getInstance()Lcom/luck/picture/lib/camare/util/CameraParamUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p2}, Lcom/luck/picture/lib/camare/util/CameraParamUtil;->getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 472
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoSize    width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CJT"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    if-ne v1, v4, :cond_8

    .line 474
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->preview_width:I

    iget v4, p0, Lcom/luck/picture/lib/camare/CameraInterface;->preview_height:I

    invoke-virtual {p2, v1, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_2

    .line 476
    :cond_8
    iget-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v4, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 485
    :goto_2
    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_FRONT_POSITION:I

    if-ne p2, v1, :cond_e

    .line 487
    iget p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->cameraAngle:I

    const/16 v1, 0x10e

    if-ne p2, v1, :cond_b

    if-nez p3, :cond_9

    .line 490
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 p3, 0xb4

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    :cond_9
    if-ne p3, v1, :cond_a

    .line 492
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    .line 494
    :cond_a
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    :cond_b
    if-ne p3, v0, :cond_c

    .line 498
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    :cond_c
    if-ne p3, v1, :cond_d

    .line 500
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    .line 502
    :cond_d
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    .line 506
    :cond_e
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 510
    :goto_3
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget p3, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaQuality:I

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 511
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 p3, 0x14

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 512
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "video_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFileName:Ljava/lang/String;

    .line 515
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->saveVideoPath:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 516
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->saveVideoPath:Ljava/lang/String;

    .line 518
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->saveVideoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFileAbsPath:Ljava/lang/String;

    .line 519
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 521
    :try_start_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 522
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 523
    iput-boolean v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string/jumbo p1, "startRecord RuntimeException"

    .line 537
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception p1

    .line 531
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo p1, "startRecord IOException"

    .line 532
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    if-eqz p1, :cond_10

    .line 534
    invoke-interface {p1}, Lcom/luck/picture/lib/camare/listener/ErrorListener;->onError()V

    goto :goto_4

    :catch_2
    move-exception p1

    .line 525
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string/jumbo p1, "startRecord IllegalStateException"

    .line 526
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->errorLisenter:Lcom/luck/picture/lib/camare/listener/ErrorListener;

    if-eqz p1, :cond_10

    .line 528
    invoke-interface {p1}, Lcom/luck/picture/lib/camare/listener/ErrorListener;->onError()V

    :cond_10
    :goto_4
    return-void
.end method

.method public stopRecord(ZLcom/luck/picture/lib/camare/CameraInterface$StopRecordCallback;)V
    .locals 3

    .line 543
    iget-boolean v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 547
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 548
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 549
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 558
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 560
    :cond_1
    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 561
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 553
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 554
    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 555
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    .line 564
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFileAbsPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 565
    invoke-interface {p2, v1, v1}, Lcom/luck/picture/lib/camare/CameraInterface$StopRecordCallback;->recordResult(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    .line 569
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CameraInterface;->doStopPreview()V

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->saveVideoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 571
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    invoke-interface {p2, p1, v0}, Lcom/luck/picture/lib/camare/CameraInterface$StopRecordCallback;->recordResult(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 557
    :goto_2
    iget-object p2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_4

    .line 558
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    .line 560
    :cond_4
    iput-object v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 561
    iput-boolean v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->isRecorder:Z

    .line 562
    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public declared-synchronized switchCamera(Landroid/view/SurfaceHolder;F)V
    .locals 2

    monitor-enter p0

    .line 254
    :try_start_0
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_POST_POSITION:I

    if-ne v0, v1, :cond_0

    .line 255
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->CAMERA_FRONT_POSITION:I

    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    goto :goto_0

    .line 257
    :cond_0
    iput v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/camare/CameraInterface;->doDestroyCamera()V

    const-string v0, "open start"

    .line 260
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->SELECTED_CAMERA:I

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/camare/CameraInterface;->openCamera(I)V

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 265
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 267
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v0, "open end"

    .line 270
    invoke-static {v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->i(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/camare/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public takePicture(Lcom/luck/picture/lib/camare/CameraInterface$TakePictureCallback;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->cameraAngle:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->angle:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowAngle:I

    goto :goto_0

    .line 381
    :cond_2
    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->angle:I

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowAngle:I

    .line 388
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->angle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/luck/picture/lib/camare/CameraInterface;->cameraAngle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->nowAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CJT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/luck/picture/lib/camare/CameraInterface$2;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/camare/CameraInterface$2;-><init>(Lcom/luck/picture/lib/camare/CameraInterface;Lcom/luck/picture/lib/camare/CameraInterface$TakePictureCallback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method unregisterSensorManager(Landroid/content/Context;)V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    .line 689
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/luck/picture/lib/camare/CameraInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
