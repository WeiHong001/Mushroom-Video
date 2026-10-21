.class Lcom/zhangke/websocket/dispatcher/EngineThread$1;
.super Ljava/lang/Object;
.source "EngineThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhangke/websocket/dispatcher/EngineThread;->add(Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

.field final synthetic val$entity:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;


# direct methods
.method constructor <init>(Lcom/zhangke/websocket/dispatcher/EngineThread;Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

    iput-object p2, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->val$entity:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-static {v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->access$000(Lcom/zhangke/websocket/dispatcher/EngineThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-static {v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->access$100(Lcom/zhangke/websocket/dispatcher/EngineThread;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->val$entity:Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-static {v1}, Lcom/zhangke/websocket/dispatcher/EngineThread;->access$000(Lcom/zhangke/websocket/dispatcher/EngineThread;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-static {v1}, Lcom/zhangke/websocket/dispatcher/EngineThread;->access$200(Lcom/zhangke/websocket/dispatcher/EngineThread;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "put response failed!"

    invoke-static {v1, v2, v0}, Lcom/zhangke/websocket/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/EngineThread$1;->this$0:Lcom/zhangke/websocket/dispatcher/EngineThread;

    invoke-virtual {v0}, Lcom/zhangke/websocket/dispatcher/EngineThread;->interrupt()V

    :goto_0
    return-void
.end method
