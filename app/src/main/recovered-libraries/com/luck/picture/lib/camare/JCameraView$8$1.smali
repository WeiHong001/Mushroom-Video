.class Lcom/luck/picture/lib/camare/JCameraView$8$1;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/JCameraView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/camare/JCameraView$8;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/JCameraView$8;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$8$1;->this$1:Lcom/luck/picture/lib/camare/JCameraView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 509
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$8$1;->this$1:Lcom/luck/picture/lib/camare/JCameraView$8;

    iget-object p1, p1, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    iget-object p2, p0, Lcom/luck/picture/lib/camare/JCameraView$8$1;->this$1:Lcom/luck/picture/lib/camare/JCameraView$8;

    iget-object p2, p2, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {p2}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/luck/picture/lib/camare/JCameraView$8$1;->this$1:Lcom/luck/picture/lib/camare/JCameraView$8;

    iget-object p3, p3, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {p3}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object p3

    .line 510
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p3

    int-to-float p3, p3

    .line 509
    invoke-static {p1, p2, p3}, Lcom/luck/picture/lib/camare/JCameraView;->access$900(Lcom/luck/picture/lib/camare/JCameraView;FF)V

    return-void
.end method
