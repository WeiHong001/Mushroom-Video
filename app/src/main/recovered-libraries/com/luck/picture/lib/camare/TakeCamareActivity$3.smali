.class Lcom/luck/picture/lib/camare/TakeCamareActivity$3;
.super Ljava/lang/Object;
.source "TakeCamareActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/camare/listener/ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camare/TakeCamareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camare/TakeCamareActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    iget v0, v0, Lcom/luck/picture/lib/camare/TakeCamareActivity;->requeCode:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "toselect"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelector;->create(Landroid/app/Activity;)Lcom/luck/picture/lib/PictureSelector;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelector;->openGallery(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$style;->picture_default_style:I

    .line 98
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->theme(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->maxSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v2, 0x4

    .line 100
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->imageSpanCount(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMode(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->previewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->previewImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->isCamera(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->compress(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 106
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->sizeMultiplier(F)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->isGif(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->previewEggs(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v2, 0x5a

    .line 110
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->cropCompressQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->videoQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v1, 0xb4

    .line 112
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->videoMaxSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v1, 0x14

    .line 113
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->recordVideoSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelectionModel;->toSelect()V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/camare/TakeCamareActivity$3;->this$0:Lcom/luck/picture/lib/camare/TakeCamareActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camare/TakeCamareActivity;->finish()V

    return-void
.end method
