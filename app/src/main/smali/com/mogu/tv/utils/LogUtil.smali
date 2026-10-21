.class public Lcom/mogu/tv/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "CJT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CJT"

    .line 40
    invoke-static {v0, p0}, Lcom/mogu/tv/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CJT"

    .line 44
    invoke-static {v0, p0}, Lcom/mogu/tv/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CJT"

    .line 32
    invoke-static {v0, p0}, Lcom/mogu/tv/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CJT"

    .line 36
    invoke-static {v0, p0}, Lcom/mogu/tv/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
