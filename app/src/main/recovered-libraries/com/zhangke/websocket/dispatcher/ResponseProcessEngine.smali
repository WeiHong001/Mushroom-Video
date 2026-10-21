.class public Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;
.super Ljava/lang/Object;
.source "ResponseProcessEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;
    }
.end annotation


# instance fields
.field private mThread:Lcom/zhangke/websocket/dispatcher/EngineThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-direct {v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;-><init>()V

    iput-object v0, p0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;->mThread:Lcom/zhangke/websocket/dispatcher/EngineThread;

    .line 23
    invoke-virtual {v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->start()V

    return-void
.end method


# virtual methods
.method public onMessageReceive(Lcom/zhangke/websocket/response/Response;Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->obtain()Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    move-result-object v0

    .line 33
    iput-object p2, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->dispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    .line 34
    iput-object p3, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->delivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->isError:Z

    .line 36
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->response:Lcom/zhangke/websocket/response/Response;

    const/4 p1, 0x0

    .line 37
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    .line 38
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;->mThread:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-virtual {p1, v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->add(Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->obtain()Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    move-result-object v0

    .line 48
    iput-object p2, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->dispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    .line 49
    iput-object p3, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->delivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->isError:Z

    .line 51
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    const/4 p1, 0x0

    .line 52
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->response:Lcom/zhangke/websocket/response/Response;

    .line 53
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;->mThread:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-virtual {p1, v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->add(Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V

    :cond_1
    :goto_0
    return-void
.end method
