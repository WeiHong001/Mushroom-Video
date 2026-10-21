.class public interface abstract Lcom/zhangke/websocket/ReconnectManager;
.super Ljava/lang/Object;
.source "ReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract onConnectError(Ljava/lang/Throwable;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract reconnecting()Z
.end method

.method public abstract startReconnect()V
.end method

.method public abstract stopReconnect()V
.end method
