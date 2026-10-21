.class Lcom/zhangke/websocket/WebSocketManager$2;
.super Ljava/lang/Object;
.source "WebSocketManager.java"

# interfaces
.implements Lcom/zhangke/websocket/SocketWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangke/websocket/WebSocketManager;->getSocketWrapperListener()Lcom/zhangke/websocket/SocketWrapperListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangke/websocket/WebSocketManager;


# direct methods
.method constructor <init>(Lcom/zhangke/websocket/WebSocketManager;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 349
    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->reconnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zhangke/websocket/ReconnectManager;->onConnectError(Ljava/lang/Throwable;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 353
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onConnectFailed(Ljava/lang/Throwable;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    return-void
.end method

.method public onConnected()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->onConnected()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 342
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onConnected(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 359
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onDisconnect(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    .line 360
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 361
    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->reconnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$300(Lcom/zhangke/websocket/WebSocketManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 364
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onDisconnect(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zhangke/websocket/ReconnectManager;->onConnectError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$300(Lcom/zhangke/websocket/WebSocketManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$400(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zhangke/websocket/WebSocketManager;->access$202(Lcom/zhangke/websocket/WebSocketManager;Lcom/zhangke/websocket/ReconnectManager;)Lcom/zhangke/websocket/ReconnectManager;

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zhangke/websocket/ReconnectManager;->onConnectError(Ljava/lang/Throwable;)V

    .line 374
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$200(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/ReconnectManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager;->startReconnect()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onMessage(Lcom/zhangke/websocket/response/Response;)V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->processDataOnBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$500(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 402
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 403
    invoke-static {v2}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v2

    .line 401
    invoke-virtual {v0, p1, v1, v2}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;->onMessageReceive(Lcom/zhangke/websocket/response/Response;Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/zhangke/websocket/response/Response;->onResponse(Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    :goto_0
    return-void
.end method

.method public onSendDataError(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V
    .locals 2

    .line 380
    invoke-static {}, Lcom/zhangke/websocket/response/ResponseFactory;->createErrorResponse()Lcom/zhangke/websocket/response/ErrorResponse;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangke/websocket/response/ErrorResponse;->init(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V

    .line 382
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketSetting;->processDataOnBackground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketManager;->access$500(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    move-result-object p1

    iget-object p3, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 385
    invoke-static {p3}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object p3

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 386
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    .line 384
    invoke-virtual {p1, v0, p3, v1}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;->onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object p1

    iget-object p3, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {p3}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    .line 390
    :goto_0
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketManager;->access$300(Lcom/zhangke/websocket/WebSocketManager;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const-string p1, "WSManager"

    const-string/jumbo p2, "\u6570\u636e\u53d1\u9001\u5931\u8d25\uff0c\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u5f00\u59cb\u91cd\u8fde\u3002\u3002\u3002"

    .line 391
    invoke-static {p1, p2}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$2;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketManager;->reconnect()Lcom/zhangke/websocket/WebSocketManager;

    :cond_1
    return-void
.end method
