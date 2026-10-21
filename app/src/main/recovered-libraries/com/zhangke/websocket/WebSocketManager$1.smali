.class Lcom/zhangke/websocket/WebSocketManager$1;
.super Ljava/lang/Object;
.source "WebSocketManager.java"

# interfaces
.implements Lcom/zhangke/websocket/ReconnectManager$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangke/websocket/WebSocketManager;->getDefaultReconnectManager()Lcom/zhangke/websocket/ReconnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangke/websocket/WebSocketManager;


# direct methods
.method constructor <init>(Lcom/zhangke/websocket/WebSocketManager;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketManager$1;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "WSManager"

    const-string/jumbo v1, "\u91cd\u8fde\u6210\u529f"

    .line 319
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "WSManager"

    const-string/jumbo v1, "\u91cd\u8fde\u5931\u8d25"

    .line 324
    invoke-static {v0, v1}, Lcom/zhangke/websocket/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketManager$1;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    invoke-static {v0}, Lcom/zhangke/websocket/WebSocketManager;->access$100(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/WebSocketSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangke/websocket/WebSocketSetting;->getResponseDispatcher()Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/WebSocketManager$1;->this$0:Lcom/zhangke/websocket/WebSocketManager;

    .line 326
    invoke-static {v1}, Lcom/zhangke/websocket/WebSocketManager;->access$000(Lcom/zhangke/websocket/WebSocketManager;)Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onDisconnect(Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    return-void
.end method
