.class Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;
.super Ljava/lang/Object;
.source "WebSocketEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangke/websocket/WebSocketEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReRunnable"
.end annotation


# static fields
.field private static POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private request:Lcom/zhangke/websocket/request/Request;

.field private type:I

.field private webSocketWrapper:Lcom/zhangke/websocket/WebSocketWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;I)I
    .locals 0

    .line 112
    iput p1, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->type:I

    return p1
.end method

.method static synthetic access$302(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/request/Request;)Lcom/zhangke/websocket/request/Request;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->request:Lcom/zhangke/websocket/request/Request;

    return-object p1
.end method

.method static synthetic access$402(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/WebSocketWrapper;)Lcom/zhangke/websocket/WebSocketWrapper;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->webSocketWrapper:Lcom/zhangke/websocket/WebSocketWrapper;

    return-object p1
.end method

.method static obtain()Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;
    .locals 1

    .line 117
    sget-object v0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;

    invoke-direct {v0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;-><init>()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method release()V
    .locals 1

    .line 156
    sget-object v0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->webSocketWrapper:Lcom/zhangke/websocket/WebSocketWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 149
    :goto_0
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->webSocketWrapper:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 150
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->request:Lcom/zhangke/websocket/request/Request;

    .line 151
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->release()V

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->type:I

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->request:Lcom/zhangke/websocket/request/Request;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->request:Lcom/zhangke/websocket/request/Request;

    invoke-virtual {v1, v2}, Lcom/zhangke/websocket/WebSocketWrapper;->send(Lcom/zhangke/websocket/request/Request;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 142
    invoke-virtual {v1}, Lcom/zhangke/websocket/WebSocketWrapper;->reconnect()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 144
    invoke-virtual {v1}, Lcom/zhangke/websocket/WebSocketWrapper;->disConnect()V

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 146
    invoke-virtual {v1}, Lcom/zhangke/websocket/WebSocketWrapper;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_5
    :goto_1
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->webSocketWrapper:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 150
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->request:Lcom/zhangke/websocket/request/Request;

    .line 151
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->release()V

    return-void

    :catchall_0
    move-exception v1

    .line 149
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->webSocketWrapper:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 150
    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->request:Lcom/zhangke/websocket/request/Request;

    .line 151
    invoke-virtual {p0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->release()V

    .line 152
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
