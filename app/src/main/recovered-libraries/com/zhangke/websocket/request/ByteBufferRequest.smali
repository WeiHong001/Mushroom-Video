.class public Lcom/zhangke/websocket/request/ByteBufferRequest;
.super Ljava/lang/Object;
.source "ByteBufferRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestData()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/zhangke/websocket/request/ByteBufferRequest;->getRequestData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/zhangke/websocket/request/ByteBufferRequest;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releaseByteBufferRequest(Lcom/zhangke/websocket/request/ByteBufferRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zhangke/websocket/request/ByteBufferRequest;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lorg/java_websocket/client/WebSocketClient;->send(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic setRequestData(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/request/ByteBufferRequest;->setRequestData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setRequestData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zhangke/websocket/request/ByteBufferRequest;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/request/ByteBufferRequest;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@ByteBufferRequest%s,ByteBuffer:%s]"

    .line 41
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
