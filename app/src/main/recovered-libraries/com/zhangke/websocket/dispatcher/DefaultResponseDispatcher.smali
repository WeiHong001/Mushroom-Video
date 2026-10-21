.class public Lcom/zhangke/websocket/dispatcher/DefaultResponseDispatcher;
.super Ljava/lang/Object;
.source "DefaultResponseDispatcher.java"

# interfaces
.implements Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Throwable;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 23
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onConnectFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onConnected(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 18
    invoke-interface {p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onConnected()V

    return-void
.end method

.method public onDisconnect(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 28
    invoke-interface {p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onDisconnect()V

    return-void
.end method

.method public onMessage(Ljava/lang/String;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-interface {p2, p1, v0}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-interface {p2, p1, v0}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public onPing(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 43
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onPing(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public onPong(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 48
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onPong(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 53
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;)V

    return-void
.end method
