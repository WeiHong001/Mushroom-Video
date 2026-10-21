.class public Lcom/uuzuche/lib_zxing/activity/CodeUtils;
.super Ljava/lang/Object;
.source "CodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;
    }
.end annotation


# static fields
.field public static final LAYOUT_ID:Ljava/lang/String; = "layout_id"

.field public static final RESULT_FAILED:I = 0x2

.field public static final RESULT_STRING:Ljava/lang/String; = "result_string"

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_TYPE:Ljava/lang/String; = "result_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyzeBitmap(Ljava/lang/String;Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;)V
    .locals 5

    .line 54
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 56
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 57
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 59
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 63
    :goto_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 64
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 66
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 69
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 71
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 72
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 76
    sget-object v3, Lcom/uuzuche/lib_zxing/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object v3, Lcom/uuzuche/lib_zxing/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 78
    sget-object v3, Lcom/uuzuche/lib_zxing/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_1
    sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 89
    :try_start_0
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    new-instance v4, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;

    invoke-direct {v4, p0}, Lcom/uuzuche/lib_zxing/camera/BitmapLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    invoke-virtual {v0, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeSuccess(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 100
    invoke-interface {p1}, Lcom/uuzuche/lib_zxing/activity/CodeUtils$AnalyzeCallback;->onAnalyzeFailed()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static createImage(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 16

    move/from16 v0, p1

    move/from16 v8, p2

    .line 114
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return-object v9

    :cond_0
    move-object/from16 v1, p3

    .line 118
    :try_start_0
    invoke-static {v1, v0, v8}, Lcom/uuzuche/lib_zxing/activity/CodeUtils;->getScaleLogo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 120
    div-int/lit8 v1, v0, 0x2

    .line 121
    div-int/lit8 v2, v8, 0x2

    const/4 v10, 0x0

    if-eqz v7, :cond_1

    .line 126
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 127
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v3, v0, v1

    .line 128
    div-int/lit8 v3, v3, 0x2

    sub-int v4, v8, v2

    .line 129
    div-int/lit8 v4, v4, 0x2

    move v12, v1

    move v14, v2

    move v11, v3

    move v13, v4

    goto :goto_0

    :cond_1
    move v11, v1

    move v13, v2

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 131
    :goto_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 132
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    mul-int v2, v0, v8

    .line 138
    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_7

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_6

    const/high16 v5, -0x1000000

    const/4 v6, -0x1

    if-lt v4, v11, :cond_4

    add-int v15, v11, v12

    if-ge v4, v15, :cond_4

    if-lt v3, v13, :cond_4

    add-int v15, v13, v14

    if-ge v3, v15, :cond_4

    sub-int v15, v4, v11

    sub-int v10, v3, v13

    .line 142
    invoke-virtual {v7, v15, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    if-nez v10, :cond_3

    .line 144
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, -0x1

    goto :goto_3

    :cond_3
    move v5, v10

    :goto_3
    mul-int v6, v3, v0

    add-int/2addr v6, v4

    .line 150
    aput v5, v2, v6

    goto :goto_4

    .line 152
    :cond_4
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_5

    mul-int v6, v3, v0

    add-int/2addr v6, v4

    .line 153
    aput v5, v2, v6

    goto :goto_4

    :cond_5
    mul-int v5, v3, v0

    add-int/2addr v5, v4

    .line 155
    aput v6, v2, v5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x0

    goto :goto_1

    .line 160
    :cond_7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v10

    move/from16 v4, p1

    move/from16 v7, p1

    move/from16 v8, p2

    .line 162
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    return-object v9
.end method

.method private static getScaleLogo(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr p1, v1

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    mul-float p2, p2, v0

    div-float/2addr p2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 174
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static isLightEnable(Z)V
    .locals 2

    if-eqz p0, :cond_0

    .line 207
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "torch"

    .line 210
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->getCamera()Landroid/hardware/Camera;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    .line 217
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setFragmentArgs(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;I)V
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_id"

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
