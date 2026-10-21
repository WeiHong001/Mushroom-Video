.class Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;
.super Landroid/os/AsyncTask;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final decoderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private exception:Ljava/lang/Exception;

.field private final tileRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)V
    .locals 1

    .line 1581
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 1583
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->decoderRef:Ljava/lang/ref/WeakReference;

    .line 1584
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->tileRef:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 1585
    invoke-static {p3, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4002(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1591
    :try_start_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    .line 1592
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->decoderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;

    .line 1593
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->tileRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1594
    invoke-interface {v0}, Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$400(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TileLoadTask.doInBackground, tile.sRect=%s, tile.sampleSize=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1595
    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1, v3, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1596
    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5700(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    :try_start_1
    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4100(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$5000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5800(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1599
    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1600
    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$5000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 1602
    :cond_0
    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$5000(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4300(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/ImageRegionDecoder;->decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    .line 1603
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    if-eqz v1, :cond_2

    .line 1605
    invoke-static {v1, v2}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4002(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1611
    invoke-static {}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile - OutOfMemoryError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1608
    invoke-static {}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1609
    iput-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1575
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1619
    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    .line 1620
    iget-object v1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->tileRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 1623
    invoke-static {v1, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$502(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 1624
    invoke-static {v1, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;->access$4002(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$Tile;Z)Z

    .line 1625
    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5900(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    goto :goto_0

    .line 1626
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1627
    invoke-static {v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->access$5600(Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->exception:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$OnImageEventListener;->onTileLoadError(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1575
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView$TileLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
