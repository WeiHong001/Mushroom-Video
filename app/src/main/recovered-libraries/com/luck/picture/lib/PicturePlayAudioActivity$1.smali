.class Lcom/luck/picture/lib/PicturePlayAudioActivity$1;
.super Ljava/lang/Object;
.source "PicturePlayAudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PicturePlayAudioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PicturePlayAudioActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PicturePlayAudioActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$1;->this$0:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$1;->this$0:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->access$000(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->access$100(Lcom/luck/picture/lib/PicturePlayAudioActivity;Ljava/lang/String;)V

    return-void
.end method
