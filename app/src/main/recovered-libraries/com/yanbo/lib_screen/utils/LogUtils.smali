.class public final Lcom/yanbo/lib_screen/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanbo/lib_screen/utils/LogUtils$Level;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x1f

.field public static final DEBUG:I = 0x2

.field private static DEBUGGABLE:Z = false

.field public static final DEBUG_ABOVE:I = 0x1e

.field public static final ERROR:I = 0x10

.field private static FILTER:I = 0x1f

.field public static final INFO:I = 0x4

.field public static final INFO_ABOVE:I = 0x1c

.field public static final NONE:I = 0x0

.field public static final VERBOSE:I = 0x1

.field public static final WARN:I = 0x8

.field public static final WARN_ABOVE:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 65
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 61
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 69
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x10

    .line 101
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    .line 97
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 105
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 77
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 73
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 81
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 43
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/yanbo/lib_screen/utils/LogUtils;->DEBUGGABLE:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 109
    instance-of v0, p1, [C

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, [C

    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 111
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 112
    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 113
    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 114
    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 115
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 116
    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    :cond_3
    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 118
    check-cast p1, [J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 119
    :cond_4
    instance-of v0, p1, [F

    if-eqz v0, :cond_5

    .line 120
    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 121
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 122
    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 123
    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    .line 124
    check-cast p1, [Z

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/yanbo/lib_screen/utils/LogUtils;->DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    sget v0, Lcom/yanbo/lib_screen/utils/LogUtils;->FILTER:I

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_4
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFilter(I)V
    .locals 0

    .line 37
    sput p0, Lcom/yanbo/lib_screen/utils/LogUtils;->FILTER:I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 57
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    .line 89
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 85
    invoke-static {p0, p1, v0}, Lcom/yanbo/lib_screen/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 93
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanbo/lib_screen/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
