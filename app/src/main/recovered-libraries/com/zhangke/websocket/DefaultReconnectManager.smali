.class public Lcom/zhangke/websocket/DefaultReconnectManager;
.super Ljava/lang/Object;
.source "DefaultReconnectManager.java"

# interfaces
.implements Lcom/zhangke/websocket/ReconnectManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WSDefaultRM"


# instance fields
.field private final BLOCK:Ljava/lang/Object;

.field private volatile connected:Z

.field private volatile destroyed:Z

.field private finishCount:I

.field private mOnDisconnectListener:Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;

.field private mWebSocketManager:Lcom/zhangke/websocket/WebSocketManager;

.field private volatile needStopReconnect:Z

.field private reconnectCount:I

.field private volatile reconnecting:Z

.field private final singleThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/zhangke/websocket/WebSocketManager;Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->BLOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->needStopReconnect:Z

    .line 41
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->connected:Z

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->singleThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    .line 78
    iput v1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnectCount:I

    .line 79
    iput v1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->finishCount:I

    .line 47
    iput-object p1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->mWebSocketManager:Lcom/zhangke/websocket/WebSocketManager;

    .line 48
    iput-object p2, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->mOnDisconnectListener:Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;

    .line 49
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnecting:Z

    .line 50
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->destroyed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zhangke/websocket/DefaultReconnectManager;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->destroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zhangke/websocket/DefaultReconnectManager;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->needStopReconnect:Z

    return p0
.end method

.method static synthetic access$202(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zhangke/websocket/DefaultReconnectManager;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnectCount:I

    return p0
.end method

.method static synthetic access$308(Lcom/zhangke/websocket/DefaultReconnectManager;)I
    .locals 2

    .line 14
    iget v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnectCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/zhangke/websocket/DefaultReconnectManager;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->connected:Z

    return p0
.end method

.method static synthetic access$402(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->connected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->mWebSocketManager:Lcom/zhangke/websocket/WebSocketManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zhangke/websocket/DefaultReconnectManager;)Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->BLOCK:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->mOnDisconnectListener:Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zhangke/websocket/DefaultReconnectManager;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->finishCount:I

    return p0
.end method

.method static synthetic access$808(Lcom/zhangke/websocket/DefaultReconnectManager;)I
    .locals 2

    .line 14
    iget v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->finishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->finishCount:I

    return v0
.end method

.method private getReconnectRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 82
    new-instance v0, Lcom/zhangke/websocket/DefaultReconnectManager$1;

    invoke-direct {v0, p0}, Lcom/zhangke/websocket/DefaultReconnectManager$1;-><init>(Lcom/zhangke/websocket/DefaultReconnectManager;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->destroyed:Z

    .line 159
    invoke-virtual {p0}, Lcom/zhangke/websocket/DefaultReconnectManager;->stopReconnect()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->mWebSocketManager:Lcom/zhangke/websocket/WebSocketManager;

    return-void
.end method

.method public onConnectError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->connected:Z

    .line 147
    iget-object p1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->BLOCK:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "WSDefaultRM"

    const-string v1, "onConnectError(Throwable)->BLOCK.notifyAll()"

    .line 148
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->BLOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnected()V
    .locals 3

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->connected:Z

    .line 138
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->BLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "WSDefaultRM"

    const-string v2, "onConnected()->BLOCK.notifyAll()"

    .line 139
    invoke-static {v1, v2}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->BLOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reconnecting()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnecting:Z

    return v0
.end method

.method public startReconnect()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnecting:Z

    const-string v1, "WSDefaultRM"

    if-eqz v0, :cond_0

    const-string v0, "Reconnecting, do not call again."

    .line 61
    invoke-static {v1, v0}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->destroyed:Z

    if-eqz v0, :cond_1

    const-string v0, "ReconnectManager is destroyed!!!"

    .line 65
    invoke-static {v1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->needStopReconnect:Z

    const/4 v2, 0x1

    .line 69
    iput-boolean v2, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnecting:Z

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->singleThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lcom/zhangke/websocket/DefaultReconnectManager;->getReconnectRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "\u7ebf\u7a0b\u961f\u5217\u5df2\u6ee1\uff0c\u65e0\u6cd5\u6267\u884c\u6b64\u6b21\u4efb\u52a1\u3002"

    .line 73
    invoke-static {v1, v3, v2}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->reconnecting:Z

    :goto_0
    return-void
.end method

.method public stopReconnect()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->needStopReconnect:Z

    .line 130
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager;->singleThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method
