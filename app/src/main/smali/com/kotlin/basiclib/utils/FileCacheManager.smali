.class public final Lcom/kotlin/basiclib/utils/FileCacheManager;
.super Ljava/lang/Object;
.source "FileCacheManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kotlin/basiclib/utils/FileCacheManager;",
        "",
        "()V",
        "readStrFromCache",
        "",
        "cacheName",
        "writeStrToCache",
        "",
        "str",
        "key",
        "saveTime",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/kotlin/basiclib/utils/FileCacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kotlin/basiclib/utils/FileCacheManager;

    invoke-direct {v0}, Lcom/kotlin/basiclib/utils/FileCacheManager;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/utils/FileCacheManager;->INSTANCE:Lcom/kotlin/basiclib/utils/FileCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readStrFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "cacheName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/kotlin/basiclib/utils/ACache;->get(Landroid/content/Context;)Lcom/kotlin/basiclib/utils/ACache;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/kotlin/basiclib/utils/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final writeStrToCache(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 22
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Lcom/kotlin/basiclib/utils/ACache;->get(Landroid/content/Context;)Lcom/kotlin/basiclib/utils/ACache;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/kotlin/basiclib/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/kotlin/basiclib/utils/ACache;->get(Landroid/content/Context;)Lcom/kotlin/basiclib/utils/ACache;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/kotlin/basiclib/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
