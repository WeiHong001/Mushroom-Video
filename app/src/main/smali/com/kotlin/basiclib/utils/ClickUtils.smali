.class public final Lcom/kotlin/basiclib/utils/ClickUtils;
.super Ljava/lang/Object;
.source "ClickUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClickUtils.kt\ncom/kotlin/basiclib/utils/ClickUtils\n+ 2 Toasts.kt\norg/jetbrains/anko/ToastsKt\n*L\n1#1,66:1\n68#2,5:67\n*S KotlinDebug\n*F\n+ 1 ClickUtils.kt\ncom/kotlin/basiclib/utils/ClickUtils\n*L\n59#1:67,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kotlin/basiclib/utils/ClickUtils;",
        "",
        "()V",
        "SPACE_TIME",
        "",
        "isDoubleClick",
        "",
        "()Z",
        "lastClickTime",
        "",
        "getLastClickTime",
        "()J",
        "setLastClickTime",
        "(J)V",
        "doubleTime",
        "matchTimeDouble",
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
.field public static final INSTANCE:Lcom/kotlin/basiclib/utils/ClickUtils;

.field private static final SPACE_TIME:I

.field private static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kotlin/basiclib/utils/ClickUtils;

    invoke-direct {v0}, Lcom/kotlin/basiclib/utils/ClickUtils;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/utils/ClickUtils;->INSTANCE:Lcom/kotlin/basiclib/utils/ClickUtils;

    const/16 v0, 0x4b0

    .line 16
    sput v0, Lcom/kotlin/basiclib/utils/ClickUtils;->SPACE_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastClickTime()J
    .locals 2

    .line 13
    sget-wide v0, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J

    return-wide v0
.end method

.method public final declared-synchronized isDoubleClick()Z
    .locals 7

    monitor-enter p0

    .line 24
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    sget-wide v2, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 26
    sget v4, Lcom/kotlin/basiclib/utils/ClickUtils;->SPACE_TIME:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    .line 27
    monitor-exit p0

    return v0

    .line 29
    :cond_0
    :try_start_1
    sput-wide v0, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 30
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDoubleClick(I)Z
    .locals 7

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    sget-wide v2, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 43
    monitor-exit p0

    return p1

    .line 45
    :cond_0
    :try_start_1
    sput-wide v0, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J

    const-string/jumbo p1, "time"

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 47
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized matchTimeDouble(I)Z
    .locals 8

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    sget-wide v2, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    sub-long/2addr v4, v2

    const/16 p1, 0x3e8

    int-to-long v0, p1

    .line 58
    div-long/2addr v4, v0

    .line 59
    invoke-static {}, Lcom/kotlin/basiclib/base/BaseApplicaitonKt;->getApplication()Lcom/kotlin/basiclib/base/BaseApplicaiton;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8fd8\u9700\u7b49\u5f85"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u79d2\uff0c\u624d\u80fd\u7ee7\u7eed\u53d1\u8a00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 68
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string v0, "Toast\n        .makeText(\u2026         show()\n        }"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 60
    monitor-exit p0

    return p1

    .line 62
    :cond_0
    :try_start_1
    sput-wide v0, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setLastClickTime(J)V
    .locals 0

    .line 13
    sput-wide p1, Lcom/kotlin/basiclib/utils/ClickUtils;->lastClickTime:J

    return-void
.end method
