.class public Lcom/zhangke/websocket/request/FrameDataRequest;
.super Ljava/lang/Object;
.source "FrameDataRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "Lorg/java_websocket/framing/Framedata;",
        ">;"
    }
.end annotation


# instance fields
.field private framedata:Lorg/java_websocket/framing/Framedata;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/zhangke/websocket/request/FrameDataRequest;->getRequestData()Lorg/java_websocket/framing/Framedata;

    move-result-object v0

    return-object v0
.end method

.method public getRequestData()Lorg/java_websocket/framing/Framedata;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/zhangke/websocket/request/FrameDataRequest;->framedata:Lorg/java_websocket/framing/Framedata;

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releaseFrameDataRequest(Lcom/zhangke/websocket/request/FrameDataRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/zhangke/websocket/request/FrameDataRequest;->framedata:Lorg/java_websocket/framing/Framedata;

    invoke-virtual {p1, v0}, Lorg/java_websocket/client/WebSocketClient;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public bridge synthetic setRequestData(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lorg/java_websocket/framing/Framedata;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/request/FrameDataRequest;->setRequestData(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public setRequestData(Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/zhangke/websocket/request/FrameDataRequest;->framedata:Lorg/java_websocket/framing/Framedata;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/request/FrameDataRequest;->framedata:Lorg/java_websocket/framing/Framedata;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@FrameDataRequest%s,Framedata:%s]"

    .line 40
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
