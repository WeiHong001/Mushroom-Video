.class Lcom/luck/picture/lib/PictureBaseActivity$1;
.super Ljava/lang/Object;
.source "PictureBaseActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureBaseActivity;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$1;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$1;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity$1;->val$result:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->access$000(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
