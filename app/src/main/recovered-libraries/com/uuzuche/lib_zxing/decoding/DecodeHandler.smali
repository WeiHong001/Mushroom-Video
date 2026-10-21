.class final Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeHandler"


# instance fields
.field private final fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uuzuche/lib_zxing/activity/CaptureFragment;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 48
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 49
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    return-void
.end method

.method private decode([BII)V
    .locals 8

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    mul-int v6, v5, p3

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    mul-int v7, v4, p2

    add-int/2addr v7, v5

    .line 77
    aget-byte v7, p1, v7

    aput-byte v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v2, p3, p2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance p3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {p3, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, p3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 86
    :try_start_0
    iget-object p3, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p3, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw p1

    :catch_0
    iget-object p2, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_2

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    sget-object p3, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found barcode ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p3, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {p3}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getHandler()Landroid/os/Handler;

    move-result-object p3

    sget v0, Lcom/uuzuche/lib_zxing/R$id;->decode_succeeded:I

    invoke-static {p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 97
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/uuzuche/lib_zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "barcode_bitmap"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {p1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getHandler()Landroid/os/Handler;

    move-result-object p1

    sget p2, Lcom/uuzuche/lib_zxing/R$id;->decode_failed:I

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->decode:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/uuzuche/lib_zxing/decoding/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 56
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/uuzuche/lib_zxing/R$id;->quit:I

    if-ne p1, v0, :cond_1

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method
