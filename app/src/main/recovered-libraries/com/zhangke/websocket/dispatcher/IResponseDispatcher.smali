.class public interface abstract Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;
.super Ljava/lang/Object;
.source "IResponseDispatcher.java"


# virtual methods
.method public abstract onConnectFailed(Ljava/lang/Throwable;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onConnected(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onDisconnect(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onMessage(Ljava/lang/String;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onMessage(Ljava/nio/ByteBuffer;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onPing(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onPong(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method

.method public abstract onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
.end method
