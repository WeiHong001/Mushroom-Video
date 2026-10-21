.class public final Lcom/wgq/wangeqiu/common/H5Url;
.super Ljava/lang/Object;
.source "H5Url.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\n\u0010\u000b\u001a\u00020\u0004*\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/wgq/wangeqiu/common/H5Url;",
        "",
        "()V",
        "HomePage",
        "",
        "getHomePage",
        "()Ljava/lang/String;",
        "setHomePage",
        "(Ljava/lang/String;)V",
        "getAgreement",
        "getPrivacy",
        "getLoadPhoto",
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


# static fields
.field private static HomePage:Ljava/lang/String;

.field public static final INSTANCE:Lcom/wgq/wangeqiu/common/H5Url;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wgq/wangeqiu/common/H5Url;

    invoke-direct {v0}, Lcom/wgq/wangeqiu/common/H5Url;-><init>()V

    sput-object v0, Lcom/wgq/wangeqiu/common/H5Url;->INSTANCE:Lcom/wgq/wangeqiu/common/H5Url;

    const-string v0, ""

    .line 11
    sput-object v0, Lcom/wgq/wangeqiu/common/H5Url;->HomePage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAgreement()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mogu/tv/api/ApiClient;->INSTANCE:Lcom/mogu/tv/api/ApiClient;

    invoke-virtual {v1}, Lcom/mogu/tv/api/ApiClient;->getBaseHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/agreement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHomePage()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/wgq/wangeqiu/common/H5Url;->HomePage:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoadPhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mogu/tv/api/ApiClient;->INSTANCE:Lcom/mogu/tv/api/ApiClient;

    invoke-virtual {v1}, Lcom/mogu/tv/api/ApiClient;->getBaseHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getPrivacy()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mogu/tv/api/ApiClient;->INSTANCE:Lcom/mogu/tv/api/ApiClient;

    invoke-virtual {v1}, Lcom/mogu/tv/api/ApiClient;->getBaseHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setHomePage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sput-object p1, Lcom/wgq/wangeqiu/common/H5Url;->HomePage:Ljava/lang/String;

    return-void
.end method
