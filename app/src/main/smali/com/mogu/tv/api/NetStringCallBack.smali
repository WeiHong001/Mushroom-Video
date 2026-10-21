.class public abstract Lcom/mogu/tv/api/NetStringCallBack;
.super Lio/reactivex/observers/DisposableObserver;
.source "NetStringCallBack.kt"


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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008)\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u0003B%\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB-\u0008\u0016\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rB\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020=2\u0006\u0010B\u001a\u00020\u0004H\u0016J\"\u0010C\u001a\u00020=2\u0006\u0010*\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u00082\u0008\u0010D\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010E\u001a\u00020=H\u0014R\u0014\u0010\u000f\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u0013X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011R\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010 \"\u0004\u0008%\u0010\"R\u001a\u0010&\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0011\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0015\"\u0004\u0008,\u0010-R \u0010.\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u0010\u000eR\u001a\u00102\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010 \"\u0004\u00083\u0010\"R\u001a\u00104\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010 \"\u0004\u00085\u0010\"R\u001c\u00106\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0011\"\u0004\u00088\u0010)R\u001c\u00109\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0011\"\u0004\u0008;\u0010)\u00a8\u0006F"
    }
    d2 = {
        "Lcom/mogu/tv/api/NetStringCallBack;",
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
        "onComplete",
        "",
        "onError",
        "e",
        "",
        "onNext",
        "response",
        "onResponse",
        "t",
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

    .line 13
    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    const-string/jumbo v0, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    .line 37
    iput-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->CONNECT_ERROR_STR:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 38
    iput v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->CONNECT_ERROR_CODE:I

    const-string/jumbo v0, "\u6570\u636e\u51fa\u9519"

    .line 39
    iput-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->ANALY_ERROR:Ljava/lang/String;

    const-string/jumbo v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    .line 41
    iput-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->NET_ERROR_STRING:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 42
    iput v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->NET_ERROR_CODE:I

    const/16 v0, 0x7d0

    .line 43
    iput v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->EMPTY_RESULT_CODE:I

    const/16 v0, 0xc8

    .line 45
    iput v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->code:I

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->msg:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheKey:Ljava/lang/String;

    .line 57
    :try_start_0
    iput-object p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->entityClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->entityClass:Ljava/lang/Class;

    .line 60
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

    .line 17
    invoke-direct {p0, p1}, Lcom/mogu/tv/api/NetStringCallBack;-><init>(Ljava/lang/Class;)V

    .line 18
    iput-boolean p3, p0, Lcom/mogu/tv/api/NetStringCallBack;->isCache:Z

    .line 19
    iput-object p2, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheKey:Ljava/lang/String;

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

    .line 30
    invoke-direct {p0, p1}, Lcom/mogu/tv/api/NetStringCallBack;-><init>(Ljava/lang/Class;)V

    .line 31
    iput-boolean p3, p0, Lcom/mogu/tv/api/NetStringCallBack;->isCache:Z

    .line 32
    iput-boolean p4, p0, Lcom/mogu/tv/api/NetStringCallBack;->isDoubleReturn:Z

    .line 33
    iput-object p2, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getANALY_ERROR()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->ANALY_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method public final getBoolreadContent()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->boolreadContent:Z

    return v0
.end method

.method public final getCONNECT_ERROR_CODE()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->CONNECT_ERROR_CODE:I

    return v0
.end method

.method public final getCONNECT_ERROR_STR()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->CONNECT_ERROR_STR:Ljava/lang/String;

    return-object v0
.end method

.method public final getCacheIsEmpty()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheIsEmpty:Z

    return v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->code:I

    return v0
.end method

.method public final getEMPTY_RESULT_CODE()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->EMPTY_RESULT_CODE:I

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

    .line 47
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->entityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getNET_ERROR_CODE()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->NET_ERROR_CODE:I

    return v0
.end method

.method public final getNET_ERROR_STRING()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->NET_ERROR_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->resultString:Ljava/lang/String;

    return-object v0
.end method

.method public final isCache()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->isCache:Z

    return v0
.end method

.method public final isDoubleReturn()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->isDoubleReturn:Z

    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 77
    iget v0, p0, Lcom/mogu/tv/api/NetStringCallBack;->code:I

    iget-object v1, p0, Lcom/mogu/tv/api/NetStringCallBack;->resultString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v0, v2, v1}, Lcom/mogu/tv/api/NetStringCallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/mogu/tv/api/NetStringCallBack;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->resultString:Ljava/lang/String;

    return-void
.end method

.method public abstract onResponse(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected onStart()V
    .locals 0

    .line 66
    invoke-super {p0}, Lio/reactivex/observers/DisposableObserver;->onStart()V

    return-void
.end method

.method public final setBoolreadContent(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->boolreadContent:Z

    return-void
.end method

.method public final setCache(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->isCache:Z

    return-void
.end method

.method public final setCacheIsEmpty(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheIsEmpty:Z

    return-void
.end method

.method public final setCacheKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->code:I

    return-void
.end method

.method public final setDoubleReturn(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->isDoubleReturn:Z

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

    .line 47
    iput-object p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->entityClass:Ljava/lang/Class;

    return-void
.end method

.method public final setMsg(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->msg:Ljava/lang/String;

    return-void
.end method

.method public final setResultString(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mogu/tv/api/NetStringCallBack;->resultString:Ljava/lang/String;

    return-void
.end method
