.class public Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;
.super Ljava/lang/Object;
.source "MainThreadResponseDelivery.java"

# interfaces
.implements Lcom/zhangke/websocket/dispatcher/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;,
        Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;
    }
.end annotation


# static fields
.field private static final LISTENER_BLOCK:Ljava/lang/Object;

.field private static RUNNABLE_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSocketListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zhangke/websocket/SocketListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Queue;
    .locals 1

    .line 36
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->RUNNABLE_POOL:Ljava/util/Queue;

    return-object v0
.end method

.method private getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;
    .locals 2

    .line 249
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->RUNNABLE_POOL:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->RUNNABLE_POOL:Ljava/util/Queue;

    .line 252
    :cond_0
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->RUNNABLE_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;-><init>(Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$1;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/zhangke/websocket/SocketListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 239
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onConnectFailed(Ljava/lang/Throwable;)V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 101
    invoke-interface {v2, p1}, Lcom/zhangke/websocket/SocketListener;->onConnectFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->CONNECT_FAILED:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 107
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->connectErrorCause:Ljava/lang/Throwable;

    .line 108
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 109
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onConnected()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 82
    invoke-interface {v2}, Lcom/zhangke/websocket/SocketListener;->onConnected()V

    goto :goto_0

    .line 84
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->CONNECTED:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 88
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 89
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 121
    invoke-interface {v2}, Lcom/zhangke/websocket/SocketListener;->onDisconnect()V

    goto :goto_0

    .line 123
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->DISCONNECT:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 127
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 128
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 160
    invoke-interface {v2, p1, p2}, Lcom/zhangke/websocket/SocketListener;->onMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->STRING_MSG:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 166
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->textResponse:Ljava/lang/String;

    .line 167
    iput-object p2, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->formattedData:Ljava/lang/Object;

    .line 168
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 169
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;)V"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 181
    invoke-interface {v2, p1, p2}, Lcom/zhangke/websocket/SocketListener;->onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->BYTE_BUFFER_MSG:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 187
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->byteResponse:Ljava/nio/ByteBuffer;

    .line 188
    iput-object p2, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->formattedData:Ljava/lang/Object;

    .line 189
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 190
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPing(Lorg/java_websocket/framing/Framedata;)V
    .locals 3

    .line 196
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 202
    invoke-interface {v2, p1}, Lcom/zhangke/websocket/SocketListener;->onPing(Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 204
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->PING:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 208
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    .line 209
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 210
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onPong(Lorg/java_websocket/framing/Framedata;)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 222
    invoke-interface {v2, p1}, Lcom/zhangke/websocket/SocketListener;->onPong(Lorg/java_websocket/framing/Framedata;)V

    goto :goto_0

    .line 224
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 226
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 227
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->PONG:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 228
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    .line 229
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 230
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;)V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/util/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 140
    invoke-interface {v2, p1}, Lcom/zhangke/websocket/SocketListener;->onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;)V

    goto :goto_0

    .line 142
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->getRunnable()Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->SEND_ERROR:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    .line 146
    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    .line 147
    iget-object p1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    iput-object p1, v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 148
    invoke-static {v0}, Lcom/zhangke/websocket/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public removeListener(Lcom/zhangke/websocket/SocketListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->LISTENER_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
