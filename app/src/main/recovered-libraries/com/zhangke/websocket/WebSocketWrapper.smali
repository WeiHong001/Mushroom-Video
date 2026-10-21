.class public Lcom/zhangke/websocket/WebSocketWrapper;
.super Ljava/lang/Object;
.source "WebSocketWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WSWrapper"


# instance fields
.field private connectStatus:I

.field private destroyed:Z

.field private mSetting:Lcom/zhangke/websocket/WebSocketSetting;

.field private mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

.field private mWebSocket:Lorg/java_websocket/client/WebSocketClient;

.field private needClose:Z


# direct methods
.method constructor <init>(Lcom/zhangke/websocket/WebSocketSetting;Lcom/zhangke/websocket/SocketWrapperListener;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 50
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    .line 54
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    .line 57
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    .line 58
    iput-object p2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangke/websocket/WebSocketWrapper;Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackOpen(Lorg/java_websocket/handshake/ServerHandshake;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zhangke/websocket/WebSocketWrapper;Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackWebsocketPing(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zhangke/websocket/WebSocketWrapper;Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackWebsocketPong(Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zhangke/websocket/WebSocketWrapper;ILjava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackClose(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/lang/Exception;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->onWSCallbackError(Ljava/lang/Exception;)V

    return-void
.end method

.method private checkDestroy()V
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->releaseResource()V

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "WSWrapper"

    const-string v2, "checkDestroy(WebSocketClient)"

    .line 219
    invoke-static {v1, v2, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onWSCallbackClose(ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 307
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "WebSocket closed!code=%s,reason:%s,remote:%s"

    .line 304
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WSWrapper"

    invoke-static {p2, p1}, Lcom/zhangke/websocket/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz p1, :cond_0

    .line 309
    invoke-interface {p1}, Lcom/zhangke/websocket/SocketWrapperListener;->onDisconnect()V

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void
.end method

.method private onWSCallbackError(Ljava/lang/Exception;)V
    .locals 2

    .line 315
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void

    :cond_0
    const-string v0, "WSWrapper"

    const-string v1, "WebSocketClient#onError(Exception)"

    .line 319
    invoke-static {v0, v1, p1}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onWSCallbackMessage(Ljava/lang/String;)V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 251
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 252
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_1

    .line 253
    invoke-static {}, Lcom/zhangke/websocket/response/ResponseFactory;->createTextResponse()Lcom/zhangke/websocket/response/Response;

    move-result-object v0

    .line 254
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/response/Response;->setResponseData(Ljava/lang/Object;)V

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket received message:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WSWrapper"

    invoke-static {v1, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-interface {p1, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onMessage(Lcom/zhangke/websocket/response/Response;)V

    :cond_1
    return-void
.end method

.method private onWSCallbackMessage(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 261
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 265
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 266
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/zhangke/websocket/response/ResponseFactory;->createByteBufferResponse()Lcom/zhangke/websocket/response/Response;

    move-result-object v0

    .line 268
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/response/Response;->setResponseData(Ljava/lang/Object;)V

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket received message:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WSWrapper"

    invoke-static {v1, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-interface {p1, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onMessage(Lcom/zhangke/websocket/response/Response;)V

    :cond_1
    return-void
.end method

.method private onWSCallbackOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 1

    .line 231
    iget-boolean p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 235
    iput p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    const-string p1, "WSWrapper"

    const-string v0, "WebSocket connect success"

    .line 236
    invoke-static {p1, v0}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-boolean p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->disConnect()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz p1, :cond_2

    .line 241
    invoke-interface {p1}, Lcom/zhangke/websocket/SocketWrapperListener;->onConnected()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onWSCallbackWebsocketPing(Lorg/java_websocket/framing/Framedata;)V
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 279
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 280
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_1

    .line 281
    invoke-static {}, Lcom/zhangke/websocket/response/ResponseFactory;->createPingResponse()Lcom/zhangke/websocket/response/Response;

    move-result-object v0

    .line 282
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/response/Response;->setResponseData(Ljava/lang/Object;)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket received ping:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WSWrapper"

    invoke-static {v1, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-interface {p1, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onMessage(Lcom/zhangke/websocket/response/Response;)V

    :cond_1
    return-void
.end method

.method private onWSCallbackWebsocketPong(Lorg/java_websocket/framing/Framedata;)V
    .locals 2

    .line 289
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 293
    iput v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 294
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_1

    .line 295
    invoke-static {}, Lcom/zhangke/websocket/response/ResponseFactory;->createPongResponse()Lcom/zhangke/websocket/response/Response;

    move-result-object v0

    .line 296
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/response/Response;->setResponseData(Ljava/lang/Object;)V

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket received pong:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WSWrapper"

    invoke-static {v1, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-interface {p1, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onMessage(Lcom/zhangke/websocket/response/Response;)V

    :cond_1
    return-void
.end method

.method private releaseResource()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    :cond_0
    return-void
.end method


# virtual methods
.method connect()V
    .locals 9

    const-string v0, "WSWrapper"

    .line 62
    iget-boolean v1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    .line 66
    iget v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    if-nez v2, :cond_8

    const/4 v2, 0x1

    .line 67
    iput v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    if-nez v2, :cond_6

    .line 70
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-virtual {v2}, Lcom/zhangke/websocket/WebSocketSetting;->getConnectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 73
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-virtual {v2}, Lcom/zhangke/websocket/WebSocketSetting;->getDraft()Lorg/java_websocket/drafts/Draft;

    move-result-object v2

    if-nez v2, :cond_1

    .line 75
    new-instance v2, Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {v2}, Lorg/java_websocket/drafts/Draft_6455;-><init>()V

    :cond_1
    move-object v6, v2

    .line 77
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-virtual {v2}, Lcom/zhangke/websocket/WebSocketSetting;->getConnectTimeout()I

    move-result v2

    if-gtz v2, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    move v8, v2

    .line 81
    :goto_0
    new-instance v2, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;

    new-instance v5, Ljava/net/URI;

    iget-object v3, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    .line 82
    invoke-virtual {v3}, Lcom/zhangke/websocket/WebSocketSetting;->getConnectUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    .line 84
    invoke-virtual {v3}, Lcom/zhangke/websocket/WebSocketSetting;->getHttpHeaders()Ljava/util/Map;

    move-result-object v7

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;-><init>(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    iput-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    const-string v2, "WebSocket start connect..."

    .line 86
    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-virtual {v2}, Lcom/zhangke/websocket/WebSocketSetting;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    iget-object v3, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-virtual {v3}, Lcom/zhangke/websocket/WebSocketSetting;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/java_websocket/client/WebSocketClient;->setProxy(Ljava/net/Proxy;)V

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v2}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    .line 91
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    iget-object v3, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-virtual {v3}, Lcom/zhangke/websocket/WebSocketSetting;->getConnectionLostTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/java_websocket/client/WebSocketClient;->setConnectionLostTimeout(I)V

    .line 92
    iget-boolean v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->disConnect()V

    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V

    goto :goto_1

    .line 71
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "WebSocket connect url is empty!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v2, "WebSocket reconnecting..."

    .line 97
    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v2}, Lorg/java_websocket/client/WebSocketClient;->reconnect()V

    .line 99
    iget-boolean v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    if-eqz v2, :cond_7

    .line 100
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->disConnect()V

    .line 102
    :cond_7
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->checkDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 105
    iput v1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    const-string v1, "WebSocket connect failed:"

    .line 106
    invoke-static {v0, v1, v2}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_8

    .line 108
    invoke-interface {v0, v2}, Lcom/zhangke/websocket/SocketWrapperListener;->onConnectFailed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->destroyed:Z

    .line 203
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->disConnect()V

    .line 204
    iget v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->releaseResource()V

    return-void
.end method

.method disConnect()V
    .locals 2

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    .line 129
    iget v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "WSWrapper"

    const-string v1, "WebSocket disconnecting..."

    .line 130
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lorg/java_websocket/client/WebSocketClient;->close()V

    :cond_0
    const-string v1, "WebSocket disconnected"

    .line 134
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method getConnectState()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    return v0
.end method

.method reconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->needClose:Z

    .line 119
    iget v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketWrapper;->connect()V

    :cond_0
    return-void
.end method

.method send(Lcom/zhangke/websocket/request/Request;)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mWebSocket:Lorg/java_websocket/client/WebSocketClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "WSWrapper"

    if-nez p1, :cond_1

    const-string p1, "send data is null!"

    .line 148
    invoke-static {v1, p1}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_1
    iget v2, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 153
    :try_start_0
    invoke-interface {p1, v0}, Lcom/zhangke/websocket/request/Request;->send(Lorg/java_websocket/client/WebSocketClient;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send success:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/zhangke/websocket/request/Request;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 166
    :try_start_1
    iput v4, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception,send failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 170
    invoke-interface {v1, p1, v2, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onSendDataError(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    iput v4, p0, Lcom/zhangke/websocket/WebSocketWrapper;->connectStatus:I

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ws is disconnected, send failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v1, :cond_2

    .line 160
    invoke-interface {v1, p1, v4, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onSendDataError(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V

    .line 163
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-interface {v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onDisconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 175
    invoke-interface {p1}, Lcom/zhangke/websocket/request/Request;->release()V

    .line 176
    throw v0

    .line 178
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocket not connect,send failed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper;->mSocketListener:Lcom/zhangke/websocket/SocketWrapperListener;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 181
    invoke-interface {v0, p1, v4, v1}, Lcom/zhangke/websocket/SocketWrapperListener;->onSendDataError(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
