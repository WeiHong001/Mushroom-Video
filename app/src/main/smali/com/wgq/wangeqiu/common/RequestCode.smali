.class public final Lcom/wgq/wangeqiu/common/RequestCode;
.super Ljava/lang/Object;
.source "RequestCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wgq/wangeqiu/common/RequestCode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/wgq/wangeqiu/common/RequestCode;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/wgq/wangeqiu/common/RequestCode$Companion;

.field private static final QR_REQUEST_CODE:I

.field private static final QR_REQUEST_LIVETYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wgq/wangeqiu/common/RequestCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wgq/wangeqiu/common/RequestCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/wgq/wangeqiu/common/RequestCode;->Companion:Lcom/wgq/wangeqiu/common/RequestCode$Companion;

    const/16 v0, 0x3e9

    .line 8
    sput v0, Lcom/wgq/wangeqiu/common/RequestCode;->QR_REQUEST_CODE:I

    const/16 v0, 0x3ec

    .line 10
    sput v0, Lcom/wgq/wangeqiu/common/RequestCode;->QR_REQUEST_LIVETYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getQR_REQUEST_CODE$cp()I
    .locals 1

    .line 6
    sget v0, Lcom/wgq/wangeqiu/common/RequestCode;->QR_REQUEST_CODE:I

    return v0
.end method

.method public static final synthetic access$getQR_REQUEST_LIVETYPE$cp()I
    .locals 1

    .line 6
    sget v0, Lcom/wgq/wangeqiu/common/RequestCode;->QR_REQUEST_LIVETYPE:I

    return v0
.end method
