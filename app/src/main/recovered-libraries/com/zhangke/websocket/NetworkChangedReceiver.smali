.class public Lcom/zhangke/websocket/NetworkChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangedReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WSNetworkReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "WSNetworkReceiver"

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "connectivity"

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 33
    invoke-static {p1, v1}, Lcom/zhangke/websocket/util/PermissionUtil;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 36
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 37
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string/jumbo p1, "\u7f51\u7edc\u8fde\u63a5\u53d1\u751f\u53d8\u5316\uff0c\u5f53\u524dWiFi\u8fde\u63a5\u53ef\u7528\uff0c\u6b63\u5728\u5c1d\u8bd5\u91cd\u8fde\u3002"

    .line 38
    invoke-static {v0, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "\u7f51\u7edc\u8fde\u63a5\u53d1\u751f\u53d8\u5316\uff0c\u5f53\u524d\u79fb\u52a8\u8fde\u63a5\u53ef\u7528\uff0c\u6b63\u5728\u5c1d\u8bd5\u91cd\u8fde\u3002"

    .line 40
    invoke-static {v0, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_2
    :goto_0
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getDefault()Lcom/zhangke/websocket/WebSocketManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 43
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getDefault()Lcom/zhangke/websocket/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketManager;->getSetting()Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketSetting;->reconnectWithNetworkChanged()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getDefault()Lcom/zhangke/websocket/WebSocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhangke/websocket/WebSocketManager;->reconnect()Lcom/zhangke/websocket/WebSocketManager;

    .line 47
    :cond_3
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getAllWebSocket()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 48
    invoke-static {}, Lcom/zhangke/websocket/WebSocketHandler;->getAllWebSocket()Ljava/util/Map;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangke/websocket/WebSocketManager;

    if-eqz v1, :cond_4

    .line 51
    invoke-virtual {v1}, Lcom/zhangke/websocket/WebSocketManager;->getSetting()Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangke/websocket/WebSocketSetting;->reconnectWithNetworkChanged()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    invoke-virtual {v1}, Lcom/zhangke/websocket/WebSocketManager;->reconnect()Lcom/zhangke/websocket/WebSocketManager;

    goto :goto_1

    :cond_5
    const-string/jumbo p1, "\u5f53\u524d\u6ca1\u6709\u53ef\u7528\u7f51\u7edc"

    .line 57
    invoke-static {v0, p1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string/jumbo p2, "\u7f51\u7edc\u72b6\u6001\u83b7\u53d6\u9519\u8bef"

    .line 62
    invoke-static {v0, p2, p1}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method
