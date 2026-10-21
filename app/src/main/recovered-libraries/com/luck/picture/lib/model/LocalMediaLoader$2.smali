.class Lcom/luck/picture/lib/model/LocalMediaLoader$2;
.super Ljava/lang/Object;
.source "LocalMediaLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/model/LocalMediaLoader;->sortFolder(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/model/LocalMediaLoader;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$2;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I
    .locals 2

    .line 221
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p1

    .line 225
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 218
    check-cast p1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/model/LocalMediaLoader$2;->compare(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I

    move-result p1

    return p1
.end method
