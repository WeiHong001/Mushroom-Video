.class public Lcom/github/lzyzsd/jsbridge/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field private static final CALLBACK_ID_STR:Ljava/lang/String; = "callbackId"

.field private static final DATA_STR:Ljava/lang/String; = "data"

.field private static final HANDLER_NAME_STR:Ljava/lang/String; = "handlerName"

.field private static final RESPONSE_DATA_STR:Ljava/lang/String; = "responseData"

.field private static final RESPONSE_ID_STR:Ljava/lang/String; = "responseId"


# instance fields
.field private callbackId:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private handlerName:Ljava/lang/String;

.field private responseData:Ljava/lang/String;

.field private responseId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toArrayList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/lzyzsd/jsbridge/Message;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    const-string v1, "responseId"

    const-string v2, "responseData"

    const-string v3, "callbackId"

    const-string v4, "handlerName"

    .line 92
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 95
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge p0, v7, :cond_5

    .line 96
    new-instance v7, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v7}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 97
    invoke-virtual {v6, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 98
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    move-object v9, v10

    :goto_1
    invoke-virtual {v7, v9}, Lcom/github/lzyzsd/jsbridge/Message;->setHandlerName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    move-object v9, v10

    :goto_2
    invoke-virtual {v7, v9}, Lcom/github/lzyzsd/jsbridge/Message;->setCallbackId(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    move-object v9, v10

    :goto_3
    invoke-virtual {v7, v9}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_3
    move-object v9, v10

    :goto_4
    invoke-virtual {v7, v9}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-virtual {v7, v10}, Lcom/github/lzyzsd/jsbridge/Message;->setData(Ljava/lang/String;)V

    .line 103
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-object v5
.end method

.method public static toObject(Ljava/lang/String;)Lcom/github/lzyzsd/jsbridge/Message;
    .locals 8

    const-string v0, "data"

    const-string v1, "responseId"

    const-string v2, "responseData"

    const-string v3, "callbackId"

    const-string v4, "handlerName"

    .line 76
    new-instance v5, Lcom/github/lzyzsd/jsbridge/Message;

    invoke-direct {v5}, Lcom/github/lzyzsd/jsbridge/Message;-><init>()V

    .line 78
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v7

    :goto_0
    invoke-virtual {v5, p0}, Lcom/github/lzyzsd/jsbridge/Message;->setHandlerName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v7

    :goto_1
    invoke-virtual {v5, p0}, Lcom/github/lzyzsd/jsbridge/Message;->setCallbackId(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v7

    :goto_2
    invoke-virtual {v5, p0}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseData(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    move-object p0, v7

    :goto_3
    invoke-virtual {v5, p0}, Lcom/github/lzyzsd/jsbridge/Message;->setResponseId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v5, v7}, Lcom/github/lzyzsd/jsbridge/Message;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v5
.end method


# virtual methods
.method public getCallbackId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->handlerName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseData()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseData:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->data:Ljava/lang/String;

    return-void
.end method

.method public setHandlerName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->handlerName:Ljava/lang/String;

    return-void
.end method

.method public setResponseData(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseData:Ljava/lang/String;

    return-void
.end method

.method public setResponseId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/Message;->responseId:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "callbackId"

    .line 63
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 64
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "handlerName"

    .line 65
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getHandlerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "responseData"

    .line 66
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "responseId"

    .line 67
    invoke-virtual {p0}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
