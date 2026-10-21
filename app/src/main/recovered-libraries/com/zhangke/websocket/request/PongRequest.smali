.class public Lcom/zhangke/websocket/request/PongRequest;
.super Ljava/lang/Object;
.source "PongRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "Lorg/java_websocket/framing/PingFrame;",
        ">;"
    }
.end annotation


# static fields
.field private static PONG_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/java_websocket/framing/PongFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pingFrame:Lorg/java_websocket/framing/PingFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/PongRequest;->PONG_POOL:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPongFrame()Lorg/java_websocket/framing/PongFrame;
    .locals 1

    .line 62
    sget-object v0, Lcom/zhangke/websocket/request/PongRequest;->PONG_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/java_websocket/framing/PongFrame;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lorg/java_websocket/framing/PongFrame;

    invoke-direct {v0}, Lorg/java_websocket/framing/PongFrame;-><init>()V

    :cond_0
    return-object v0
.end method

.method private offerPongFrame(Lorg/java_websocket/framing/PongFrame;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/zhangke/websocket/request/PongRequest;->pingFrame:Lorg/java_websocket/framing/PingFrame;

    .line 71
    sget-object v0, Lcom/zhangke/websocket/request/PongRequest;->PONG_POOL:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestData()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/zhangke/websocket/request/PongRequest;->getRequestData()Lorg/java_websocket/framing/PingFrame;

    move-result-object v0

    return-object v0
.end method

.method public getRequestData()Lorg/java_websocket/framing/PingFrame;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zhangke/websocket/request/PongRequest;->pingFrame:Lorg/java_websocket/framing/PingFrame;

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releasePongRequest(Lcom/zhangke/websocket/request/PongRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/zhangke/websocket/request/PongRequest;->getPongFrame()Lorg/java_websocket/framing/PongFrame;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/zhangke/websocket/request/PongRequest;->pingFrame:Lorg/java_websocket/framing/PingFrame;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lorg/java_websocket/framing/PingFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/java_websocket/framing/PongFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 39
    iput-object v2, p0, Lcom/zhangke/websocket/request/PongRequest;->pingFrame:Lorg/java_websocket/framing/PingFrame;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, v2}, Lorg/java_websocket/framing/PongFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Lorg/java_websocket/client/WebSocketClient;->sendFrame(Lorg/java_websocket/framing/Framedata;)V

    .line 44
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/request/PongRequest;->offerPongFrame(Lorg/java_websocket/framing/PongFrame;)V

    return-void
.end method

.method public bridge synthetic setRequestData(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lorg/java_websocket/framing/PingFrame;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/request/PongRequest;->setRequestData(Lorg/java_websocket/framing/PingFrame;)V

    return-void
.end method

.method public setRequestData(Lorg/java_websocket/framing/PingFrame;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zhangke/websocket/request/PongRequest;->pingFrame:Lorg/java_websocket/framing/PingFrame;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/request/PongRequest;->pingFrame:Lorg/java_websocket/framing/PingFrame;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1}, Lorg/java_websocket/framing/PingFrame;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@PongRequest%s,PingFrame:%s]"

    .line 54
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
