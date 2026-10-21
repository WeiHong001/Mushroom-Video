.class public Lcom/zhangke/websocket/response/TextResponse;
.super Ljava/lang/Object;
.source "TextResponse.java"

# interfaces
.implements Lcom/zhangke/websocket/response/Response;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhangke/websocket/response/Response<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private responseText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/zhangke/websocket/response/TextResponse;->getResponseData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/zhangke/websocket/response/TextResponse;->responseText:Ljava/lang/String;

    return-object v0
.end method

.method public onResponse(Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/zhangke/websocket/response/TextResponse;->responseText:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/zhangke/websocket/dispatcher/IResponseDispatcher;->onMessage(Ljava/lang/String;Lcom/zhangke/websocket/dispatcher/ResponseDelivery;)V

    .line 33
    invoke-virtual {p0}, Lcom/zhangke/websocket/response/TextResponse;->release()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/zhangke/websocket/response/ResponseFactory;->releaseTextResponse(Lcom/zhangke/websocket/response/TextResponse;)V

    return-void
.end method

.method public bridge synthetic setResponseData(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zhangke/websocket/response/TextResponse;->setResponseData(Ljava/lang/String;)V

    return-void
.end method

.method public setResponseData(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zhangke/websocket/response/TextResponse;->responseText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/zhangke/websocket/response/TextResponse;->responseText:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zhangke/websocket/response/TextResponse;->responseText:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[@TextResponse%s->responseText:%s]"

    .line 38
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
