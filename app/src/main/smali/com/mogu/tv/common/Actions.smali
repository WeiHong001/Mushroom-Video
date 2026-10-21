.class public final Lcom/mogu/tv/common/Actions;
.super Ljava/lang/Object;
.source "Actions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mogu/tv/common/Actions;",
        "",
        "()V",
        "REQUEST_IMAGE",
        "",
        "getREQUEST_IMAGE",
        "()I",
        "REQUEST_NAME",
        "getREQUEST_NAME",
        "REQUEST_VIDEO",
        "getREQUEST_VIDEO",
        "catchPhotoResponse",
        "getCatchPhotoResponse",
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
.field public static final INSTANCE:Lcom/mogu/tv/common/Actions;

.field private static final REQUEST_IMAGE:I

.field private static final REQUEST_NAME:I

.field private static final REQUEST_VIDEO:I

.field private static final catchPhotoResponse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/common/Actions;

    invoke-direct {v0}, Lcom/mogu/tv/common/Actions;-><init>()V

    sput-object v0, Lcom/mogu/tv/common/Actions;->INSTANCE:Lcom/mogu/tv/common/Actions;

    const/16 v0, 0x65

    .line 7
    sput v0, Lcom/mogu/tv/common/Actions;->REQUEST_IMAGE:I

    const/16 v0, 0x66

    .line 8
    sput v0, Lcom/mogu/tv/common/Actions;->REQUEST_VIDEO:I

    const/16 v0, 0x271a

    .line 9
    sput v0, Lcom/mogu/tv/common/Actions;->REQUEST_NAME:I

    const/16 v0, 0x3f2

    .line 12
    sput v0, Lcom/mogu/tv/common/Actions;->catchPhotoResponse:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCatchPhotoResponse()I
    .locals 1

    .line 12
    sget v0, Lcom/mogu/tv/common/Actions;->catchPhotoResponse:I

    return v0
.end method

.method public final getREQUEST_IMAGE()I
    .locals 1

    .line 7
    sget v0, Lcom/mogu/tv/common/Actions;->REQUEST_IMAGE:I

    return v0
.end method

.method public final getREQUEST_NAME()I
    .locals 1

    .line 9
    sget v0, Lcom/mogu/tv/common/Actions;->REQUEST_NAME:I

    return v0
.end method

.method public final getREQUEST_VIDEO()I
    .locals 1

    .line 8
    sget v0, Lcom/mogu/tv/common/Actions;->REQUEST_VIDEO:I

    return v0
.end method
