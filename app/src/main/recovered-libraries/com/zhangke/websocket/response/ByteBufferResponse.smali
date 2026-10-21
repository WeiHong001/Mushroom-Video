.class public Lcom/zhangke/websocket/response/ByteBufferResponse;
.super Ljava/lang/Object;
.source "ByteBufferResponse.java"

# interfaces
.implements Lcom/zhangke/websocket/response/Response;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/response/Response<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/zhangke/websocket/response/ByteBufferResponse;->getResponseData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getResponseData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/zhangke/websocket/response/ByteBufferResponse;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public onResponse(Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/zhangke/websocket/response/ByteBufferResponse;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, p2}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onMessage(Ljava/nio/ByteBuffer;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    .line 33
    invoke-virtual {p0}, Lcom/zhangke/websocket/response/ByteBufferResponse;->release()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/zhangke/websocket/response/ResponseFactory;->releaseByteBufferResponse(Lcom/zhangke/websocket/response/ByteBufferResponse;)V

    return-void
.end method

.method public bridge synthetic setResponseData(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/response/ByteBufferResponse;->setResponseData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setResponseData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zhangke/websocket/response/ByteBufferResponse;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/response/ByteBufferResponse;->data:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@ByteBufferResponse%s->ByteBuffer:%s]"

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
