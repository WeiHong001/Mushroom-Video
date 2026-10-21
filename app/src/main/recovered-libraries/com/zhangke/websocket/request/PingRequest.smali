.class public Lcom/zhangke/websocket/request/PingRequest;
.super Ljava/lang/Object;
.source "PingRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releasePingRequest(Lcom/zhangke/websocket/request/PingRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Lorg/java_websocket/client/WebSocketClient;->sendPing()V

    return-void
.end method

.method public setRequestData(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
