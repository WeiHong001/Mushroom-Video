.class public final Lcom/kotlin/basiclib/base/AppException;
.super Ljava/lang/Exception;
.source "AppException.kt"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kotlin/basiclib/base/AppException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000  2\u00060\u0001j\u0002`\u00022\u00020\u0003:\u0001 B\u0007\u0008\u0012\u00a2\u0006\u0002\u0010\u0004B#\u0008\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0010\t\u001a\u00060\u0001j\u0002`\u0002\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kotlin/basiclib/base/AppException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "()V",
        "type",
        "",
        "code",
        "",
        "excp",
        "(BILjava/lang/Exception;)V",
        "getCode",
        "()Ljava/lang/Integer;",
        "setCode",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "mDefaultHandler",
        "Ljava/lang/Byte;",
        "getCrashReport",
        "",
        "context",
        "Landroid/content/Context;",
        "ex",
        "",
        "getPackageInfo",
        "Landroid/content/pm/PackageInfo;",
        "handleException",
        "",
        "uncaughtException",
        "",
        "thread",
        "Ljava/lang/Thread;",
        "Companion",
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
.field public static final Companion:Lcom/kotlin/basiclib/base/AppException$Companion;

.field private static final Debug:Z

.field private static final TYPE_HTTP_CODE:B

.field private static final TYPE_HTTP_ERROR:B

.field private static final TYPE_IO:B

.field private static final TYPE_JSON:B

.field private static final TYPE_NETWORK:B

.field private static final TYPE_RUN:B

.field private static final TYPE_SOCKET:B

.field private static final TYPE_XML:B

.field private static final cacheKey:Ljava/lang/String;


# instance fields
.field private code:Ljava/lang/Integer;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private type:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kotlin/basiclib/base/AppException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kotlin/basiclib/base/AppException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kotlin/basiclib/base/AppException;->Companion:Lcom/kotlin/basiclib/base/AppException$Companion;

    const-string v0, "error"

    .line 104
    sput-object v0, Lcom/kotlin/basiclib/base/AppException;->cacheKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 108
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_NETWORK:B

    const/4 v0, 0x2

    .line 109
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_SOCKET:B

    const/4 v0, 0x3

    .line 110
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_HTTP_CODE:B

    const/4 v0, 0x4

    .line 111
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_HTTP_ERROR:B

    const/4 v0, 0x5

    .line 112
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_XML:B

    const/4 v0, 0x6

    .line 113
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_IO:B

    const/4 v0, 0x7

    .line 114
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_RUN:B

    const/16 v0, 0x8

    .line 115
    sput-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_JSON:B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/base/AppException;->code:Ljava/lang/Integer;

    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/kotlin/basiclib/base/AppException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private constructor <init>(BILjava/lang/Exception;)V
    .locals 0

    .line 32
    check-cast p3, Ljava/lang/Throwable;

    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/kotlin/basiclib/base/AppException;->code:Ljava/lang/Integer;

    .line 33
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lcom/kotlin/basiclib/base/AppException;->type:Ljava/lang/Byte;

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/kotlin/basiclib/base/AppException;->code:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Exception;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kotlin/basiclib/base/AppException;-><init>(BILjava/lang/Exception;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kotlin/basiclib/base/AppException;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCacheKey$cp()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/kotlin/basiclib/base/AppException;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTYPE_HTTP_CODE$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_HTTP_CODE:B

    return v0
.end method

.method public static final synthetic access$getTYPE_HTTP_ERROR$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_HTTP_ERROR:B

    return v0
.end method

.method public static final synthetic access$getTYPE_IO$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_IO:B

    return v0
.end method

.method public static final synthetic access$getTYPE_JSON$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_JSON:B

    return v0
.end method

.method public static final synthetic access$getTYPE_NETWORK$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_NETWORK:B

    return v0
.end method

.method public static final synthetic access$getTYPE_RUN$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_RUN:B

    return v0
.end method

.method public static final synthetic access$getTYPE_SOCKET$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_SOCKET:B

    return v0
.end method

.method public static final synthetic access$getTYPE_XML$cp()B
    .locals 1

    .line 19
    sget-byte v0, Lcom/kotlin/basiclib/base/AppException;->TYPE_XML:B

    return v0
.end method

.method private final getCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    .line 73
    invoke-virtual {p0, p1}, Lcom/kotlin/basiclib/base/AppException;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 80
    array-length p2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "exceptionStr.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final handleException(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 59
    :cond_0
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/kotlin/basiclib/base/AppException;->getCrashReport(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5d29\u6e83\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception-------"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/kotlin/basiclib/base/AcManage;->getAppManager()Lcom/kotlin/basiclib/base/AcManage;

    move-result-object p1

    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/kotlin/basiclib/base/AcManage;->AppExit(Landroid/content/Context;)V

    .line 62
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getCode()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/kotlin/basiclib/base/AppException;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 98
    new-instance p1, Landroid/content/pm/PackageInfo;

    invoke-direct {p1}, Landroid/content/pm/PackageInfo;-><init>()V

    :cond_0
    return-object p1
.end method

.method public final setCode(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/kotlin/basiclib/base/AppException;->code:Ljava/lang/Integer;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ex"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p2}, Lcom/kotlin/basiclib/base/AppException;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kotlin/basiclib/base/AppException;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
