.class public Lcom/zhangke/websocket/WebSocketSetting;
.super Ljava/lang/Object;
.source "WebSocketSetting.java"


# instance fields
.field private connectTimeout:I

.field private connectUrl:Ljava/lang/String;

.field private connectionLostTimeout:I

.field private draft:Lorg/java_websocket/drafts/Draft;

.field private httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Ljava/net/Proxy;

.field private processDataOnBackground:Z

.field private reconnectFrequency:I

.field private reconnectWithNetworkChanged:Z

.field private responseDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

.field private responseProcessDispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->reconnectWithNetworkChanged:Z

    const/16 v0, 0x3c

    .line 41
    iput v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectionLostTimeout:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectTimeout:I

    const/16 v0, 0xa

    .line 61
    iput v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->reconnectFrequency:I

    return-void
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectTimeout:I

    return v0
.end method

.method public getConnectUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionLostTimeout()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectionLostTimeout:I

    return v0
.end method

.method public getDraft()Lorg/java_websocket/drafts/Draft;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->draft:Lorg/java_websocket/drafts/Draft;

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->httpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->mProxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReconnectFrequency()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->reconnectFrequency:I

    return v0
.end method

.method public getResponseDelivery()Lcom/zhangke/websocket/dispatcher/ResponseDelivery;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->responseDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    return-object v0
.end method

.method public getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->responseProcessDispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/zhangke/websocket/dispatcher/DefaultResponseDispatcher;

    invoke-direct {v0}, Lcom/zhangke/websocket/dispatcher/DefaultResponseDispatcher;-><init>()V

    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->responseProcessDispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->responseProcessDispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    return-object v0
.end method

.method public processDataOnBackground()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->processDataOnBackground:Z

    return v0
.end method

.method public reconnectWithNetworkChanged()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/zhangke/websocket/WebSocketSetting;->reconnectWithNetworkChanged:Z

    return v0
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectTimeout:I

    return-void
.end method

.method public setConnectUrl(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectUrl:Ljava/lang/String;

    return-void
.end method

.method public setConnectionLostTimeout(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->connectionLostTimeout:I

    return-void
.end method

.method public setDraft(Lorg/java_websocket/drafts/Draft;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->draft:Lorg/java_websocket/drafts/Draft;

    return-void
.end method

.method public setHttpHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->httpHeaders:Ljava/util/Map;

    return-void
.end method

.method public setProcessDataOnBackground(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->processDataOnBackground:Z

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->mProxy:Ljava/net/Proxy;

    return-void
.end method

.method public setReconnectFrequency(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->reconnectFrequency:I

    return-void
.end method

.method public setReconnectWithNetworkChanged(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->reconnectWithNetworkChanged:Z

    return-void
.end method

.method public setResponseDelivery(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->responseDelivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    return-void
.end method

.method public setResponseProcessDispatcher(Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketSetting;->responseProcessDispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    return-void
.end method
