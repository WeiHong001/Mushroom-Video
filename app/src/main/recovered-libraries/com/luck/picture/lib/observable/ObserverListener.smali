.class public interface abstract Lcom/luck/picture/lib/observable/ObserverListener;
.super Ljava/lang/Object;
.source "ObserverListener.java"


# virtual methods
.method public abstract observerUpFoldersData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract observerUpSelectsData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation
.end method
