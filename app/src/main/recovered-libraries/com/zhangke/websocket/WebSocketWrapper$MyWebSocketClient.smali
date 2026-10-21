.class Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "WebSocketWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangke/websocket/WebSocketWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebSocketClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangke/websocket/WebSocketWrapper;


# direct methods
.method public constructor <init>(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/net/URI;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 325
    invoke-direct {p0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/net/URI;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 333
    invoke-direct {p0, p2, p3}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 329
    invoke-direct {p0, p2, p3}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    return-void
.end method

.method public constructor <init>(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 337
    invoke-direct {p0, p2, p3, p4}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/java_websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    .line 341
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {v0, p1, p2, p3}, Lcom/zhangke/websocket/WebSocketWrapper;->access$500(Lcom/zhangke/websocket/WebSocketWrapper;ILjava/lang/String;Z)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {v0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->access$600(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/lang/Exception;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {v0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->access$100(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {v0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->access$200(Lcom/zhangke/websocket/WebSocketWrapper;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {v0, p1}, Lcom/zhangke/websocket/WebSocketWrapper;->access$000(Lcom/zhangke/websocket/WebSocketWrapper;Lorg/java_websocket/handshake/ServerHandshake;)V

    return-void
.end method

.method public onWebsocketPing(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 361
    invoke-super {p0, p1, p2}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketPing(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    .line 362
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {p1, p2}, Lcom/zhangke/websocket/WebSocketWrapper;->access$300(Lcom/zhangke/websocket/WebSocketWrapper;Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method

.method public onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    .line 367
    invoke-super {p0, p1, p2}, Lorg/java_websocket/client/WebSocketClient;->onWebsocketPong(Lorg/java_websocket/WebSocket;Lorg/java_websocket/framing/Framedata;)V

    .line 368
    iget-object p1, p0, Lcom/zhangke/websocket/WebSocketWrapper$MyWebSocketClient;->this$0:Lcom/zhangke/websocket/WebSocketWrapper;

    invoke-static {p1, p2}, Lcom/zhangke/websocket/WebSocketWrapper;->access$400(Lcom/zhangke/websocket/WebSocketWrapper;Lorg/java_websocket/framing/Framedata;)V

    return-void
.end method
