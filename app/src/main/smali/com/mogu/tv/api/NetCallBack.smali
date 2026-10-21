.class public abstract Lcom/mogu/tv/api/NetCallBack;
.super Lio/reactivex/observers/DisposableObserver;
.source "NetCallBack.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observers/DisposableObserver<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetCallBack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetCallBack.kt\ncom/mogu/tv/api/NetCallBack\n+ 2 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,178:1\n68#2,5:179\n*S KotlinDebug\n*F\n+ 1 NetCallBack.kt\ncom/mogu/tv/api/NetCallBack\n*L\n149#1:179,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008,\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0007\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u0003B%\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB-\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rB\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010?\u001a\u00020@H\u0002J\u0008\u0010A\u001a\u00020@H\u0016J\u0010\u0010B\u001a\u00020@2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020@2\u0006\u0010F\u001a\u00020\u0004H\u0016J\'\u0010G\u001a\u00020@2\u0006\u0010*\u001a\u00020\u00132\u0006\u00109\u001a\u00020\u00082\u0008\u0010H\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010IJ\u0008\u0010J\u001a\u00020@H\u0014R\u0014\u0010\u000f\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010 \"\u0004\u0008%\u0010\"R\u001a\u0010&\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0011\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0015\"\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0015\"\u0004\u00080\u0010-R \u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u0010\u000eR\u001a\u00105\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010 \"\u0004\u00086\u0010\"R\u001a\u00107\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010 \"\u0004\u00088\u0010\"R\u001c\u00109\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0011\"\u0004\u0008;\u0010)R\u001a\u0010<\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010\u0011\"\u0004\u0008>\u0010)\u00a8\u0006K"
    }
    d2 = {
        "Lcom/mogu/tv/api/NetCallBack;",
        "T",
        "",
        "Lio/reactivex/observers/DisposableObserver;",
        "Lokhttp3/ResponseBody;",
        "classT",
        "Ljava/lang/Class;",
        "key",
        "",
        "boolean",
        "",
        "(Ljava/lang/Class;Ljava/lang/String;Z)V",
        "doubleCache",
        "(Ljava/lang/Class;Ljava/lang/String;ZZ)V",
        "(Ljava/lang/Class;)V",
        "ANALY_ERROR",
        "getANALY_ERROR",
        "()Ljava/lang/String;",
        "CONNECT_ERROR_CODE",
        "",
        "getCONNECT_ERROR_CODE",
        "()I",
        "CONNECT_ERROR_STR",
        "getCONNECT_ERROR_STR",
        "EMPTY_RESULT_CODE",
        "getEMPTY_RESULT_CODE",
        "NET_ERROR_CODE",
        "getNET_ERROR_CODE",
        "NET_ERROR_STRING",
        "getNET_ERROR_STRING",
        "boolreadContent",
        "getBoolreadContent",
        "()Z",
        "setBoolreadContent",
        "(Z)V",
        "cacheIsEmpty",
        "getCacheIsEmpty",
        "setCacheIsEmpty",
        "cacheKey",
        "getCacheKey",
        "setCacheKey",
        "(Ljava/lang/String;)V",
        "code",
        "getCode",
        "setCode",
        "(I)V",
        "defaultCacheTime",
        "getDefaultCacheTime",
        "setDefaultCacheTime",
        "entityClass",
        "getEntityClass",
        "()Ljava/lang/Class;",
        "setEntityClass",
        "isCache",
        "setCache",
        "isDoubleReturn",
        "setDoubleReturn",
        "msg",
        "getMsg",
        "setMsg",
        "resultString",
        "getResultString",
        "setResultString",
        "filterData",
        "",
        "onComplete",
        "onError",
        "e",
        "",
        "onNext",
        "response",
        "onResponse",
        "t",
        "(ILjava/lang/String;Ljava/lang/Object;)V",
        "onStart",
        "app_mogushareRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ANALY_ERROR:Ljava/lang/String;

.field private final CONNECT_ERROR_CODE:I

.field private final CONNECT_ERROR_STR:Ljava/lang/String;

.field private final EMPTY_RESULT_CODE:I

.field private final NET_ERROR_CODE:I

.field private final NET_ERROR_STRING:Ljava/lang/String;

.field private boolreadContent:Z

.field private cacheIsEmpty:Z

.field private cacheKey:Ljava/lang/String;

.field private code:I

.field private defaultCacheTime:I

.field private entityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private isCache:Z

.field private isDoubleReturn:Z

.field private msg:Ljava/lang/String;

.field private resultString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "classT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    const-string/jumbo v0, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    .line 40
    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->CONNECT_ERROR_STR:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 41
    iput v0, p0, Lcom/mogu/tv/api/NetCallBack;->CONNECT_ERROR_CODE:I

    const-string/jumbo v0, "\u6570\u636e\u51fa\u9519"

    .line 42
    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->ANALY_ERROR:Ljava/lang/String;

    const-string/jumbo v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 44
    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->NET_ERROR_STRING:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 45
    iput v0, p0, Lcom/mogu/tv/api/NetCallBack;->NET_ERROR_CODE:I

    const/16 v0, 0x7d0

    .line 46
    iput v0, p0, Lcom/mogu/tv/api/NetCallBack;->EMPTY_RESULT_CODE:I

    const/16 v0, 0xc8

    .line 48
    iput v0, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    const v0, 0x278d00

    .line 57
    iput v0, p0, Lcom/mogu/tv/api/NetCallBack;->defaultCacheTime:I

    .line 61
    :try_start_0
    iput-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->entityClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->entityClass:Ljava/lang/Class;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "classT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/mogu/tv/api/NetCallBack;-><init>(Ljava/lang/Class;)V

    .line 21
    iput-boolean p3, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    .line 22
    iput-object p2, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "classT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mogu/tv/api/NetCallBack;-><init>(Ljava/lang/Class;)V

    .line 34
    iput-boolean p3, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    .line 35
    iput-boolean p4, p0, Lcom/mogu/tv/api/NetCallBack;->isDoubleReturn:Z

    .line 36
    iput-object p2, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method private final filterData()V
    .locals 8

    const-string v0, "message"

    const-string v1, "code"

    .line 101
    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v2, :cond_1

    .line 102
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->EMPTY_RESULT_CODE:I

    invoke-virtual {p0, v0, v6, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 106
    :cond_1
    :try_start_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 108
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    .line 111
    :cond_2
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    .line 121
    :cond_3
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    const/16 v1, 0xc9

    if-eq v0, v3, :cond_c

    const/16 v7, 0xc8

    if-eq v0, v7, :cond_c

    if-eq v0, v1, :cond_c

    const/16 v7, 0x12e

    if-ne v0, v7, :cond_4

    goto :goto_5

    :cond_4
    const/16 v2, 0x193

    if-ne v0, v2, :cond_6

    .line 131
    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v2

    :goto_1
    invoke-virtual {p0, v0, v6, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_6
    const/16 v2, 0xcb

    if-ne v0, v2, :cond_8

    .line 141
    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v6, v2

    :goto_2
    invoke-virtual {p0, v0, v6, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    const/16 v2, 0xcc

    if-ne v0, v2, :cond_a

    .line 144
    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    move-object v6, v2

    :goto_3
    invoke-virtual {p0, v0, v6, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 146
    :cond_a
    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    move-object v6, v2

    :goto_4
    invoke-virtual {p0, v0, v6, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 122
    :cond_c
    :goto_5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 123
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 124
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    move-object v6, v2

    :goto_6
    invoke-virtual {p0, v0, v6, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 126
    :cond_e
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/mogu/tv/api/NetCallBack;->entityClass:Ljava/lang/Class;

    invoke-virtual {v2, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    iget v2, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    iget-object v7, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v7, :cond_f

    goto :goto_7

    :cond_f
    move-object v6, v7

    :goto_7
    invoke-virtual {p0, v2, v6, v0}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    :goto_8
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_12

    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    const-string v1, "false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 149
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 180
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v1, "Toast\n        .makeText(\u2026         show()\n        }"

    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exe"

    invoke-static {v1, v0}, Lcom/luck/picture/lib/camare/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ec

    .line 154
    iget-object v1, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/mogu/tv/api/NetCallBack;->ANALY_ERROR:Ljava/lang/String;

    :cond_11
    invoke-virtual {p0, v0, v1, v5}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_12
    :goto_a
    return-void
.end method


# virtual methods
.method public final getANALY_ERROR()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->ANALY_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method public final getBoolreadContent()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->boolreadContent:Z

    return v0
.end method

.method public final getCONNECT_ERROR_CODE()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->CONNECT_ERROR_CODE:I

    return v0
.end method

.method public final getCONNECT_ERROR_STR()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->CONNECT_ERROR_STR:Ljava/lang/String;

    return-object v0
.end method

.method public final getCacheIsEmpty()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->cacheIsEmpty:Z

    return v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    return v0
.end method

.method public final getDefaultCacheTime()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->defaultCacheTime:I

    return v0
.end method

.method public final getEMPTY_RESULT_CODE()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->EMPTY_RESULT_CODE:I

    return v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->entityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getNET_ERROR_CODE()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mogu/tv/api/NetCallBack;->NET_ERROR_CODE:I

    return v0
.end method

.method public final getNET_ERROR_STRING()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->NET_ERROR_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public final isCache()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    return v0
.end method

.method public final isDoubleReturn()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->isDoubleReturn:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->cacheIsEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->isDoubleReturn:Z

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/mogu/tv/api/NetCallBack;->filterData()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "Exe"

    const-string v1, "e"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/luck/picture/lib/camare/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-boolean p1, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 163
    :cond_1
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/kotlin/basiclib/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 164
    iget p1, p0, Lcom/mogu/tv/api/NetCallBack;->NET_ERROR_CODE:I

    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->NET_ERROR_STRING:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :cond_2
    iget p1, p0, Lcom/mogu/tv/api/NetCallBack;->CONNECT_ERROR_CODE:I

    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->CONNECT_ERROR_STR:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/mogu/tv/api/NetCallBack;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camare/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/api/NetCallBack;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    const-string/jumbo v1, "tempStr"

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    sget-object v0, Lcom/kotlin/basiclib/utils/FileCacheManager;->INSTANCE:Lcom/kotlin/basiclib/utils/FileCacheManager;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    iget v3, p0, Lcom/mogu/tv/api/NetCallBack;->defaultCacheTime:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/kotlin/basiclib/utils/FileCacheManager;->writeStrToCache(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    return-void
.end method

.method public abstract onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected onStart()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    if-eqz v0, :cond_3

    .line 71
    sget-object v0, Lcom/kotlin/basiclib/utils/FileCacheManager;->INSTANCE:Lcom/kotlin/basiclib/utils/FileCacheManager;

    iget-object v1, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kotlin/basiclib/utils/FileCacheManager;->readStrFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    .line 72
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 73
    iput-boolean v1, p0, Lcom/mogu/tv/api/NetCallBack;->cacheIsEmpty:Z

    goto :goto_2

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/mogu/tv/api/NetCallBack;->filterData()V

    .line 78
    :cond_3
    :goto_2
    invoke-super {p0}, Lio/reactivex/observers/DisposableObserver;->onStart()V

    return-void
.end method

.method public final setBoolreadContent(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetCallBack;->boolreadContent:Z

    return-void
.end method

.method public final setCache(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetCallBack;->isCache:Z

    return-void
.end method

.method public final setCacheIsEmpty(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetCallBack;->cacheIsEmpty:Z

    return-void
.end method

.method public final setCacheKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/mogu/tv/api/NetCallBack;->code:I

    return-void
.end method

.method public final setDefaultCacheTime(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/mogu/tv/api/NetCallBack;->defaultCacheTime:I

    return-void
.end method

.method public final setDoubleReturn(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetCallBack;->isDoubleReturn:Z

    return-void
.end method

.method public final setEntityClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->entityClass:Ljava/lang/Class;

    return-void
.end method

.method public final setMsg(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->msg:Ljava/lang/String;

    return-void
.end method

.method public final setResultString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/mogu/tv/api/NetCallBack;->resultString:Ljava/lang/String;

    return-void
.end method
