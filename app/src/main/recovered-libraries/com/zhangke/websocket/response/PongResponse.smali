.class public Lcom/zhangke/websocket/response/PongResponse;
.super Ljava/lang/Object;
.source "PongResponse.java"

# interfaces
.implements Lcom/zhangke/websocket/response/Response;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/response/Response<",
        "Lorg/java_websocket/framing/Framedata;",
        ">;"
    }
.end annotation


# instance fields
.field private framedata:Lorg/java_websocket/framing/Framedata;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/zhangke/websocket/response/PongResponse;->getResponseData()Lorg/java_websocket/framing/Framedata;

    move-result-object v0

    return-object v0
.end method

.method public getResponseData()Lorg/java_websocket/framing/Framedata;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/zhangke/websocket/response/PongResponse;->framedata:Lorg/java_websocket/framing/Framedata;

    return-object v0
.end method

.method public onResponse(Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/zhangke/websocket/response/PongResponse;->framedata:Lorg/java_websocket/framing/Framedata;

    invoke-interface {p1, v0, p2}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onPong(Lorg/java_websocket/framing/Framedata;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/zhangke/websocket/response/PongResponse;->framedata:Lorg/java_websocket/framing/Framedata;

    .line 39
    invoke-static {p0}, Lcom/zhangke/websocket/response/ResponseFactory;->releasePongResponse(Lcom/zhangke/websocket/response/PongResponse;)V

    return-void
.end method

.method public bridge synthetic setResponseData(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/java_websocket/framing/Framedata;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/response/PongResponse;->setResponseData(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public setResponseData(Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zhangke/websocket/response/PongResponse;->framedata:Lorg/java_websocket/framing/Framedata;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/response/PongResponse;->framedata:Lorg/java_websocket/framing/Framedata;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@PongResponse%s->Framedata:%s]"

    .line 44
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
