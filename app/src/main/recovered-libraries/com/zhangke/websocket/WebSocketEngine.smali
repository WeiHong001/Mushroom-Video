.class public Lcom/zhangke/websocket/WebSocketEngine;
.super Ljava/lang/Object;
.source "WebSocketEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;,
        Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;,
        Lcom/zhangke/websocket/WebSocketEngine$OptionThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WSWebSocketEngine"


# instance fields
.field private mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;-><init>(Lcom/zhangke/websocket/WebSocketEngine;Lcom/zhangke/websocket/WebSocketEngine$1;)V

    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    .line 27
    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->start()V

    return-void
.end method


# virtual methods
.method connect(Lcom/zhangke/websocket/WebSocketWrapper;Lcom/zhangke/websocket/SocketWrapperListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "WebSocketEngine not start!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/zhangke/websocket/SocketWrapperListener;->onConnectFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->obtain()Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;

    move-result-object p2

    const/4 v0, 0x1

    .line 52
    invoke-static {p2, v0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$202(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;I)I

    .line 53
    invoke-static {p2, p1}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$402(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/WebSocketWrapper;)Lcom/zhangke/websocket/WebSocketWrapper;

    .line 54
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method destroyWebSocket(Lcom/zhangke/websocket/WebSocketWrapper;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->obtain()Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;

    move-result-object v0

    const/4 v1, 0x3

    .line 73
    invoke-static {v0, v1}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$202(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;I)I

    .line 74
    invoke-static {v0, p1}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$402(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/WebSocketWrapper;)Lcom/zhangke/websocket/WebSocketWrapper;

    .line 75
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "WSWebSocketEngine"

    const-string v0, "WebSocketEngine not start!"

    .line 77
    invoke-static {p1, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method disConnect(Lcom/zhangke/websocket/WebSocketWrapper;Lcom/zhangke/websocket/SocketWrapperListener;)V
    .locals 1

    .line 60
    iget-object p2, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {p2}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 61
    invoke-static {}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->obtain()Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;

    move-result-object p2

    const/4 v0, 0x2

    .line 62
    invoke-static {p2, v0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$202(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;I)I

    .line 63
    invoke-static {p2, p1}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$402(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/WebSocketWrapper;)Lcom/zhangke/websocket/WebSocketWrapper;

    .line 64
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "WSWebSocketEngine"

    const-string p2, "WebSocketEngine not start!"

    .line 66
    invoke-static {p1, p2}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method sendRequest(Lcom/zhangke/websocket/WebSocketWrapper;Lcom/zhangke/websocket/request/Request;Lcom/zhangke/websocket/SocketWrapperListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 34
    invoke-interface {p3, p2, p1, v0}, Lcom/zhangke/websocket/SocketWrapperListener;->onSendDataError(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->obtain()Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;

    move-result-object p3

    const/4 v0, 0x0

    .line 39
    invoke-static {p3, v0}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$202(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;I)I

    .line 40
    invoke-static {p3, p2}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$302(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/request/Request;)Lcom/zhangke/websocket/request/Request;

    .line 41
    invoke-static {p3, p1}, Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;->access$402(Lcom/zhangke/websocket/WebSocketEngine$ReRunnable;Lcom/zhangke/websocket/WebSocketWrapper;)Lcom/zhangke/websocket/WebSocketWrapper;

    .line 42
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine;->mOptionThread:Lcom/zhangke/websocket/WebSocketEngine$OptionThread;

    invoke-static {p1}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
