.class public Lcom/zhangke/websocket/response/ResponseFactory;
.super Ljava/lang/Object;
.source "ResponseFactory.java"


# static fields
.field private static BYTE_BUFFER_RESPONSE_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/response/ByteBufferResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static ERROR_RESPONSE_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/response/ErrorResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static PING_RESPONSE_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/response/PingResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static PONG_RESPONSE_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/response/PongResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final POOL_SIZE:I = 0x7

.field private static TEXT_RESPONSE_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/response/TextResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->ERROR_RESPONSE_POOL:Ljava/util/Queue;

    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->TEXT_RESPONSE_POOL:Ljava/util/Queue;

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->BYTE_BUFFER_RESPONSE_POOL:Ljava/util/Queue;

    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->PING_RESPONSE_POOL:Ljava/util/Queue;

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->PONG_RESPONSE_POOL:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteBufferResponse()Lcom/zhangke/websocket/response/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/response/Response<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->BYTE_BUFFER_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/response/Response;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/zhangke/websocket/response/ByteBufferResponse;

    invoke-direct {v0}, Lcom/zhangke/websocket/response/ByteBufferResponse;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createErrorResponse()Lcom/zhangke/websocket/response/ErrorResponse;
    .locals 1

    .line 24
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->ERROR_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/response/ErrorResponse;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/zhangke/websocket/response/ErrorResponse;

    invoke-direct {v0}, Lcom/zhangke/websocket/response/ErrorResponse;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createPingResponse()Lcom/zhangke/websocket/response/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/response/Response<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->PING_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/response/Response;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/zhangke/websocket/response/PingResponse;

    invoke-direct {v0}, Lcom/zhangke/websocket/response/PingResponse;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createPongResponse()Lcom/zhangke/websocket/response/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/response/Response<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->PONG_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/response/Response;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/zhangke/websocket/response/PongResponse;

    invoke-direct {v0}, Lcom/zhangke/websocket/response/PongResponse;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createTextResponse()Lcom/zhangke/websocket/response/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/response/Response<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->TEXT_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/response/Response;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/zhangke/websocket/response/TextResponse;

    invoke-direct {v0}, Lcom/zhangke/websocket/response/TextResponse;-><init>()V

    :cond_0
    return-object v0
.end method

.method static releaseByteBufferResponse(Lcom/zhangke/websocket/response/ByteBufferResponse;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->BYTE_BUFFER_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releaseErrorResponse(Lcom/zhangke/websocket/response/ErrorResponse;)V
    .locals 1

    .line 64
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->ERROR_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releasePingResponse(Lcom/zhangke/websocket/response/PingResponse;)V
    .locals 1

    .line 76
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->PING_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releasePongResponse(Lcom/zhangke/websocket/response/PongResponse;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->PONG_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releaseTextResponse(Lcom/zhangke/websocket/response/TextResponse;)V
    .locals 1

    .line 68
    sget-object v0, Lcom/zhangke/websocket/response/ResponseFactory;->TEXT_RESPONSE_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
