.class Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;
.super Ljava/lang/Object;
.source "ResponseProcessEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineEntity"
.end annotation


# static fields
.field private static ENTITY_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field delivery:Lcom/zhangke/websocket/dispatcher/ResponseDelivery;

.field dispatcher:Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;

.field errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

.field isError:Z

.field response:Lcom/zhangke/websocket/response/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->ENTITY_POOL:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain()Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;
    .locals 1

    .line 67
    sget-object v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->ENTITY_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;

    invoke-direct {v0}, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;-><init>()V

    :cond_0
    return-object v0
.end method

.method static release(Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/zhangke/websocket/dispatcher/ResponseProcessEngine$EngineEntity;->ENTITY_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
