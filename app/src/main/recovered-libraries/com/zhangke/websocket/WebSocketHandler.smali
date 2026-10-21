.class public Lcom/zhangke/websocket/WebSocketHandler;
.super Ljava/lang/Object;
.source "WebSocketHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketHandler"

.field private static final WS_MAP_BLOCK:Ljava/lang/Object;

.field private static defaultWebSocket:Lcom/zhangke/websocket/WebSocketManager;

.field private static mLog:Lcom/zhangke/websocket/util/Logable;

.field private static mWebSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zhangke/websocket/WebSocketManager;",
            ">;"
        }
    .end annotation
.end field

.field private static responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

.field private static webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zhangke/websocket/WebSocketHandler;->WS_MAP_BLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEngineNullAndInit()V
    .locals 2

    .line 176
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    if-nez v0, :cond_3

    .line 177
    :cond_0
    const-class v0, Lcom/zhangke/websocket/WebSocketHandler;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    if-nez v1, :cond_1

    .line 179
    new-instance v1, Lcom/zhangke/websocket/WebSocketEngine;

    invoke-direct {v1}, Lcom/zhangke/websocket/WebSocketEngine;-><init>()V

    sput-object v1, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    .line 181
    :cond_1
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    if-nez v1, :cond_2

    .line 182
    new-instance v1, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    invoke-direct {v1}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;-><init>()V

    sput-object v1, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    .line 184
    :cond_2
    monitor-exit v0

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static checkWebSocketMapNullAndInit()V
    .locals 2

    .line 192
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->WS_MAP_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    .line 197
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getAllWebSocket()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zhangke/websocket/WebSocketManager;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->checkWebSocketMapNullAndInit()V

    .line 131
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefault()Lcom/zhangke/websocket/WebSocketManager;
    .locals 1

    .line 108
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->defaultWebSocket:Lcom/zhangke/websocket/WebSocketManager;

    return-object v0
.end method

.method public static getLogable()Lcom/zhangke/websocket/util/Logable;
    .locals 1

    .line 210
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mLog:Lcom/zhangke/websocket/util/Logable;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/zhangke/websocket/util/LogImpl;

    invoke-direct {v0}, Lcom/zhangke/websocket/util/LogImpl;-><init>()V

    sput-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mLog:Lcom/zhangke/websocket/util/Logable;

    .line 213
    :cond_0
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mLog:Lcom/zhangke/websocket/util/Logable;

    return-object v0
.end method

.method public static getWebSocket(Ljava/lang/String;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 1

    .line 118
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->checkWebSocketMapNullAndInit()V

    .line 119
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zhangke/websocket/WebSocketManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Lcom/zhangke/websocket/WebSocketSetting;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 4

    .line 57
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->defaultWebSocket:Lcom/zhangke/websocket/WebSocketManager;

    if-nez v0, :cond_3

    .line 58
    const-class v0, Lcom/zhangke/websocket/WebSocketHandler;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/zhangke/websocket/WebSocketEngine;

    invoke-direct {v1}, Lcom/zhangke/websocket/WebSocketEngine;-><init>()V

    sput-object v1, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    .line 62
    :cond_0
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    invoke-direct {v1}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;-><init>()V

    sput-object v1, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    .line 65
    :cond_1
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->defaultWebSocket:Lcom/zhangke/websocket/WebSocketManager;

    if-nez v1, :cond_2

    .line 66
    new-instance v1, Lcom/zhangke/websocket/WebSocketManager;

    sget-object v2, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    sget-object v3, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    invoke-direct {v1, p0, v2, v3}, Lcom/zhangke/websocket/WebSocketManager;-><init>(Lcom/zhangke/websocket/WebSocketSetting;Lcom/zhangke/websocket/WebSocketEngine;Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;)V

    sput-object v1, Lcom/zhangke/websocket/WebSocketHandler;->defaultWebSocket:Lcom/zhangke/websocket/WebSocketManager;

    .line 70
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const-string p0, "WebSocketHandler"

    const-string v0, "Default WebSocketManager exists!do not start again!"

    .line 72
    invoke-static {p0, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    sget-object p0, Lcom/zhangke/websocket/WebSocketHandler;->defaultWebSocket:Lcom/zhangke/websocket/WebSocketManager;

    return-object p0
.end method

.method public static initGeneralWebSocket(Ljava/lang/String;Lcom/zhangke/websocket/WebSocketSetting;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 4

    .line 85
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->checkEngineNullAndInit()V

    .line 86
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->checkWebSocketMapNullAndInit()V

    .line 87
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->WS_MAP_BLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "WebSocketHandler"

    const-string v1, "WebSocketManager exists!do not start again!"

    .line 89
    invoke-static {p1, v1}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object p1, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zhangke/websocket/WebSocketManager;

    monitor-exit v0

    return-object p0

    .line 92
    :cond_0
    new-instance v1, Lcom/zhangke/websocket/WebSocketManager;

    sget-object v2, Lcom/zhangke/websocket/WebSocketHandler;->webSocketEngine:Lcom/zhangke/websocket/WebSocketEngine;

    sget-object v3, Lcom/zhangke/websocket/WebSocketHandler;->responseProcessEngine:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;

    invoke-direct {v1, p1, v2, v3}, Lcom/zhangke/websocket/WebSocketManager;-><init>(Lcom/zhangke/websocket/WebSocketSetting;Lcom/zhangke/websocket/WebSocketEngine;Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;)V

    .line 95
    sget-object p1, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static registerNetworkChangedReceiver(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 159
    invoke-static {p0, v0}, Lcom/zhangke/websocket/util/PermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WebSocketHandler"

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    new-instance v2, Lcom/zhangke/websocket/NetworkChangedReceiver;

    invoke-direct {v2}, Lcom/zhangke/websocket/NetworkChangedReceiver;-><init>()V

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "\u7f51\u7edc\u76d1\u542c\u5e7f\u64ad\u6ce8\u518c\u5931\u8d25\uff1a"

    .line 165
    invoke-static {v1, v0, p0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u672a\u83b7\u53d6\u5230\u7f51\u7edc\u72b6\u6001\u6743\u9650\uff0c\u5e7f\u64ad\u76d1\u542c\u5668\u65e0\u6cd5\u6ce8\u518c"

    .line 168
    invoke-static {v1, p0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static removeWebSocket(Ljava/lang/String;)Lcom/zhangke/websocket/WebSocketManager;
    .locals 3

    .line 141
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->checkWebSocketMapNullAndInit()V

    .line 142
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/WebSocketManager;

    .line 144
    sget-object v1, Lcom/zhangke/websocket/WebSocketHandler;->WS_MAP_BLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v2, Lcom/zhangke/websocket/WebSocketHandler;->mWebSocketMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setLogable(Lcom/zhangke/websocket/util/Logable;)V
    .locals 0

    .line 206
    sput-object p0, Lcom/zhangke/websocket/WebSocketHandler;->mLog:Lcom/zhangke/websocket/util/Logable;

    return-void
.end method
