.class public final Lcom/azhon/appupdate/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/azhon/appupdate/util/LogUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/azhon/appupdate/util/LogUtil;",
        "",
        "()V",
        "Companion",
        "appupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/azhon/appupdate/util/LogUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/azhon/appupdate/util/LogUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/azhon/appupdate/util/LogUtil;->Companion:Lcom/azhon/appupdate/util/LogUtil$Companion;

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/azhon/appupdate/util/LogUtil;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getB$cp()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/azhon/appupdate/util/LogUtil;->b:Z

    return v0
.end method

.method public static final synthetic access$setB$cp(Z)V
    .locals 0

    .line 17
    sput-boolean p0, Lcom/azhon/appupdate/util/LogUtil;->b:Z

    return-void
.end method
