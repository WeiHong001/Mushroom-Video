.class public Lcom/zhangke/websocket/request/StringRequest;
.super Ljava/lang/Object;
.source "StringRequest.java"

# interfaces
.implements Lcom/zhangke/websocket/request/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/request/Request<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private requestText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRequestData()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/zhangke/websocket/request/StringRequest;->getRequestData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestData()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/zhangke/websocket/request/StringRequest;->requestText:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/zhangke/websocket/request/RequestFactory;->releaseStringRequest(Lcom/zhangke/websocket/request/StringRequest;)V

    return-void
.end method

.method public send(Lorg/java_websocket/client/WebSocketClient;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/zhangke/websocket/request/StringRequest;->requestText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/java_websocket/client/WebSocketClient;->send(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestData(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/request/StringRequest;->setRequestData(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestData(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zhangke/websocket/request/StringRequest;->requestText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/request/StringRequest;->requestText:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zhangke/websocket/request/StringRequest;->requestText:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "@StringRequest%s,requestText:%s"

    .line 41
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
