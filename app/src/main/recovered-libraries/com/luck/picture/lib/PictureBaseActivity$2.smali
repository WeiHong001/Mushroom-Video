.class Lcom/luck/picture/lib/PictureBaseActivity$2;
.super Ljava/lang/Object;
.source "PictureBaseActivity.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureBaseActivity;->compressImage(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/util/List<",
        "Lcom/luck/picture/lib/entity/LocalMedia;",
        ">;",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureBaseActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$2;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$2;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$2;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/Luban;->with(Landroid/content/Context;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity$2;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setTargetDir(Ljava/lang/String;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity$2;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    .line 216
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->ignoreBy(I)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->loadLocalMedia(Ljava/util/List;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->get()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method
