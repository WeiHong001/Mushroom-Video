.class public final Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureActivityHandler"


# instance fields
.field private final decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

.field private final fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

.field private state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/uuzuche/lib_zxing/view/ViewfinderView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uuzuche/lib_zxing/activity/CaptureFragment;",
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/uuzuche/lib_zxing/view/ViewfinderView;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    .line 59
    new-instance v0, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    new-instance v1, Lcom/uuzuche/lib_zxing/view/ViewfinderResultPointCallback;

    invoke-direct {v1, p4}, Lcom/uuzuche/lib_zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/uuzuche/lib_zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;-><init>(Lcom/uuzuche/lib_zxing/activity/CaptureFragment;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    .line 61
    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->start()V

    .line 62
    sget-object p1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 64
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->startPreview()V

    .line 65
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 126
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 127
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v1}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/uuzuche/lib_zxing/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 128
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->auto_focus:I

    invoke-virtual {v0, p0, v1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 129
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->auto_focus:I

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_6

    .line 75
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p1

    sget v0, Lcom/uuzuche/lib_zxing/R$id;->auto_focus:I

    invoke-virtual {p1, p0, v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 77
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->restart_preview:I

    if-ne v0, v1, :cond_1

    .line 78
    sget-object p1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "Got restart preview message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto/16 :goto_1

    .line 80
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_3

    .line 81
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "barcode_bitmap"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 91
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->decode_failed:I

    if-ne v0, v1, :cond_4

    .line 93
    sget-object p1, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 94
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->decode:I

    invoke-virtual {p1, v0, v1}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_1

    .line 95
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->return_scan_result:I

    if-ne v0, v1, :cond_5

    .line 96
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {p1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    .line 99
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->launch_product_query:I

    if-ne v0, v1, :cond_6

    .line 100
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got product query message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 103
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object p1, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->fragment:Lcom/uuzuche/lib_zxing/activity/CaptureFragment;

    invoke-virtual {p1}, Lcom/uuzuche/lib_zxing/activity/CaptureFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public quitSynchronously()V
    .locals 2

    .line 109
    sget-object v0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->state:Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler$State;

    .line 110
    invoke-static {}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->get()Lcom/uuzuche/lib_zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/camera/CameraManager;->stopPreview()V

    .line 111
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/uuzuche/lib_zxing/R$id;->quit:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uuzuche/lib_zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uuzuche/lib_zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    sget v0, Lcom/uuzuche/lib_zxing/R$id;->decode_succeeded:I

    invoke-virtual {p0, v0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 121
    sget v0, Lcom/uuzuche/lib_zxing/R$id;->decode_failed:I

    invoke-virtual {p0, v0}, Lcom/uuzuche/lib_zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
