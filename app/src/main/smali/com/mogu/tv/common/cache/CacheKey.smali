.class public final Lcom/mogu/tv/common/cache/CacheKey;
.super Ljava/lang/Object;
.source "CacheKey.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/mogu/tv/common/cache/CacheKey;",
        "",
        "()V",
        "CACHECOMMENTKEY",
        "",
        "getCACHECOMMENTKEY",
        "()Ljava/lang/String;",
        "FIRSTLOADVERSION_1",
        "getFIRSTLOADVERSION_1",
        "LOADSHARE",
        "getLOADSHARE",
        "LOCK",
        "getLOCK",
        "NightMode",
        "getNightMode",
        "SAVE_PLAYDATA",
        "getSAVE_PLAYDATA",
        "SEARCH_LIST_KEY",
        "getSEARCH_LIST_KEY",
        "SHORTVIDEOPAGE",
        "getSHORTVIDEOPAGE",
        "USER_TOKEN",
        "getUSER_TOKEN",
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
.field private static final CACHECOMMENTKEY:Ljava/lang/String;

.field private static final FIRSTLOADVERSION_1:Ljava/lang/String;

.field public static final INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

.field private static final LOADSHARE:Ljava/lang/String;

.field private static final LOCK:Ljava/lang/String;

.field private static final NightMode:Ljava/lang/String;

.field private static final SAVE_PLAYDATA:Ljava/lang/String;

.field private static final SEARCH_LIST_KEY:Ljava/lang/String;

.field private static final SHORTVIDEOPAGE:Ljava/lang/String;

.field private static final USER_TOKEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mogu/tv/common/cache/CacheKey;

    invoke-direct {v0}, Lcom/mogu/tv/common/cache/CacheKey;-><init>()V

    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->INSTANCE:Lcom/mogu/tv/common/cache/CacheKey;

    const-string v0, "replycachekey_news"

    .line 7
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->CACHECOMMENTKEY:Ljava/lang/String;

    const-string v0, "nightmode"

    .line 8
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->NightMode:Ljava/lang/String;

    const-string v0, "user_token"

    .line 9
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->USER_TOKEN:Ljava/lang/String;

    const-string v0, "search_list_key"

    .line 11
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->SEARCH_LIST_KEY:Ljava/lang/String;

    const-string v0, "save_playdata"

    .line 12
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->SAVE_PLAYDATA:Ljava/lang/String;

    const-string v0, "suopingstr"

    .line 13
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->LOCK:Ljava/lang/String;

    const-string v0, "shortvideopage"

    .line 15
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->SHORTVIDEOPAGE:Ljava/lang/String;

    const-string v0, "firstloadversion_1"

    .line 18
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->FIRSTLOADVERSION_1:Ljava/lang/String;

    const-string v0, "loadshare"

    .line 20
    sput-object v0, Lcom/mogu/tv/common/cache/CacheKey;->LOADSHARE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCACHECOMMENTKEY()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->CACHECOMMENTKEY:Ljava/lang/String;

    return-object v0
.end method

.method public final getFIRSTLOADVERSION_1()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->FIRSTLOADVERSION_1:Ljava/lang/String;

    return-object v0
.end method

.method public final getLOADSHARE()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->LOADSHARE:Ljava/lang/String;

    return-object v0
.end method

.method public final getLOCK()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->LOCK:Ljava/lang/String;

    return-object v0
.end method

.method public final getNightMode()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->NightMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getSAVE_PLAYDATA()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->SAVE_PLAYDATA:Ljava/lang/String;

    return-object v0
.end method

.method public final getSEARCH_LIST_KEY()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->SEARCH_LIST_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public final getSHORTVIDEOPAGE()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->SHORTVIDEOPAGE:Ljava/lang/String;

    return-object v0
.end method

.method public final getUSER_TOKEN()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/mogu/tv/common/cache/CacheKey;->USER_TOKEN:Ljava/lang/String;

    return-object v0
.end method
