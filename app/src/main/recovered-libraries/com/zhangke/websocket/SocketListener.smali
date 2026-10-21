.class public interface abstract Lcom/zhangke/websocket/SocketListener;
.super Ljava/lang/Object;
.source "SocketListener.java"


# virtual methods
.method public abstract onConnectFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract onPing(Lorg/java_websocket/framing/Framedata;)V
.end method

.method public abstract onPong(Lorg/java_websocket/framing/Framedata;)V
.end method

.method public abstract onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;)V
.end method
