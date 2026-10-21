.class public interface abstract Lcom/zhangke/websocket/SocketWrapperListener;
.super Ljava/lang/Object;
.source "SocketWrapperListener.java"


# virtual methods
.method public abstract onConnectFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onMessage(Lcom/zhangke/websocket/response/Response;)V
.end method

.method public abstract onSendDataError(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V
.end method
