.class public Lcom/zhangke/websocket/request/CollectionFrameDataRequest;
.super Ljava/lang/Object;
.source "CollectionFrameDataRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "Ljava/util/Collection<",
        "Lorg/java_websocket/framing/Framedata;",
        ">;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->getRequestData()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRequestData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->data:Ljava/util/Collection;

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releaseCollectionFrameRequest(Lcom/zhangke/websocket/request/CollectionFrameDataRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->data:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lorg/java_websocket/client/WebSocketClient;->sendFrame(Ljava/util/Collection;)V

    return-void
.end method

.method public bridge synthetic setRequestData(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->setRequestData(Ljava/util/Collection;)V

    return-void
.end method

.method public setRequestData(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->data:Ljava/util/Collection;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->data:Ljava/util/Collection;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;->data:Ljava/util/Collection;

    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@CollectionFrameDataRequest%s,Collection<Framedata>:%s]"

    .line 42
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
