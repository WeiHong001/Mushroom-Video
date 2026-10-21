.class Lcom/luck/picture/lib/PictureVideoPlayActivity$2;
.super Ljava/lang/Object;
.source "PictureVideoPlayActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureVideoPlayActivity;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureVideoPlayActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity$2;->this$0:Lcom/luck/picture/lib/PictureVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 121
    iget-object p2, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity$2;->this$0:Lcom/luck/picture/lib/PictureVideoPlayActivity;

    invoke-static {p2}, Lcom/luck/picture/lib/PictureVideoPlayActivity;->access$000(Lcom/luck/picture/lib/PictureVideoPlayActivity;)Landroid/widget/VideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
