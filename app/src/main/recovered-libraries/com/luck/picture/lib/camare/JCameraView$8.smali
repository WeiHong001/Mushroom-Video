.class Lcom/luck/picture/lib/camare/JCameraView$8;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/JCameraView;->playVideo(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/JCameraView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/JCameraView;Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    iput-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camare/JCameraView;->access$802(Lcom/luck/picture/lib/camare/JCameraView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camare/JCameraView;->access$100(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 502
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 503
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 504
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Lcom/luck/picture/lib/camare/JCameraView$8$1;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/camare/JCameraView$8$1;-><init>(Lcom/luck/picture/lib/camare/JCameraView$8;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 513
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v2, Lcom/luck/picture/lib/camare/JCameraView$8$2;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/camare/JCameraView$8$2;-><init>(Lcom/luck/picture/lib/camare/JCameraView$8;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 519
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 520
    iget-object v0, p0, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
