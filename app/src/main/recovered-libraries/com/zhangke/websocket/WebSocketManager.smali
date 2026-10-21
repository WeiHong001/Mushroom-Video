.class public Lcom/zhangke/websocket/WebSocketManager;
.super Ljava/lang/Object;
.source "WebSocketManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WSManager"


# instance fields
.field private destroyed:Z

.field private disconnect:Z

.field private mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

.field private mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

.field private mResponseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

.field private mSetting:Lcom/zhangke/websocket/WebSocketSetting;

.field private mSocketWrapperListener:Lcom/zhangke/websocket/SocketWrapperListener;

.field private mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

.field private mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;


# direct methods
.method constructor <init>(Lcom/zhangke/websocket/WebSocketSetting;Lcom/zhangke/websocket/WebSocketEngine;Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->destroyed:Z

    .line 48
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->disconnect:Z

    .line 56
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    .line 57
    iput-object p2, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    .line 58
    iput-object p3, p0, Lcom/zhangke/websocket/WebSocketManager;->mResponseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    .line 60
    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDelivery()Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object p1

    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;

    invoke-direct {p1}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;-><init>()V

    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketManager;->getSocketWrapperListener()Lcom/zhangke/websocket/SocketWrapperListener;

    move-result-object p1

    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mSocketWrapperListener:Lcom/zhangke/websocket/SocketWrapperListener;

    .line 65
    iget-object p2, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    if-nez p2, :cond_1

    .line 66
    new-instance p2, Lcom/zhangke/websocket/WebSocketWrapper;

    iget-object p3, p0, Lcom/zhangke/websocket/WebSocketManager;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    invoke-direct {p2, p3, p1}, Lcom/zhangke/websocket/WebSocketWrapper;-><init>(Lcom/zhangke/websocket/WebSocketSetting;Lcom/zhangke/websocket/SocketWrapperListener;)V

    iput-object p2, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketManager;->start()Lcom/zhangke/websocket/WebSocketManager;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zhangke/websocket/WebSocketManager;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zhangke/websocket/WebSocketManager;Lcom/zhangke/websocket/ReconnectManager;)Lcom/zhangke/websocket/ReconnectManager;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zhangke/websocket/WebSocketManager;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/zhangke/websocket/WebSocketManager;->disconnect:Z

    return p0
.end method

.method static synthetic access$400(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketManager;->getDefaultReconnectManager()Lcom/zhangke/websocket/ReconnectManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/zhangke/websocket/WebSocketManager;->mResponseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    return-object p0
.end method

.method private getDefaultReconnectManager()Lcom/zhangke/websocket/ReconnectManager;
    .locals 2

    .line 316
    new-instance v0, Lcom/zhangke/websocket/DefaultReconnectManager;

    new-instance v1, Lcom/zhangke/websocket/WebSocketManager$1;

    invoke-direct {v1, p0}, Lcom/zhangke/websocket/WebSocketManager$1;-><init>(Lcom/zhangke/websocket/WebSocketManager;)V

    invoke-direct {v0, p0, v1}, Lcom/zhangke/websocket/DefaultReconnectManager;-><init>(Lcom/zhangke/websocket/WebSocketManager;Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;)V

    return-object v0
.end method

.method private getSocketWrapperListener()Lcom/zhangke/websocket/SocketWrapperListener;
    .locals 1

    .line 335
    new-instance v0, Lcom/zhangke/websocket/WebSocketManager$2;

    invoke-direct {v0, p0}, Lcom/zhangke/websocket/WebSocketManager$2;-><init>(Lcom/zhangke/websocket/WebSocketManager;)V

    return-object v0
.end method

.method private sendRequest(Lcom/zhangke/websocket/request/Request;)V
    .locals 3

    .line 305
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->destroyed:Z

    if-eqz v0, :cond_0

    const-string p1, "WSManager"

    const-string v0, "This WebSocketManager is destroyed!"

    .line 306
    invoke-static {p1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketManager;->mSocketWrapperListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/zhangke/websocket/WebSocketEngine;->sendRequest(Lcom/zhangke/websocket/WebSocketWrapper;Lcom/zhangke/websocket/request/Request;Lcom/zhangke/websocket/SocketWrapperListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/zhangke/websocket/SocketListener;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    invoke-interface {v0, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->addListener(Lcom/zhangke/websocket/SocketListener;)V

    return-object p0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->destroyed:Z

    .line 263
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    invoke-virtual {v2, v0}, Lcom/zhangke/websocket/WebSocketEngine;->destroyWebSocket(Lcom/zhangke/websocket/WebSocketWrapper;)V

    .line 265
    iput-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    .line 266
    iput-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v0}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    invoke-interface {v0}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->clear()V

    .line 272
    :cond_1
    iput-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    if-eqz v0, :cond_4

    .line 275
    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->reconnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->stopReconnect()V

    .line 278
    :cond_3
    iput-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    :cond_4
    return-void
.end method

.method public disConnect()Lcom/zhangke/websocket/WebSocketManager;
    .locals 3

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->disconnect:Z

    .line 136
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->destroyed:Z

    if-eqz v0, :cond_0

    const-string v0, "WSManager"

    const-string v1, "This WebSocketManager is destroyed!"

    .line 137
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketWrapper;->getConnectState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketManager;->mSocketWrapperListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-virtual {v0, v1, v2}, Lcom/zhangke/websocket/WebSocketEngine;->disConnect(Lcom/zhangke/websocket/WebSocketWrapper;Lcom/zhangke/websocket/SocketWrapperListener;)V

    :cond_1
    return-object p0
.end method

.method public getSetting()Lcom/zhangke/websocket/WebSocketSetting;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    return-object v0
.end method

.method public isConnect()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketWrapper;->getConnectState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reconnect()Lcom/zhangke/websocket/WebSocketManager;
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->disconnect:Z

    .line 104
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/zhangke/websocket/WebSocketManager;->getDefaultReconnectManager()Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->reconnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->startReconnect()V

    :cond_1
    return-object p0
.end method

.method public reconnect(Lcom/zhangke/websocket/WebSocketSetting;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->disconnect:Z

    .line 118
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->destroyed:Z

    if-eqz v0, :cond_0

    const-string p1, "WSManager"

    const-string v0, "This WebSocketManager is destroyed!"

    .line 119
    invoke-static {p1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    .line 123
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketWrapper;->destroy()V

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketManager;->start()Lcom/zhangke/websocket/WebSocketManager;

    return-object p0
.end method

.method reconnectOnce()V
    .locals 3

    .line 287
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketManager;->destroyed:Z

    const-string v1, "WSManager"

    if-eqz v0, :cond_0

    const-string v0, "This WebSocketManager is destroyed!"

    .line 288
    invoke-static {v1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketWrapper;->getConnectState()I

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketManager;->mSocketWrapperListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-virtual {v0, v1, v2}, Lcom/zhangke/websocket/WebSocketEngine;->connect(Lcom/zhangke/websocket/WebSocketWrapper;Lcom/zhangke/websocket/SocketWrapperListener;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    if-eqz v0, :cond_2

    .line 295
    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->onConnected()V

    :cond_2
    const-string v0, "WebSocket \u5df2\u8fde\u63a5\uff0c\u8bf7\u52ff\u91cd\u8bd5\u3002"

    .line 297
    invoke-static {v1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeListener(Lcom/zhangke/websocket/SocketListener;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    invoke-interface {v0, p1}, Lcom/zhangke/websocket/dispatcher/ResponseDelivery;->removeListener(Lcom/zhangke/websocket/SocketListener;)V

    return-object p0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createStringRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    .line 154
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/request/Request;->setRequestData(Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createByteBufferRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    .line 178
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/request/Request;->setRequestData(Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public send([B)V
    .locals 1

    if-eqz p1, :cond_1

    .line 162
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createByteArrayRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    .line 166
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/request/Request;->setRequestData(Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createCollectionFrameRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    .line 228
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/request/Request;->setRequestData(Ljava/lang/Object;)V

    .line 229
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public sendFrame(Lorg/java_websocket/framing/Framedata;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createFrameDataRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    .line 216
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/request/Request;->setRequestData(Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public sendPing()V
    .locals 1

    .line 186
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createPingRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public sendPong()V
    .locals 1

    .line 193
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createPongRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public sendPong(Lorg/java_websocket/framing/PingFrame;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/request/RequestFactory;->createPongRequest()Lcom/zhangke/websocket/request/Request;

    move-result-object v0

    .line 204
    invoke-interface {v0, p1}, Lcom/zhangke/websocket/request/Request;->setRequestData(Ljava/lang/Object;)V

    .line 205
    invoke-direct {p0, v0}, Lcom/zhangke/websocket/WebSocketManager;->sendRequest(Lcom/zhangke/websocket/request/Request;)V

    return-void
.end method

.method public setReconnectManager(Lcom/zhangke/websocket/ReconnectManager;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager;->mReconnectManager:Lcom/zhangke/websocket/ReconnectManager;

    return-void
.end method

.method public start()Lcom/zhangke/websocket/WebSocketManager;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/zhangke/websocket/WebSocketWrapper;

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager;->mSetting:Lcom/zhangke/websocket/WebSocketSetting;

    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketManager;->mSocketWrapperListener:Lcom/zhangke/websocket/SocketWrapperListener;

    invoke-direct {v0, v1, v2}, Lcom/zhangke/websocket/WebSocketWrapper;-><init>(Lcom/zhangke/websocket/WebSocketSetting;Lcom/zhangke/websocket/SocketWrapperListener;)V

    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager;->mWebSocket:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketWrapper;->getConnectState()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketManager;->reconnect()Lcom/zhangke/websocket/WebSocketManager;

    :cond_1
    return-object p0
.end method
