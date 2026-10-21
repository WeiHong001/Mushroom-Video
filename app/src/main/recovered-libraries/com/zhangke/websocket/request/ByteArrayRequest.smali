.class public Lcom/zhangke/websocket/request/ByteArrayRequest;
.super Ljava/lang/Object;
.source "ByteArrayRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "[B>;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestData()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/zhangke/websocket/request/ByteArrayRequest;->getRequestData()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequestData()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/zhangke/websocket/request/ByteArrayRequest;->data:[B

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releaseByteArrayRequest(Lcom/zhangke/websocket/request/ByteArrayRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/zhangke/websocket/request/ByteArrayRequest;->data:[B

    invoke-virtual {p1, v0}, Lorg/java_websocket/client/WebSocketClient;->send([B)V

    return-void
.end method

.method public bridge synthetic setRequestData(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/request/ByteArrayRequest;->setRequestData([B)V

    return-void
.end method

.method public setRequestData([B)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/zhangke/websocket/request/ByteArrayRequest;->data:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/request/ByteArrayRequest;->data:[B

    if-nez v1, :cond_0

    const-string v1, "data:null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data.length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zhangke/websocket/request/ByteArrayRequest;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@ByteArrayRequest%s,%s]"

    .line 39
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
