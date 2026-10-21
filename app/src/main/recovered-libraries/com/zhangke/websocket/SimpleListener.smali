.class public abstract Lcom/zhangke/websocket/SimpleListener;
.super Ljava/lang/Object;
.source "SimpleListener.java"

# interfaces
.implements Lcom/zhangke/websocket/SocketListener;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SimpleListener"

    .line 18
    iput-object v0, p0, Lcom/zhangke/websocket/SimpleListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onPing(Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public onPong(Lorg/java_websocket/framing/Framedata;)V
    .locals 0

    return-void
.end method

.method public onSendDataError(Lcom/zhangke/websocket/response/ErrorResponse;)V
    .locals 0

    return-void
.end method
