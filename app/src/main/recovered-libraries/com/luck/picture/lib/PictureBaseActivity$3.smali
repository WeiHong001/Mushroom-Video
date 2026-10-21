.class Lcom/luck/picture/lib/PictureBaseActivity$3;
.super Ljava/lang/Object;
.source "PictureBaseActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/compress/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureBaseActivity;->compressImage(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureBaseActivity;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 249
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v1, 0xad2

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/rxbus2/RxBus;->post(Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->val$result:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/RxBus;->getDefault()Lcom/luck/picture/lib/rxbus2/RxBus;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v2, 0xad2

    invoke-direct {v1, v2}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/rxbus2/RxBus;->post(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    return-void
.end method
