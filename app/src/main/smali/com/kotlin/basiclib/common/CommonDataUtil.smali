.class public final Lcom/kotlin/basiclib/common/CommonDataUtil;
.super Ljava/lang/Object;
.source "CommonDataUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kotlin/basiclib/common/CommonDataUtil;",
        "",
        "()V",
        "cdnHost",
        "",
        "getCdnHost",
        "()Ljava/lang/String;",
        "setCdnHost",
        "(Ljava/lang/String;)V",
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
.field public static final INSTANCE:Lcom/kotlin/basiclib/common/CommonDataUtil;

.field private static cdnHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kotlin/basiclib/common/CommonDataUtil;

    invoke-direct {v0}, Lcom/kotlin/basiclib/common/CommonDataUtil;-><init>()V

    sput-object v0, Lcom/kotlin/basiclib/common/CommonDataUtil;->INSTANCE:Lcom/kotlin/basiclib/common/CommonDataUtil;

    const-string v0, ""

    .line 4
    sput-object v0, Lcom/kotlin/basiclib/common/CommonDataUtil;->cdnHost:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCdnHost()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lcom/kotlin/basiclib/common/CommonDataUtil;->cdnHost:Ljava/lang/String;

    return-object v0
.end method

.method public final setCdnHost(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sput-object p1, Lcom/kotlin/basiclib/common/CommonDataUtil;->cdnHost:Ljava/lang/String;

    return-void
.end method
