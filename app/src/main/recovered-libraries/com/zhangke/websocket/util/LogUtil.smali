.class public Lcom/zhangke/websocket/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/zhangke/websocket/util/Logable;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 43
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/zhangke/websocket/util/Logable;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/zhangke/websocket/util/Logable;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 19
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/zhangke/websocket/util/Logable;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 47
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/zhangke/websocket/util/Logable;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getLogable()Lcom/zhangke/websocket/util/Logable;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/zhangke/websocket/util/Logable;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
