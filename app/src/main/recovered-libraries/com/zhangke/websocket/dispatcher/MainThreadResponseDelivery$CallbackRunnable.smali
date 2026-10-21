.class Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;
.super Ljava/lang/Object;
.source "MainThreadResponseDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field byteResponse:Ljava/nio/ByteBuffer;

.field connectErrorCause:Ljava/lang/Throwable;

.field errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

.field formattedData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field framedataResponse:Lorg/java_websocket/framing/Framedata;

.field mSocketListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zhangke/websocket/SocketListener;",
            ">;"
        }
    .end annotation
.end field

.field textResponse:Ljava/lang/String;

.field type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    sget-object v0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->NON:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    iput-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$1;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->NON:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->CONNECT_FAILED:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->connectErrorCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 355
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->access$200()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 298
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->SEND_ERROR:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    if-nez v0, :cond_3

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->STRING_MSG:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->textResponse:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->BYTE_BUFFER_MSG:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->byteResponse:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    goto :goto_0

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->PING:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    if-nez v0, :cond_6

    goto :goto_0

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->PONG:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    if-nez v0, :cond_7

    goto :goto_0

    .line 303
    :cond_7
    invoke-static {}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    :try_start_2
    sget-object v1, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$1;->$SwitchMap$com$zhangke$websocket$dispatcher$MainThreadResponseDelivery$RUNNABLE_TYPE:[I

    iget-object v2, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->type:Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;

    invoke-virtual {v2}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$RUNNABLE_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    .line 341
    :pswitch_0
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 342
    iget-object v3, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    invoke-interface {v2, v3}, Lcom/zhangke/websocket/SocketListener;->onPong(Lorg/java_websocket/framing/Framedata;)V

    goto :goto_1

    .line 336
    :pswitch_1
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 337
    iget-object v3, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    invoke-interface {v2, v3}, Lcom/zhangke/websocket/SocketListener;->onPing(Lorg/java_websocket/framing/Framedata;)V

    goto :goto_2

    .line 331
    :pswitch_2
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 332
    iget-object v3, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->byteResponse:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->formattedData:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/zhangke/websocket/SocketListener;->onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    goto :goto_3

    .line 326
    :pswitch_3
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 327
    iget-object v3, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->textResponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->formattedData:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/zhangke/websocket/SocketListener;->onMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 321
    :pswitch_4
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 322
    iget-object v3, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    invoke-interface {v2, v3}, Lcom/zhangke/websocket/SocketListener;->onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;)V

    goto :goto_5

    .line 316
    :pswitch_5
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 317
    invoke-interface {v2}, Lcom/zhangke/websocket/SocketListener;->onDisconnect()V

    goto :goto_6

    .line 311
    :pswitch_6
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 312
    iget-object v3, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->connectErrorCause:Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lcom/zhangke/websocket/SocketListener;->onConnectFailed(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 306
    :pswitch_7
    iget-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangke/websocket/SocketListener;

    .line 307
    invoke-interface {v2}, Lcom/zhangke/websocket/SocketListener;->onConnected()V

    goto :goto_8

    :cond_8
    :goto_9
    const/4 v1, 0x0

    .line 346
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->mSocketListenerList:Ljava/util/List;

    .line 347
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->errorResponse:Lcom/zhangke/websocket/response/ErrorResponse;

    .line 348
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->connectErrorCause:Ljava/lang/Throwable;

    .line 349
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->textResponse:Ljava/lang/String;

    .line 350
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->byteResponse:Ljava/nio/ByteBuffer;

    .line 351
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->framedataResponse:Lorg/java_websocket/framing/Framedata;

    .line 352
    iput-object v1, p0, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery$CallbackRunnable;->formattedData:Ljava/lang/Object;

    .line 353
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    invoke-static {}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->access$200()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 353
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 355
    invoke-static {}, Lcom/zhangke/websocket/dispatcher/MainThreadResponseDelivery;->access$200()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 356
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
