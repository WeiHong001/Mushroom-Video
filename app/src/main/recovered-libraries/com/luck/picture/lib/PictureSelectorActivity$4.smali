.class Lcom/luck/picture/lib/PictureSelectorActivity$4;
.super Ljava/lang/Object;
.source "PictureSelectorActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity;->readLocalMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$102(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)Ljava/util/List;

    .line 311
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 312
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setChecked(Z)V

    .line 313
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImages()Ljava/util/List;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v4}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$200(Lcom/luck/picture/lib/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 318
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v3, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$202(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)Ljava/util/List;

    .line 319
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$300(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/widget/FolderPopWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->bindFolder(Ljava/util/List;)V

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$400(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 323
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$200(Lcom/luck/picture/lib/PictureSelectorActivity;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$202(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)Ljava/util/List;

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$400(Lcom/luck/picture/lib/PictureSelectorActivity;)Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$200(Lcom/luck/picture/lib/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindImagesData(Ljava/util/List;)V

    .line 327
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$500(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$200(Lcom/luck/picture/lib/PictureSelectorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$4;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->access$000(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
