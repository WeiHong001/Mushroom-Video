.class Lcom/zhangke/websocket/WebSocketEngine$OptionThread;
.super Ljava/lang/Thread;
.source "WebSocketEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangke/websocket/WebSocketEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionThread"
.end annotation


# instance fields
.field private mHandler:Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

.field final synthetic this$0:Lcom/zhangke/websocket/WebSocketEngine;


# direct methods
.method private constructor <init>(Lcom/zhangke/websocket/WebSocketEngine;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->this$0:Lcom/zhangke/websocket/WebSocketEngine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangke/websocket/WebSocketEngine;Lcom/zhangke/websocket/WebSocketEngine$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;-><init>(Lcom/zhangke/websocket/WebSocketEngine;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zhangke/websocket/WebSocketEngine$OptionThread;)Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->mHandler:Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 96
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 97
    new-instance v0, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;-><init>(Lcom/zhangke/websocket/WebSocketEngine$1;)V

    iput-object v0, p0, Lcom/zhangke/websocket/WebSocketEngine$OptionThread;->mHandler:Lcom/zhangke/websocket/WebSocketEngine$OptionHandler;

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
