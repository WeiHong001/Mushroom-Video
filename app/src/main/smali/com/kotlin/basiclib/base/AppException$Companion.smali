.class public final Lcom/kotlin/basiclib/base/AppException$Companion;
.super Ljava/lang/Object;
.source "AppException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kotlin/basiclib/base/AppException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u001f\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010#\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010$\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010%\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010&\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"J\u0012\u0010\'\u001a\u00020\u00182\n\u0010 \u001a\u00060!j\u0002`\"R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0014\u0010\r\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u000f\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0014\u0010\u0013\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0014\u0010\u0015\u001a\u00020\u0006X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001cX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/AppException$Companion;",
        "",
        "()V",
        "Debug",
        "",
        "TYPE_HTTP_CODE",
        "",
        "getTYPE_HTTP_CODE",
        "()B",
        "TYPE_HTTP_ERROR",
        "getTYPE_HTTP_ERROR",
        "TYPE_IO",
        "getTYPE_IO",
        "TYPE_JSON",
        "getTYPE_JSON",
        "TYPE_NETWORK",
        "getTYPE_NETWORK",
        "TYPE_RUN",
        "getTYPE_RUN",
        "TYPE_SOCKET",
        "getTYPE_SOCKET",
        "TYPE_XML",
        "getTYPE_XML",
        "appExceptionHandler",
        "Lcom/kotlin/basiclib/base/AppException;",
        "getAppExceptionHandler",
        "()Lcom/kotlin/basiclib/base/AppException;",
        "cacheKey",
        "",
        "getCacheKey",
        "()Ljava/lang/String;",
        "http",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "io",
        "network",
        "run",
        "socket",
        "xml",
        "basiclib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppExceptionHandler()Lcom/kotlin/basiclib/base/AppException;
    .locals 2

    .line 162
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kotlin/basiclib/base/AppException;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getCacheKey()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getCacheKey$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTYPE_HTTP_CODE()B
    .locals 1

    .line 110
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_HTTP_CODE$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_HTTP_ERROR()B
    .locals 1

    .line 111
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_HTTP_ERROR$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_IO()B
    .locals 1

    .line 113
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_IO$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_JSON()B
    .locals 1

    .line 115
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_JSON$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_NETWORK()B
    .locals 1

    .line 108
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_NETWORK$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_RUN()B
    .locals 1

    .line 114
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_RUN$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_SOCKET()B
    .locals 1

    .line 109
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_SOCKET$cp()B

    move-result v0

    return v0
.end method

.method public final getTYPE_XML()B
    .locals 1

    .line 112
    invoke-static {}, Lcom/kotlin/basiclib/base/AppException;->access$getTYPE_XML$cp()B

    move-result v0

    return v0
.end method

.method public final http(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_HTTP_ERROR()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final io(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    instance-of v0, p1, Ljava/net/UnknownHostException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_IO()B

    move-result v3

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/base/AppException$Companion;->run(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;

    move-result-object p1

    return-object p1

    .line 129
    :cond_2
    :goto_0
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_NETWORK()B

    move-result v3

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final network(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/base/AppException$Companion;->socket(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/base/AppException$Companion;->http(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;

    move-result-object p1

    return-object p1

    .line 143
    :cond_2
    :goto_0
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_NETWORK()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final run(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_RUN()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final socket(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_SOCKET()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final xml(Ljava/lang/Exception;)Lcom/kotlin/basiclib/base/AppException;
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/kotlin/basiclib/base/AppException;

    invoke-virtual {p0}, Lcom/kotlin/basiclib/base/AppException$Companion;->getTYPE_XML()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
