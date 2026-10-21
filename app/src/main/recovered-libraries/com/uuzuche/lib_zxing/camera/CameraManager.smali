.class public final Lcom/uuzuche/lib_zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static FRAME_HEIGHT:I = -0x1

.field public static FRAME_MARGINTOP:I = -0x1

.field public static FRAME_WIDTH:I = -0x1

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 55
    :goto_0
    sput v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->SDK_INT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->context:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    .line 106
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 108
    new-instance v1, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-direct {v1, v0, p1}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;-><init>(Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;Z)V

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    .line 109
    new-instance p1, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-direct {p1}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;-><init>()V

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    return-void
.end method

.method public static get()Lcom/uuzuche/lib_zxing/camera/CameraManager;
    .locals 1

    .line 93
    sget-object v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 82
    sget-object v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->cameraManager:Lcom/uuzuche/lib_zxing/camera/CameraManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;
    .locals 12

    .line 297
    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const-string/jumbo v3, "yuv420p"

    .line 312
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    new-instance v1, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 314
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v1

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported picture format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_1
    new-instance v8, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public closeDriver()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 148
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getAutoFocusCallback()Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    return-object v0

    .line 226
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    sget v3, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 229
    sget v3, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_MARGINTOP:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v3, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    sub-int/2addr v1, v3

    div-int/lit8 v3, v1, 0x2

    .line 234
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    sget v4, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_WIDTH:I

    add-int/2addr v4, v2

    sget v5, Lcom/uuzuche/lib_zxing/camera/CameraManager;->FRAME_HEIGHT:I

    add-int/2addr v5, v3

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 250
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 257
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 258
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 259
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 260
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 261
    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreviewCallback()Lcom/uuzuche/lib_zxing/camera/PreviewCallback;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    return-object v0
.end method

.method public isPreviewing()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    return v0
.end method

.method public isUseOneShotPreviewCallback()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    return v0
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 120
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 126
    iget-boolean p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->initialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->initialized:Z

    .line 128
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->configManager:Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/uuzuche/lib_zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 138
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/FlashlightManager;->enableFlashlight()V

    goto :goto_0

    .line 122
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 207
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 189
    iget-boolean p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 0

    .line 346
    iput-boolean p1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_1

    .line 168
    iget-boolean v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 172
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewCallback:Lcom/uuzuche/lib_zxing/camera/PreviewCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/uuzuche/lib_zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 173
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->autoFocusCallback:Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/uuzuche/lib_zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 174
    iput-boolean v1, p0, Lcom/uuzuche/lib_zxing/camera/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method
