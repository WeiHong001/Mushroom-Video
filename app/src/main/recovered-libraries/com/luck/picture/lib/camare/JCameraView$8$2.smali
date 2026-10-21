.class Lcom/luck/picture/lib/camare/JCameraView$8$2;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 513
    iput-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$8$2;->this$1:Lcom/luck/picture/lib/camare/JCameraView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 516
    iget-object p1, p0, Lcom/luck/picture/lib/camare/JCameraView$8$2;->this$1:Lcom/luck/picture/lib/camare/JCameraView$8;

    iget-object p1, p1, Lcom/luck/picture/lib/camare/JCameraView$8;->this$0:Lcom/luck/picture/lib/camare/JCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camare/JCameraView;->access$800(Lcom/luck/picture/lib/camare/JCameraView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
