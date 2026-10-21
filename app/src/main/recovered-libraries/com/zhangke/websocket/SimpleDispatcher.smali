.class public abstract Lcom/zhangke/websocket/SimpleDispatcher;
.super Ljava/lang/Object;
.source "SimpleDispatcher.java"

# interfaces
.implements Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Throwable;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 26
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onConnectFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onConnected(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 21
    invoke-interface {p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onConnected()V

    return-void
.end method

.method public onDisconnect(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 31
    invoke-interface {p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onDisconnect()V

    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-interface {p2, p1, v0}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public onPing(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 41
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onPing(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public onPong(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 46
    invoke-interface {p2, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->onPong(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method
