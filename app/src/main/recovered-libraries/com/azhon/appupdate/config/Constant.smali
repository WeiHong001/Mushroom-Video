.class public final Lcom/azhon/appupdate/config/Constant;
.super Ljava/lang/Object;
.source "Constant.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/azhon/appupdate/config/Constant;",
        "",
        "()V",
        "APK_PATH",
        "",
        "getAPK_PATH",
        "()Ljava/lang/String;",
        "setAPK_PATH",
        "(Ljava/lang/String;)V",
        "APK_SUFFIX",
        "AUTHORITIES",
        "getAUTHORITIES",
        "setAUTHORITIES",
        "COROUTINE_NAME",
        "DEFAULT_CHANNEL_ID",
        "DEFAULT_CHANNEL_NAME",
        "DEFAULT_NOTIFY_ID",
        "",
        "HTTP_TIME_OUT",
        "TAG",
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
.field private static APK_PATH:Ljava/lang/String; = null

.field public static final APK_SUFFIX:Ljava/lang/String; = ".apk"

.field private static AUTHORITIES:Ljava/lang/String; = null

.field public static final COROUTINE_NAME:Ljava/lang/String; = "app-update-coroutine"

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "appUpdate"

.field public static final DEFAULT_CHANNEL_NAME:Ljava/lang/String; = "AppUpdate"

.field public static final DEFAULT_NOTIFY_ID:I = 0x3f3

.field public static final HTTP_TIME_OUT:I = 0x7530

.field public static final INSTANCE:Lcom/azhon/appupdate/config/Constant;

.field public static final TAG:Ljava/lang/String; = "AppUpdate."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/azhon/appupdate/config/Constant;

    invoke-direct {v0}, Lcom/azhon/appupdate/config/Constant;-><init>()V

    sput-object v0, Lcom/azhon/appupdate/config/Constant;->INSTANCE:Lcom/azhon/appupdate/config/Constant;

    const-string v0, "/storage/emulated/0/Android/data/%s/cache"

    .line 58
    sput-object v0, Lcom/azhon/appupdate/config/Constant;->APK_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAPK_PATH()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/azhon/appupdate/config/Constant;->APK_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public final getAUTHORITIES()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/azhon/appupdate/config/Constant;->AUTHORITIES:Ljava/lang/String;

    return-object v0
.end method

.method public final setAPK_PATH(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sput-object p1, Lcom/azhon/appupdate/config/Constant;->APK_PATH:Ljava/lang/String;

    return-void
.end method

.method public final setAUTHORITIES(Ljava/lang/String;)V
    .locals 0

    .line 53
    sput-object p1, Lcom/azhon/appupdate/config/Constant;->AUTHORITIES:Ljava/lang/String;

    return-void
.end method
