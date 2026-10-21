.class public Lcom/zhangke/websocket/dispatcher/EngineThread;
.super Ljava/lang/Thread;
.source "EngineThread.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private jobQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;",
            ">;"
        }
    .end annotation
.end field

.field private stop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "WSEngineThread"

    .line 18
    iput-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->jobQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/zhangke/websocket/dispatcher/EngineThread;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->stop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zhangke/websocket/dispatcher/EngineThread;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->jobQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zhangke/websocket/dispatcher/EngineThread;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method add(Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->jobQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->TAG:Ljava/lang/String;

    const-string v1, "Offer response to Engine failed!start an thread to put."

    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/zhangke/websocket/dispatcher/EngineThread$1;

    invoke-direct {v1, p0, p1}, Lcom/zhangke/websocket/dispatcher/EngineThread$1;-><init>(Lcom/zhangke/websocket/dispatcher/EngineThread;Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method quit()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->stop:Z

    .line 87
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->jobQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 88
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 34
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/16 v0, 0xa

    .line 35
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 36
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->stop:Z

    if-nez v0, :cond_2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->jobQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    .line 39
    iget-boolean v1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->isError:Z

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->dispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    iget-object v2, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    iget-object v3, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->delivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    invoke-interface {v1, v2, v3}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->response:Lcom/zhangke/websocket/response/Response;

    iget-object v2, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->dispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    iget-object v3, v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->delivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    invoke-interface {v1, v2, v3}, Lcom/zhangke/websocket/response/Response;->onResponse(Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    .line 45
    :goto_1
    invoke-static {v0}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->release(Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->TAG:Ljava/lang/String;

    const-string v2, "run()->Exception"

    invoke-static {v1, v2, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    nop

    .line 47
    iget-boolean v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->stop:Z

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 28
    :try_start_0
    iput-boolean v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread;->stop:Z

    .line 29
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
