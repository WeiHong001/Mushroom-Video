.class public Lcom/zhangke/websocket/request/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# static fields
.field private static BYTE_ARRAY_REQUEST_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/ByteArrayRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static BYTE_BUFFER_REQUEST_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/ByteBufferRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static COLLECTION_FRAME_REQUEST_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/CollectionFrameDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static FRAME_DATA_REQUEST_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/FrameDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static PING_REQUEST_POOL:Ljava/util/Queue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/PingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLL_SIZE:I = 0x7

.field private static PONG_REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/PongRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static STRING_REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/request/StringRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->BYTE_ARRAY_REQUEST_POOL:Ljava/util/Queue;

    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->BYTE_BUFFER_REQUEST_POOL:Ljava/util/Queue;

    .line 21
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->STRING_REQUEST_POOL:Ljava/util/Queue;

    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->PING_REQUEST_POOL:Ljava/util/Queue;

    .line 23
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->PONG_REQUEST_POOL:Ljava/util/Queue;

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->FRAME_DATA_REQUEST_POOL:Ljava/util/Queue;

    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/request/RequestFactory;->COLLECTION_FRAME_REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteArrayRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/request/Request<",
            "[B>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->BYTE_ARRAY_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/zhangke/websocket/request/ByteArrayRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/ByteArrayRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createByteBufferRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/request/Request<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->BYTE_BUFFER_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/zhangke/websocket/request/ByteBufferRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/ByteBufferRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createCollectionFrameRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/request/Request<",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;>;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->COLLECTION_FRAME_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/CollectionFrameDataRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createFrameDataRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/request/Request<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->FRAME_DATA_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/zhangke/websocket/request/FrameDataRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/FrameDataRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createPingRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1

    .line 52
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->PING_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/zhangke/websocket/request/PingRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/PingRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createPongRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/request/Request<",
            "Lorg/java_websocket/framing/PingFrame;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->PONG_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/zhangke/websocket/request/PongRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/PongRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static createStringRequest()Lcom/zhangke/websocket/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhangke/websocket/request/Request<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->STRING_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/request/Request;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/zhangke/websocket/request/StringRequest;

    invoke-direct {v0}, Lcom/zhangke/websocket/request/StringRequest;-><init>()V

    :cond_0
    return-object v0
.end method

.method static releaseByteArrayRequest(Lcom/zhangke/websocket/request/ByteArrayRequest;)V
    .locals 1

    .line 84
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->BYTE_ARRAY_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releaseByteBufferRequest(Lcom/zhangke/websocket/request/ByteBufferRequest;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->BYTE_BUFFER_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releaseCollectionFrameRequest(Lcom/zhangke/websocket/request/CollectionFrameDataRequest;)V
    .locals 1

    .line 108
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->COLLECTION_FRAME_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releaseFrameDataRequest(Lcom/zhangke/websocket/request/FrameDataRequest;)V
    .locals 1

    .line 104
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->FRAME_DATA_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releasePingRequest(Lcom/zhangke/websocket/request/PingRequest;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->PING_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releasePongRequest(Lcom/zhangke/websocket/request/PongRequest;)V
    .locals 1

    .line 100
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->PONG_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method static releaseStringRequest(Lcom/zhangke/websocket/request/StringRequest;)V
    .locals 1

    .line 92
    sget-object v0, Lcom/zhangke/websocket/request/RequestFactory;->STRING_REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
