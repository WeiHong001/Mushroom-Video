.class public Lcom/zhangke/websocket/response/ErrorResponse;
.super Ljava/lang/Object;
.source "ErrorResponse.java"


# static fields
.field public static final ERROR_NO_CONNECT:I = 0x0

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final ERROR_UN_INIT:I = 0x2


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private description:Ljava/lang/String;

.field private errorCode:I

.field private requestData:Lcom/zhangke/websocket/request/Request;

.field private reserved:Ljava/lang/Object;

.field private responseData:Lcom/zhangke/websocket/response/Response;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/zhangke/websocket/response/ErrorResponse;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/zhangke/websocket/response/ErrorResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/zhangke/websocket/response/ErrorResponse;->errorCode:I

    return v0
.end method

.method public getRequestData()Lcom/zhangke/websocket/request/Request;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/zhangke/websocket/response/ErrorResponse;->requestData:Lcom/zhangke/websocket/request/Request;

    return-object v0
.end method

.method public getReserved()Ljava/lang/Object;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zhangke/websocket/response/ErrorResponse;->reserved:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseData()Lcom/zhangke/websocket/response/Response;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/zhangke/websocket/response/ErrorResponse;->responseData:Lcom/zhangke/websocket/response/Response;

    return-object v0
.end method

.method public init(Lcom/zhangke/websocket/request/Request;ILjava/lang/Throwable;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->requestData:Lcom/zhangke/websocket/request/Request;

    .line 63
    iput-object p3, p0, Lcom/zhangke/websocket/response/ErrorResponse;->cause:Ljava/lang/Throwable;

    .line 64
    iput p2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->errorCode:I

    return-void
.end method

.method public release()V
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/zhangke/websocket/response/ResponseFactory;->releaseErrorResponse(Lcom/zhangke/websocket/response/ErrorResponse;)V

    return-void
.end method

.method public setCause(Ljava/lang/Throwable;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->errorCode:I

    return-void
.end method

.method public setRequestData(Lcom/zhangke/websocket/request/Request;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->requestData:Lcom/zhangke/websocket/request/Request;

    return-void
.end method

.method public setReserved(Ljava/lang/Object;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->reserved:Ljava/lang/Object;

    return-void
.end method

.method public setResponseData(Lcom/zhangke/websocket/response/Response;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/zhangke/websocket/response/ErrorResponse;->responseData:Lcom/zhangke/websocket/response/Response;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[@ErrorResponse"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errorCode="

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->errorCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cause="

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->cause:Ljava/lang/Throwable;

    const-string v3, "null"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "requestData="

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->requestData:Lcom/zhangke/websocket/request/Request;

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 149
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "responseData="

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->responseData:Lcom/zhangke/websocket/response/Response;

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "description="

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->reserved:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const-string v2, "reserved="

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, p0, Lcom/zhangke/websocket/response/ErrorResponse;->reserved:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "]"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
