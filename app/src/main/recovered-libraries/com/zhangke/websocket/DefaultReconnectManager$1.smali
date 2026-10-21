.class Lcom/zhangke/websocket/DefaultReconnectManager$1;
.super Ljava/lang/Object;
.source "DefaultReconnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangke/websocket/DefaultReconnectManager;->getReconnectRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangke/websocket/DefaultReconnectManager;


# direct methods
.method constructor <init>(Lcom/zhangke/websocket/DefaultReconnectManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$000(Lcom/zhangke/websocket/DefaultReconnectManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$100(Lcom/zhangke/websocket/DefaultReconnectManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "WSDefaultRM"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f00\u59cb\u91cd\u8fde:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v3}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$300(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$308(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    .line 91
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$202(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z

    .line 92
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0, v1}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$402(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$500(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/WebSocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketManager;->getSetting()Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getReconnectFrequency()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const-string v4, "WSDefaultRM"

    const-string/jumbo v5, "\u7b2c%s\u6b21\u91cd\u8fde"

    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v4}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$500(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/WebSocketManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zhangke/websocket/WebSocketManager;->reconnectOnce()V

    .line 98
    iget-object v4, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v4}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$600(Lcom/zhangke/websocket/DefaultReconnectManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    iget-object v5, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v5}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$600(Lcom/zhangke/websocket/DefaultReconnectManager;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v6}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$500(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/WebSocketManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangke/websocket/WebSocketManager;->getSetting()Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangke/websocket/WebSocketSetting;->getConnectTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 101
    iget-object v5, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v5}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$400(Lcom/zhangke/websocket/DefaultReconnectManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "WSDefaultRM"

    const-string v2, "reconnectOnce success!"

    .line 102
    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$700(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;->onConnected()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "WSDefaultRM"

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u91cd\u8fde\u7ed3\u675f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v3}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$800(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$808(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    .line 120
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0, v1}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$202(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z

    const-string v0, "WSDefaultRM"

    const-string v1, "reconnecting = false"

    .line 121
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v5}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$100(Lcom/zhangke/websocket/DefaultReconnectManager;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 107
    :try_start_4
    monitor-exit v4

    goto :goto_2

    .line 112
    :cond_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 110
    :catch_0
    monitor-exit v4

    goto :goto_2

    .line 112
    :goto_1
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_3
    :goto_2
    const-string v0, "WSDefaultRM"

    const-string v2, "reconnectOnce failed!"

    .line 115
    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$700(Lcom/zhangke/websocket/DefaultReconnectManager;)Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;->onDisconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v0, "WSDefaultRM"

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u91cd\u8fde\u7ed3\u675f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v3}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$800(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zhangke/websocket/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$808(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    .line 120
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0, v1}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$202(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z

    const-string v0, "WSDefaultRM"

    const-string v1, "reconnecting = false"

    .line 121
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    const-string v2, "WSDefaultRM"

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u91cd\u8fde\u7ed3\u675f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v4}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$800(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zhangke/websocket/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v2}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$808(Lcom/zhangke/websocket/DefaultReconnectManager;)I

    .line 120
    iget-object v2, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v2, v1}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$202(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z

    const-string v1, "WSDefaultRM"

    const-string v2, "reconnecting = false"

    .line 121
    invoke-static {v1, v2}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    throw v0

    .line 86
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/zhangke/websocket/DefaultReconnectManager$1;->this$0:Lcom/zhangke/websocket/DefaultReconnectManager;

    invoke-static {v0, v1}, Lcom/zhangke/websocket/DefaultReconnectManager;->access$202(Lcom/zhangke/websocket/DefaultReconnectManager;Z)Z

    return-void
.end method
